/**
 * Bookmark Tree Organizer - Application Logic
 * A drag-and-drop hierarchy editor for bookmark structures
 *
 * OPTIMIZED for 10K+ nodes with:
 * - Lazy rendering (only render expanded nodes)
 * - Debounced updates
 * - Efficient DOM updates (partial re-renders)
 * - Cached computations
 */

// ============================================================================
// Performance Utilities
// ============================================================================

function debounce(fn, delay) {
    let timeoutId;
    return function(...args) {
        clearTimeout(timeoutId);
        timeoutId = setTimeout(() => fn.apply(this, args), delay);
    };
}

function throttle(fn, limit) {
    let inThrottle;
    return function(...args) {
        if (!inThrottle) {
            fn.apply(this, args);
            inThrottle = true;
            setTimeout(() => inThrottle = false, limit);
        }
    };
}

// ============================================================================
// Data Model
// ============================================================================

class TreeNode {
    constructor(type, name, data = {}) {
        this.id = data.id || TreeNode.generateId();
        this.type = type; // 'folder' or 'bookmark'
        this.name = name;
        this.children = [];
        this.parent = null;
        this.expanded = data.expanded !== undefined ? data.expanded : false; // Start collapsed for performance
        this.editable = data.editable !== false;
        this._pathCache = null; // Cache for getPath()

        // Bookmark-specific properties
        if (type === 'bookmark') {
            this.url = data.url || '';
            this.icon = data.icon || '';
        }

        // Source tracking for validation
        this.sourceLine = data.sourceLine || null;
        this.sourceColumn = data.sourceColumn || null;
    }

    static _idCounter = 0;
    static generateId() {
        return 'node_' + (++TreeNode._idCounter) + '_' + Math.random().toString(36).substring(2, 7);
    }

    addChild(node) {
        node.parent = this;
        node._pathCache = null;
        this.children.push(node);
        return node;
    }

    removeChild(node) {
        const idx = this.children.indexOf(node);
        if (idx > -1) {
            this.children.splice(idx, 1);
            node.parent = null;
            node._pathCache = null;
        }
    }

    invalidatePathCache() {
        this._pathCache = null;
        for (const child of this.children) {
            child.invalidatePathCache();
        }
    }

    getPath() {
        if (this._pathCache) return this._pathCache;
        const parts = [];
        let current = this;
        while (current) {
            parts.unshift(current.name);
            current = current.parent;
        }
        this._pathCache = parts.join(' > ');
        return this._pathCache;
    }

    toJSON() {
        if (this.type === 'bookmark') {
            return {
                Title: this.name,
                URL: this.url,
                Icon: this.icon
            };
        } else {
            // Folder
            const result = {};
            for (const child of this.children) {
                if (child.type === 'folder') {
                    result[child.name] = child.toJSON();
                }
            }
            // Group bookmarks into arrays by parent folder logic
            const bookmarks = this.children.filter(c => c.type === 'bookmark');
            if (bookmarks.length > 0 && Object.keys(result).length === 0) {
                // If folder contains only bookmarks, return as array
                return bookmarks.map(b => b.toJSON());
            } else if (bookmarks.length > 0) {
                // Mixed content - bookmarks go under special key
                result['_bookmarks'] = bookmarks.map(b => b.toJSON());
            }
            return result;
        }
    }
}

// ============================================================================
// Tree Manager
// ============================================================================

class TreeManager {
    constructor() {
        this.root = new TreeNode('folder', 'Root', { editable: false, expanded: true });
        this.selectedNodes = new Set(); // Multi-selection support
        this.lastSelectedNode = null;   // For shift+click range selection
        this.errors = [];
        this.nodeMap = new Map(); // id -> node for fast lookup
        this.nodeMap.set(this.root.id, this.root);
        this._flatNodeList = [];  // Cached flat list for range selection
        this._flatNodeListDirty = true; // Track if cache needs rebuild
        this._nodeCount = 0; // Cached node count
    }

    clear() {
        this.root = new TreeNode('folder', 'Root', { editable: false, expanded: true });
        this.selectedNodes.clear();
        this.lastSelectedNode = null;
        this.errors = [];
        this.nodeMap.clear();
        this.nodeMap.set(this.root.id, this.root);
        this._flatNodeList = [];
        this._flatNodeListDirty = true;
        this._nodeCount = 0;
    }

    _invalidateCache() {
        this._flatNodeListDirty = true;
    }

    // ========================================================================
    // Multi-Selection Methods
    // ========================================================================

    selectNode(node, addToSelection = false) {
        if (!addToSelection) {
            this.selectedNodes.clear();
        }
        this.selectedNodes.add(node);
        this.lastSelectedNode = node;
    }

    toggleSelection(node) {
        if (this.selectedNodes.has(node)) {
            this.selectedNodes.delete(node);
            if (this.lastSelectedNode === node) {
                this.lastSelectedNode = this.selectedNodes.size > 0
                    ? Array.from(this.selectedNodes).pop()
                    : null;
            }
        } else {
            this.selectedNodes.add(node);
            this.lastSelectedNode = node;
        }
    }

    selectRange(fromNode, toNode) {
        // Build flat list if not cached
        this._buildFlatNodeList();

        const fromIndex = this._flatNodeList.findIndex(n => n.id === fromNode.id);
        const toIndex = this._flatNodeList.findIndex(n => n.id === toNode.id);

        if (fromIndex === -1 || toIndex === -1) return;

        const start = Math.min(fromIndex, toIndex);
        const end = Math.max(fromIndex, toIndex);

        for (let i = start; i <= end; i++) {
            this.selectedNodes.add(this._flatNodeList[i]);
        }
        this.lastSelectedNode = toNode;
    }

    selectAll() {
        this._buildFlatNodeList();
        for (const node of this._flatNodeList) {
            if (node.editable) {
                this.selectedNodes.add(node);
            }
        }
    }

    invertSelection() {
        this._buildFlatNodeList();
        for (const node of this._flatNodeList) {
            if (node.editable) {
                if (this.selectedNodes.has(node)) {
                    this.selectedNodes.delete(node);
                } else {
                    this.selectedNodes.add(node);
                }
            }
        }
    }

    clearSelection() {
        this.selectedNodes.clear();
        this.lastSelectedNode = null;
    }

    isSelected(node) {
        return this.selectedNodes.has(node);
    }

    getSelectedNodes() {
        return Array.from(this.selectedNodes);
    }

    _buildFlatNodeList() {
        if (!this._flatNodeListDirty && this._flatNodeList.length > 0) {
            return; // Use cached list
        }
        this._flatNodeList = [];
        this._nodeCount = 0;
        const traverse = (node) => {
            if (node !== this.root) {
                this._flatNodeList.push(node);
                this._nodeCount++;
            }
            for (const child of node.children) {
                traverse(child);
            }
        };
        traverse(this.root);
        this._flatNodeListDirty = false;
    }

    // ========================================================================
    // Node Management
    // ========================================================================

    addNode(parentId, type, name, data = {}) {
        const parent = this.nodeMap.get(parentId) || this.root;
        const node = new TreeNode(type, name, data);
        parent.addChild(node);
        this.nodeMap.set(node.id, node);
        this._invalidateCache();
        return node;
    }

    // Batch add nodes for better performance during import
    addNodeBatch(nodes) {
        for (const { parentId, type, name, data } of nodes) {
            const parent = this.nodeMap.get(parentId) || this.root;
            const node = new TreeNode(type, name, data);
            parent.addChild(node);
            this.nodeMap.set(node.id, node);
        }
        this._invalidateCache();
    }

    removeNode(nodeId) {
        const node = this.nodeMap.get(nodeId);
        if (node && node.parent && node.editable) {
            node.parent.removeChild(node);
            this.nodeMap.delete(nodeId);
            this.selectedNodes.delete(node);
            // Remove all descendants from map and selection
            const removeDescendants = (n) => {
                for (const child of n.children) {
                    this.nodeMap.delete(child.id);
                    this.selectedNodes.delete(child);
                    removeDescendants(child);
                }
            };
            removeDescendants(node);
            this._invalidateCache();
            return true;
        }
        return false;
    }

    removeSelectedNodes() {
        const nodesToRemove = this.getSelectedNodes().filter(n => n.editable);
        // Sort by depth (deepest first) using cached depth
        nodesToRemove.sort((a, b) => {
            const depthA = this._getNodeDepth(a);
            const depthB = this._getNodeDepth(b);
            return depthB - depthA;
        });

        for (const node of nodesToRemove) {
            this.removeNode(node.id);
        }
        return nodesToRemove.length;
    }

    _getNodeDepth(node) {
        let depth = 0;
        let current = node;
        while (current && current !== this.root) {
            depth++;
            current = current.parent;
        }
        return depth;
    }

    moveNode(nodeId, newParentId, index = -1) {
        const node = this.nodeMap.get(nodeId);
        const newParent = this.nodeMap.get(newParentId);

        if (!node || !newParent || !node.editable) return false;
        if (newParent.type !== 'folder') return false;

        // Prevent moving into self or descendant
        let check = newParent;
        while (check) {
            if (check.id === node.id) return false;
            check = check.parent;
        }

        // Remove from old parent
        if (node.parent) {
            node.parent.removeChild(node);
        }

        // Add to new parent
        node.parent = newParent;
        node.invalidatePathCache(); // Invalidate path cache for moved node and descendants
        if (index >= 0 && index < newParent.children.length) {
            newParent.children.splice(index, 0, node);
        } else {
            newParent.children.push(node);
        }

        this._invalidateCache();
        return true;
    }

    moveSelectedNodes(newParentId, index = -1) {
        const nodesToMove = this.getSelectedNodes().filter(n => n.editable);
        // Filter out nodes whose ancestors are also selected (they move with parent)
        const topLevelNodes = nodesToMove.filter(node => {
            let parent = node.parent;
            while (parent && parent !== this.root) {
                if (this.selectedNodes.has(parent)) return false;
                parent = parent.parent;
            }
            return true;
        });

        let movedCount = 0;
        for (const node of topLevelNodes) {
            if (this.moveNode(node.id, newParentId, index)) {
                movedCount++;
                if (index >= 0) index++; // Increment index for next node
            }
        }
        return movedCount;
    }

    getNodeCount() {
        // Use cached count if available
        if (!this._flatNodeListDirty && this._nodeCount > 0) {
            return this._nodeCount;
        }
        this._buildFlatNodeList();
        return this._nodeCount;
    }

    // ========================================================================
    // Validation
    // ========================================================================

    validate() {
        this.errors = [];
        this._validateNode(this.root, 0);
        return this.errors;
    }

    _validateNode(node, depth) {
        // Check for empty names
        if (!node.name || node.name.trim() === '') {
            this.errors.push({
                type: 'error',
                node: node,
                path: node.getPath(),
                message: 'Node has empty name',
                line: node.sourceLine,
                column: node.sourceColumn
            });
        }

        // Check bookmark-specific requirements
        if (node.type === 'bookmark') {
            if (!node.url || node.url.trim() === '') {
                this.errors.push({
                    type: 'error',
                    node: node,
                    path: node.getPath(),
                    message: 'Bookmark missing URL',
                    line: node.sourceLine,
                    column: node.sourceColumn
                });
            } else if (!this._isValidUrl(node.url)) {
                this.errors.push({
                    type: 'warning',
                    node: node,
                    path: node.getPath(),
                    message: `Invalid URL format: ${node.url}`,
                    line: node.sourceLine,
                    column: node.sourceColumn
                });
            }
        }

        // Check for duplicate names in same parent
        if (node.parent) {
            const siblings = node.parent.children.filter(c => c.id !== node.id && c.name === node.name);
            if (siblings.length > 0) {
                this.errors.push({
                    type: 'warning',
                    node: node,
                    path: node.getPath(),
                    message: `Duplicate name "${node.name}" in same folder`,
                    line: node.sourceLine,
                    column: node.sourceColumn
                });
            }
        }

        // Check nesting depth (warn if > 10)
        if (depth > 10) {
            this.errors.push({
                type: 'info',
                node: node,
                path: node.getPath(),
                message: `Deep nesting detected (depth: ${depth})`,
                line: node.sourceLine,
                column: node.sourceColumn
            });
        }

        // Validate children
        for (const child of node.children) {
            this._validateNode(child, depth + 1);
        }
    }

    _isValidUrl(url) {
        try {
            new URL(url);
            return true;
        } catch {
            return url.startsWith('file://') || url.startsWith('about:');
        }
    }

    // ========================================================================
    // Import/Export
    // ========================================================================

    exportToJSON() {
        const result = {};
        for (const child of this.root.children) {
            if (child.type === 'folder') {
                result[child.name] = this._exportFolder(child);
            }
        }
        return JSON.stringify(result, null, 2);
    }

    _exportFolder(folder) {
        const hasSubfolders = folder.children.some(c => c.type === 'folder');
        const bookmarks = folder.children.filter(c => c.type === 'bookmark');

        if (!hasSubfolders && bookmarks.length > 0) {
            // Folder contains only bookmarks - export as array
            return bookmarks.map(b => ({
                Title: b.name,
                URL: b.url,
                Icon: b.icon || ''
            }));
        }

        // Folder contains subfolders
        const result = {};
        for (const child of folder.children) {
            if (child.type === 'folder') {
                result[child.name] = this._exportFolder(child);
            } else if (child.type === 'bookmark') {
                // Bookmark in mixed folder - create as single-item array or direct object
                if (!result._bookmarks) result._bookmarks = [];
                result._bookmarks.push({
                    Title: child.name,
                    URL: child.url,
                    Icon: child.icon || ''
                });
            }
        }
        return result;
    }

    importFromJSON(jsonString) {
        try {
            const data = JSON.parse(jsonString);
            this.clear();
            this._importObject(data, this.root, 1);
            return { success: true };
        } catch (e) {
            return { success: false, error: e.message };
        }
    }

    _importObject(obj, parent, lineEstimate) {
        if (Array.isArray(obj)) {
            // Array of items (could be bookmarks or folders)
            for (const item of obj) {
                this._importItem(item, parent, lineEstimate++);
            }
        } else if (typeof obj === 'object' && obj !== null) {
            // Check if this is a standard tree node with name/type/children
            if (obj.type && obj.name) {
                this._importItem(obj, parent, lineEstimate);
            } else {
                // Key-value format: keys are folder names, values are contents
                for (const key of Object.keys(obj)) {
                    if (key === '_bookmarks') {
                        // Special key for bookmarks in mixed folders
                        this._importObject(obj[key], parent, lineEstimate);
                    } else {
                        const value = obj[key];
                        if (Array.isArray(value)) {
                            // Folder containing bookmarks array
                            const folder = this.addNode(parent.id, 'folder', key, { sourceLine: lineEstimate++ });
                            this._importObject(value, folder, lineEstimate);
                        } else if (typeof value === 'object' && value !== null) {
                            // Nested folder
                            const folder = this.addNode(parent.id, 'folder', key, { sourceLine: lineEstimate++ });
                            this._importObject(value, folder, lineEstimate);
                        }
                    }
                }
            }
        }
    }

    // Import a single item (bookmark or folder) with name/type/children format
    _importItem(item, parent, lineEstimate) {
        if (!item || typeof item !== 'object') return;

        const name = item.name || item.Name || item.title || item.Title || 'Unnamed';
        const type = item.type || item.Type || 'folder';

        if (type === 'bookmark') {
            this.addNode(parent.id, 'bookmark', name, {
                url: item.url || item.URL || '',
                icon: item.icon || item.Icon || '',
                sourceLine: lineEstimate
            });
        } else if (type === 'folder') {
            const folder = this.addNode(parent.id, 'folder', name, { sourceLine: lineEstimate });
            if (item.children && Array.isArray(item.children)) {
                for (const child of item.children) {
                    this._importItem(child, folder, lineEstimate++);
                }
            }
        }
    }
}

// ============================================================================
// UI Controller
// ============================================================================

class TreeOrganizerUI {
    constructor() {
        this.treeManager = new TreeManager();
        this.sortableInstances = [];
        this._renderPending = false;
        this._nodeElementCache = new Map(); // Cache for DOM elements
        this._visibleNodeCount = 0;

        // Performance: Maximum nodes to render at once
        this.MAX_VISIBLE_NODES = 2000;
        this._isLargeDataset = false;

        // Drag hover expand timer (1.5 second delay before auto-expanding folders)
        this._dragExpandTimer = null;
        this._dragExpandNodeId = null;
        this.DRAG_EXPAND_DELAY = 1500; // milliseconds

        // DOM Elements
        this.rootTreeEl = document.getElementById('rootTree');
        this.nodeEditorEl = document.getElementById('nodeEditor');
        this.nodeCountEl = document.getElementById('nodeCount');
        this.selectionCountEl = document.getElementById('selectionCount');
        this.errorModalEl = document.getElementById('errorModal');
        this.errorLogContentEl = document.getElementById('errorLogContent');
        this.fileInputEl = document.getElementById('fileInput');
        this.treeContainerEl = document.getElementById('treeContainer');

        // Debounced render for performance
        this._debouncedRender = debounce(() => this._render(), 50);
        this._debouncedUpdateCounts = debounce(() => {
            this._updateNodeCount();
            this._updateSelectionCount();
        }, 100);

        this._bindEvents();
        this._render();
    }

    _bindEvents() {
        // Toolbar buttons
        document.getElementById('btnAddFolder').addEventListener('click', () => this._addNode('folder'));
        document.getElementById('btnAddBookmark').addEventListener('click', () => this._addNode('bookmark'));
        document.getElementById('btnImportJson').addEventListener('click', () => this._triggerImport('.json'));
        document.getElementById('btnImportPsd1').addEventListener('click', () => this._triggerImport('.psd1'));
        document.getElementById('btnExportJson').addEventListener('click', () => this._exportJSON());
        document.getElementById('btnValidate').addEventListener('click', () => this._validate());
        document.getElementById('btnShowErrors').addEventListener('click', () => this._showErrorModal());
        document.getElementById('btnExpandAll').addEventListener('click', () => this._expandAll(true));
        document.getElementById('btnCollapseAll').addEventListener('click', () => this._expandAll(false));

        // Selection toolbar buttons
        document.getElementById('btnSelectAll').addEventListener('click', () => this._selectAll());
        document.getElementById('btnClearSelection').addEventListener('click', () => this._clearSelection());
        document.getElementById('btnInvertSelection').addEventListener('click', () => this._invertSelection());
        document.getElementById('btnDeleteSelected').addEventListener('click', () => this._deleteSelected());

        // Modal buttons
        document.getElementById('btnCloseModal').addEventListener('click', () => this._hideErrorModal());
        document.getElementById('btnCopyErrors').addEventListener('click', () => this._copyErrors());
        document.getElementById('btnSaveErrors').addEventListener('click', () => this._saveErrors());

        // File input
        this.fileInputEl.addEventListener('change', (e) => this._handleFileImport(e));

        // Close modal on backdrop click
        this.errorModalEl.addEventListener('click', (e) => {
            if (e.target === this.errorModalEl) this._hideErrorModal();
        });

        // Keyboard shortcuts
        document.addEventListener('keydown', (e) => this._handleKeyboard(e));
    }

    _handleKeyboard(e) {
        // Ctrl+A: Select All
        if (e.ctrlKey && e.key === 'a' && !this._isInputFocused()) {
            e.preventDefault();
            this._selectAll();
        }
        // Escape: Clear selection
        if (e.key === 'Escape') {
            this._clearSelection();
        }
        // Delete: Delete selected
        if (e.key === 'Delete' && !this._isInputFocused()) {
            this._deleteSelected();
        }
    }

    _isInputFocused() {
        const active = document.activeElement;
        return active && (active.tagName === 'INPUT' || active.tagName === 'TEXTAREA' || active.tagName === 'SELECT');
    }

    _render() {
        const startTime = performance.now();

        // Check if this is a large dataset
        const totalNodes = this.treeManager.getNodeCount();
        this._isLargeDataset = totalNodes > 1000;

        // Use DocumentFragment for batch DOM updates
        const fragment = document.createDocumentFragment();
        this._destroySortables();
        this._visibleNodeCount = 0;
        this._nodeElementCache.clear();

        for (const child of this.treeManager.root.children) {
            const el = this._createNodeElement(child);
            if (el) fragment.appendChild(el);
        }

        // Batch DOM update
        this.rootTreeEl.innerHTML = '';
        this.rootTreeEl.appendChild(fragment);

        this._initSortable(this.rootTreeEl, this.treeManager.root.id);
        this._updateNodeCount();
        this._updateSelectionCount();
        this._updateNodeEditor();

        // Log performance for large datasets
        if (this._isLargeDataset) {
            const elapsed = performance.now() - startTime;
            console.log(`Rendered ${this._visibleNodeCount} visible nodes in ${elapsed.toFixed(1)}ms`);
        }
    }

    _createNodeElement(node) {
        // Track visible nodes for performance monitoring
        this._visibleNodeCount++;

        const li = document.createElement('li');
        li.className = 'tree-node';
        li.dataset.nodeId = node.id;
        li.draggable = true;  // Enable native drag for folder drop support

        // Native dragstart for folder drop support
        li.addEventListener('dragstart', (e) => {
            e.dataTransfer.setData('text/plain', node.id);
            e.dataTransfer.effectAllowed = 'move';
            li.classList.add('dragging');
        });

        li.addEventListener('dragend', () => {
            li.classList.remove('dragging');
            // Clear all drop target highlights when drag ends
            document.querySelectorAll('.drop-target-active').forEach(el => {
                el.classList.remove('drop-target-active');
            });
            // Clear any pending expand timer
            this._clearDragExpandTimer();
        });

        // Cache element reference for quick lookup
        this._nodeElementCache.set(node.id, li);

        const content = document.createElement('div');
        content.className = 'node-content';

        // Multi-selection support - use direct Set lookup
        const isSelected = this.treeManager.selectedNodes.has(node);
        if (isSelected) {
            content.classList.add('multi-selected');
        }

        // Check for errors on this node - use Map for O(1) lookup
        if (this._nodeHasError(node)) {
            content.classList.add('has-error');
        }

        // Checkbox for selection (only if editable)
        if (node.editable) {
            const checkbox = document.createElement('input');
            checkbox.type = 'checkbox';
            checkbox.className = 'node-checkbox';
            checkbox.checked = isSelected;
            checkbox.addEventListener('click', (e) => {
                e.stopPropagation();
                this.treeManager.toggleSelection(node);
                // Only update this node's visual state, not full re-render
                this._updateNodeSelection(li, node);
                this._debouncedUpdateCounts();
            });
            content.appendChild(checkbox);
        }

        // Toggle button (for folders)
        const toggle = document.createElement('span');
        toggle.className = 'node-toggle';
        if (node.type === 'folder' && node.children.length > 0) {
            toggle.textContent = node.expanded ? '▼' : '▶';
            toggle.addEventListener('click', (e) => {
                e.stopPropagation();
                node.expanded = !node.expanded;
                // Only update this subtree
                this._toggleSubtree(li, node);
            });
        }
        content.appendChild(toggle);

        // Icon
        const icon = document.createElement('span');
        icon.className = `node-icon ${node.type}`;
        icon.textContent = node.type === 'folder' ? '📁' : '🔗';
        // Make folder icon clickable to toggle (improves UX)
        if (node.type === 'folder' && node.children.length > 0) {
            icon.style.cursor = 'pointer';
            icon.addEventListener('click', (e) => {
                e.stopPropagation();
                node.expanded = !node.expanded;
                this._toggleSubtree(li, node);
            });
        }
        content.appendChild(icon);

        // Label
        const label = document.createElement('span');
        label.className = 'node-label';
        label.textContent = node.name;
        // Lazy tooltip - don't compute path until hover for large datasets
        if (this._isLargeDataset) {
            label.addEventListener('mouseenter', () => {
                if (!label.title) {
                    label.title = node.type === 'bookmark' ? node.url : node.getPath();
                }
            }, { once: true });
        } else {
            label.title = node.type === 'bookmark' ? node.url : node.getPath();
        }
        content.appendChild(label);

        // Actions (only show on hover via CSS, create lazily)
        if (node.editable) {
            const actions = document.createElement('span');
            actions.className = 'node-actions';

            const editBtn = document.createElement('button');
            editBtn.className = 'node-action-btn';
            editBtn.textContent = '✏️';
            editBtn.title = 'Edit';
            editBtn.addEventListener('click', (e) => {
                e.stopPropagation();
                this.treeManager.clearSelection();
                this.treeManager.selectNode(node);
                this._render();
            });
            actions.appendChild(editBtn);

            const deleteBtn = document.createElement('button');
            deleteBtn.className = 'node-action-btn';
            deleteBtn.textContent = '🗑️';
            deleteBtn.title = 'Delete';
            deleteBtn.addEventListener('click', (e) => {
                e.stopPropagation();
                this._deleteNode(node);
            });
            actions.appendChild(deleteBtn);

            content.appendChild(actions);
        }

        // Click handler with multi-selection support
        content.addEventListener('click', (e) => this._handleNodeClick(node, e));

        // Drop zone for folders - allows dropping items ONTO the folder
        // Only the currently hovered folder shows as a drop target
        if (node.type === 'folder') {
            content.classList.add('folder-drop-target');
            content.dataset.folderId = node.id;

            content.addEventListener('dragenter', (e) => {
                e.preventDefault();
                e.stopPropagation();
                // Clear any other drop targets first - only one should be active at a time
                document.querySelectorAll('.drop-target-active').forEach(el => {
                    if (el !== content) el.classList.remove('drop-target-active');
                });
                content.classList.add('drop-target-active');

                // Start timer to auto-expand folder after 1.5 seconds of hovering
                this._clearDragExpandTimer();
                if (!node.expanded) {
                    this._dragExpandNodeId = node.id;
                    this._dragExpandTimer = setTimeout(() => {
                        if (this._dragExpandNodeId === node.id) {
                            node.expanded = true;
                            this._render();
                        }
                    }, this.DRAG_EXPAND_DELAY);
                }
            });

            content.addEventListener('dragover', (e) => {
                e.preventDefault();
                e.stopPropagation();
                // Keep the class active while hovering
                content.classList.add('drop-target-active');
            });

            content.addEventListener('dragleave', (e) => {
                e.preventDefault();
                // Only remove if we're actually leaving this element (not moving to a child)
                const relatedTarget = e.relatedTarget;
                if (!content.contains(relatedTarget)) {
                    content.classList.remove('drop-target-active');
                    // Clear the expand timer when leaving the folder
                    if (this._dragExpandNodeId === node.id) {
                        this._clearDragExpandTimer();
                    }
                }
            });

            content.addEventListener('drop', (e) => {
                e.preventDefault();
                e.stopPropagation();
                content.classList.remove('drop-target-active');
                // Clear expand timer on drop
                this._clearDragExpandTimer();

                // Get the dragged node ID from the drag data
                const draggedId = e.dataTransfer.getData('text/plain');
                if (draggedId && draggedId !== node.id) {
                    const draggedNode = this.treeManager.nodeMap.get(draggedId);
                    if (draggedNode) {
                        // Check if we're trying to drop a parent into its child
                        if (this._isDescendant(draggedNode, node)) {
                            console.warn('Cannot drop a parent into its own child');
                            return;
                        }

                        // Move the dragged node (or all selected) into this folder
                        if (this.treeManager.isSelected(draggedNode) && this.treeManager.selectedNodes.size > 1) {
                            this.treeManager.moveSelectedNodes(node.id, 0);
                        } else {
                            this.treeManager.moveNode(draggedId, node.id, 0);
                        }

                        // Expand the folder to show the dropped items
                        node.expanded = true;
                        this._render();
                    }
                }
            });
        }

        li.appendChild(content);

        // Children (for folders) - LAZY: only render if expanded
        if (node.type === 'folder') {
            const childrenUl = document.createElement('ul');
            childrenUl.className = `tree-list node-children ${node.expanded ? 'expanded' : ''}`;
            childrenUl.dataset.parentId = node.id;

            // Only render children if expanded (lazy rendering)
            if (node.expanded) {
                for (const child of node.children) {
                    const childEl = this._createNodeElement(child);
                    if (childEl) childrenUl.appendChild(childEl);
                }
            }

            li.appendChild(childrenUl);

            // Initialize sortable for expanded folders (even empty ones for drop targets)
            if (node.expanded) {
                this._initSortable(childrenUl, node.id);
            }
        }

        return li;
    }

    // Clear the drag expand timer
    _clearDragExpandTimer() {
        if (this._dragExpandTimer) {
            clearTimeout(this._dragExpandTimer);
            this._dragExpandTimer = null;
            this._dragExpandNodeId = null;
        }
    }

    // Check if potentialChild is a descendant of potentialParent
    _isDescendant(potentialParent, potentialChild) {
        let current = potentialChild.parent;
        while (current) {
            if (current.id === potentialParent.id) {
                return true;
            }
            current = current.parent;
        }
        return false;
    }

    // Helper to check if node has errors (cached)
    _nodeHasError(node) {
        return this.treeManager.errors.some(e => e.node === node);
    }

    // Update just one node's selection state without full re-render
    _updateNodeSelection(li, node) {
        const content = li.querySelector('.node-content');
        const checkbox = li.querySelector('.node-checkbox');
        const isSelected = this.treeManager.selectedNodes.has(node);

        if (isSelected) {
            content.classList.add('multi-selected');
        } else {
            content.classList.remove('multi-selected');
        }
        if (checkbox) {
            checkbox.checked = isSelected;
        }
        this._updateNodeEditor();
    }

    // Toggle a folder's children without full re-render
    _toggleSubtree(li, node) {
        const childrenUl = li.querySelector(':scope > .node-children');
        const toggle = li.querySelector(':scope > .node-content > .node-toggle');

        if (node.expanded) {
            // Expanding - render children
            childrenUl.classList.add('expanded');
            toggle.textContent = '▼';

            // Render children if not already rendered
            if (childrenUl.children.length === 0 && node.children.length > 0) {
                const fragment = document.createDocumentFragment();
                for (const child of node.children) {
                    const childEl = this._createNodeElement(child);
                    if (childEl) fragment.appendChild(childEl);
                }
                childrenUl.appendChild(fragment);
                this._initSortable(childrenUl, node.id);
            }
        } else {
            // Collapsing
            childrenUl.classList.remove('expanded');
            toggle.textContent = '▶';
        }
    }

    _handleNodeClick(node, e) {
        if (e.shiftKey && this.treeManager.lastSelectedNode) {
            // Shift+click: range selection (add range to current selection)
            this.treeManager.selectRange(this.treeManager.lastSelectedNode, node);
        } else {
            // Normal click or Ctrl/Cmd+click: toggle selection
            // This allows selecting multiple nodes without holding modifier keys
            this.treeManager.toggleSelection(node);
        }
        this._render();
    }

    _initSortable(el, _parentId) {
        const self = this;
        const sortable = new Sortable(el, {
            group: {
                name: 'tree',
                pull: true,  // Allow pulling from this list
                put: true    // Allow dropping into this list
            },
            animation: 150,
            fallbackOnBody: true,
            swapThreshold: 0.65,
            ghostClass: 'drag-over',
            chosenClass: 'drag-chosen',
            dragClass: 'drag-source',

            // Allow dropping on folder items to nest inside them
            // NOTE: Auto-expand on hover disabled per user request - only hovered node is drop target
            onMove: () => {
                return true; // Allow the move
            },

            onStart: (evt) => {
                // If dragged item is selected, we're dragging all selected items
                const nodeId = evt.item.dataset.nodeId;
                const node = self.treeManager.nodeMap.get(nodeId);
                const selectedCount = self.treeManager.selectedNodes.size;

                // Mark all selected items as being dragged
                if (node && self.treeManager.isSelected(node) && selectedCount > 1) {
                    // Add badge showing count of items being dragged
                    const badge = document.createElement('span');
                    badge.className = 'drag-count-badge';
                    badge.textContent = selectedCount;
                    const content = evt.item.querySelector('.node-content');
                    if (content) content.appendChild(badge);

                    // Add visual indicator to all selected items
                    for (const selectedNode of self.treeManager.selectedNodes) {
                        const el = self._nodeElementCache.get(selectedNode.id);
                        if (el && el !== evt.item) {
                            el.classList.add('drag-sibling');
                        }
                    }
                }

                // Add dragging class to body for global styling
                document.body.classList.add('dragging');
            },

            onEnd: (evt) => {
                // Clean up
                document.body.classList.remove('dragging');

                // Remove drag count badge if present
                const badge = evt.item.querySelector('.drag-count-badge');
                if (badge) badge.remove();

                // Remove sibling markers
                document.querySelectorAll('.drag-sibling').forEach(el => {
                    el.classList.remove('drag-sibling');
                });

                const nodeId = evt.item.dataset.nodeId;
                const node = self.treeManager.nodeMap.get(nodeId);
                const newParentEl = evt.to;

                // Determine new parent: either from data attribute or root
                let newParentId = newParentEl.dataset.parentId;
                if (!newParentId) {
                    // Dropped on root level
                    newParentId = self.treeManager.root.id;
                }

                const newIndex = evt.newIndex;

                // If the dragged node is part of selection, move all selected nodes
                if (node && self.treeManager.isSelected(node) && self.treeManager.selectedNodes.size > 1) {
                    const moved = self.treeManager.moveSelectedNodes(newParentId, newIndex);
                    console.log(`Moved ${moved} nodes to ${newParentId}`);
                } else if (node) {
                    self.treeManager.moveNode(nodeId, newParentId, newIndex);
                }
                self._render();
            }
        });
        this.sortableInstances.push(sortable);
    }

    _destroySortables() {
        for (const instance of this.sortableInstances) {
            instance.destroy();
        }
        this.sortableInstances = [];
    }

    _updateNodeCount() {
        const count = this.treeManager.getNodeCount();
        this.nodeCountEl.textContent = `${count} item${count !== 1 ? 's' : ''}`;
    }

    _updateSelectionCount() {
        const count = this.treeManager.selectedNodes.size;
        if (count > 0) {
            this.selectionCountEl.style.display = '';
            this.selectionCountEl.textContent = `${count} selected`;
        } else {
            this.selectionCountEl.style.display = 'none';
        }
    }

    _selectNode(node) {
        this.treeManager.clearSelection();
        this.treeManager.selectNode(node);
        this._render();
    }

    _selectAll() {
        this.treeManager.selectAll();
        this._render();
    }

    _clearSelection() {
        this.treeManager.clearSelection();
        this._render();
    }

    _invertSelection() {
        this.treeManager.invertSelection();
        this._render();
    }

    _deleteSelected() {
        const count = this.treeManager.selectedNodes.size;
        if (count === 0) {
            alert('No nodes selected');
            return;
        }

        if (confirm(`Delete ${count} selected item${count !== 1 ? 's' : ''}?`)) {
            const deleted = this.treeManager.removeSelectedNodes();
            this._render();
            if (deleted > 0) {
                alert(`Deleted ${deleted} item${deleted !== 1 ? 's' : ''}`);
            }
        }
    }

    _updateNodeEditor() {
        const selectedNodes = this.treeManager.getSelectedNodes();

        if (selectedNodes.length === 0) {
            this.nodeEditorEl.innerHTML = '<p class="placeholder-text">Select a node to edit its properties</p>';
        } else if (selectedNodes.length === 1) {
            this._showSingleNodeEditor(selectedNodes[0]);
        } else {
            this._showBulkEditor(selectedNodes);
        }
    }

    _showNodeEditor(node) {
        this._showSingleNodeEditor(node);
    }

    _showSingleNodeEditor(node) {
        if (!node.editable) {
            this.nodeEditorEl.innerHTML = '<p class="placeholder-text">This node is read-only</p>';
            return;
        }

        const isBookmark = node.type === 'bookmark';

        this.nodeEditorEl.innerHTML = `
            <form class="editor-form" id="nodeEditForm">
                <div class="form-group">
                    <label>Type</label>
                    <select id="editType">
                        <option value="folder" ${isBookmark ? '' : 'selected'}>📁 Folder</option>
                        <option value="bookmark" ${isBookmark ? 'selected' : ''}>🔗 Bookmark</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Name / Title</label>
                    <input type="text" id="editName" value="${this._escapeHtml(node.name)}" required>
                </div>
                <div id="bookmarkFields" style="${isBookmark ? '' : 'display:none'}">
                    <div class="form-group">
                        <label>URL</label>
                        <input type="url" id="editUrl" value="${isBookmark ? this._escapeHtml(node.url) : ''}" placeholder="https://example.com">
                    </div>
                    <div class="form-group">
                        <label>Icon URL</label>
                        <input type="text" id="editIcon" value="${isBookmark ? this._escapeHtml(node.icon) : ''}" placeholder="https://example.com/favicon.ico">
                    </div>
                </div>
                <div class="form-group">
                    <label>Path</label>
                    <input type="text" value="${this._escapeHtml(node.getPath())}" readonly style="background:#f3f4f6">
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary">💾 Save Changes</button>
                    <button type="button" class="btn btn-danger" id="btnDeleteNode">🗑️ Delete</button>
                </div>
            </form>
        `;

        // Toggle bookmark fields based on type
        document.getElementById('editType').addEventListener('change', (e) => {
            const fields = document.getElementById('bookmarkFields');
            fields.style.display = e.target.value === 'bookmark' ? '' : 'none';
        });

        // Save changes
        document.getElementById('nodeEditForm').addEventListener('submit', (e) => {
            e.preventDefault();
            node.type = document.getElementById('editType').value;
            node.name = document.getElementById('editName').value;
            if (node.type === 'bookmark') {
                node.url = document.getElementById('editUrl').value;
                node.icon = document.getElementById('editIcon').value;
            }
            this._render();
        });

        // Delete button
        document.getElementById('btnDeleteNode').addEventListener('click', () => {
            this._deleteNode(node);
        });
    }

    _showBulkEditor(selectedNodes) {
        const folderCount = selectedNodes.filter(n => n.type === 'folder').length;
        const bookmarkCount = selectedNodes.filter(n => n.type === 'bookmark').length;

        let itemsList = '';
        for (const node of selectedNodes.slice(0, 20)) { // Show max 20 items
            const icon = node.type === 'folder' ? '📁' : '🔗';
            itemsList += `<div class="selected-item">${icon} ${this._escapeHtml(node.name)}</div>`;
        }
        if (selectedNodes.length > 20) {
            itemsList += `<div class="selected-item" style="color:#888">... and ${selectedNodes.length - 20} more</div>`;
        }

        this.nodeEditorEl.innerHTML = `
            <div class="bulk-editor">
                <h3>📋 ${selectedNodes.length} Items Selected</h3>
                <p style="margin-bottom: 1rem; color: #666;">
                    ${folderCount} folder${folderCount !== 1 ? 's' : ''},
                    ${bookmarkCount} bookmark${bookmarkCount !== 1 ? 's' : ''}
                </p>
                <div class="selected-list">
                    ${itemsList}
                </div>
                <div class="bulk-actions">
                    <button class="btn btn-danger" id="btnBulkDelete">🗑️ Delete All Selected</button>
                    <button class="btn" id="btnBulkDeselect">☐ Clear Selection</button>
                </div>
            </div>
        `;

        document.getElementById('btnBulkDelete').addEventListener('click', () => {
            this._deleteSelected();
        });

        document.getElementById('btnBulkDeselect').addEventListener('click', () => {
            this._clearSelection();
        });
    }

    _escapeHtml(str) {
        const div = document.createElement('div');
        div.textContent = str || '';
        return div.innerHTML;
    }

    _addNode(type) {
        // Get parent from first selected folder, or root
        const selectedNodes = this.treeManager.getSelectedNodes();
        const selectedFolder = selectedNodes.find(n => n.type === 'folder');
        const parentId = selectedFolder ? selectedFolder.id : this.treeManager.root.id;

        const name = type === 'folder' ? 'New Folder' : 'New Bookmark';
        const node = this.treeManager.addNode(parentId, type, name, {
            url: type === 'bookmark' ? 'https://' : undefined
        });

        this._render();
        this._selectNode(node);
    }

    _deleteNode(node) {
        if (!node.editable) return;

        const hasChildren = node.children && node.children.length > 0;
        if (confirm(`Delete "${node.name}"${hasChildren ? ' and all its contents' : ''}?`)) {
            this.treeManager.removeNode(node.id);
            this._render();
        }
    }

    _expandAll(expand) {
        const setExpanded = (node) => {
            if (node.type === 'folder') {
                node.expanded = expand;
                for (const child of node.children) {
                    setExpanded(child);
                }
            }
        };
        setExpanded(this.treeManager.root);
        this._render();
    }

    _triggerImport(accept) {
        this.fileInputEl.accept = accept;
        this.fileInputEl.click();
    }

    _handleFileImport(e) {
        const file = e.target.files[0];
        if (!file) return;

        const reader = new FileReader();
        reader.onload = (evt) => {
            const content = evt.target.result;

            if (file.name.endsWith('.json')) {
                const result = this.treeManager.importFromJSON(content);
                if (result.success) {
                    this._render();
                    alert('Import successful!');
                } else {
                    alert('Import failed: ' + result.error);
                }
            } else if (file.name.endsWith('.psd1')) {
                // Basic PSD1 parsing - convert to JSON-like structure
                const result = this._parsePsd1(content);
                if (result.success) {
                    this.treeManager.importFromJSON(JSON.stringify(result.data));
                    this._render();
                    alert('Import successful!');
                } else {
                    alert('PSD1 parsing failed: ' + result.error);
                }
            }
        };
        reader.readAsText(file);
        this.fileInputEl.value = ''; // Reset for next use
    }

    _parsePsd1(content) {
        // Basic PSD1 to JSON conversion
        // This handles simple cases but not all PowerShell data file syntax
        try {
            // Remove comments
            let cleaned = content.replace(/#.*$/gm, '');
            // Replace @{ with {
            cleaned = cleaned.replace(/@\{/g, '{');
            // Replace @( with [
            cleaned = cleaned.replace(/@\(/g, '[');
            // Replace ) with ]
            cleaned = cleaned.replace(/\)/g, ']');
            // Replace 'key' = with "key":
            cleaned = cleaned.replace(/'([^']+)'\s*=/g, '"$1":');
            // Replace remaining single quotes with double quotes
            cleaned = cleaned.replace(/'/g, '"');
            // Remove trailing commas before } or ]
            cleaned = cleaned.replace(/,(\s*[}\]])/g, '$1');
            // Add commas between array/object elements
            cleaned = cleaned.replace(/\}(\s*)\{/g, '},$1{');
            cleaned = cleaned.replace(/\](\s*)\[/g, '],$1[');
            cleaned = cleaned.replace(/\}(\s*)\[/g, '},$1[');
            cleaned = cleaned.replace(/\](\s*)\{/g, '],$1{');
            cleaned = cleaned.replace(/"(\s*)\{/g, '",$1{');
            cleaned = cleaned.replace(/"(\s*)\[/g, '",$1[');
            cleaned = cleaned.replace(/\}(\s*)"/g, '},$1"');
            cleaned = cleaned.replace(/\](\s*)"/g, '],$1"');
            cleaned = cleaned.replace(/"(\s*)"/g, '",$1"');

            const data = JSON.parse(cleaned);
            return { success: true, data };
        } catch (e) {
            return { success: false, error: e.message };
        }
    }

    _exportJSON() {
        const json = this.treeManager.exportToJSON();
        const blob = new Blob([json], { type: 'application/json' });
        const url = URL.createObjectURL(blob);

        const a = document.createElement('a');
        a.href = url;
        a.download = 'bookmarks.json';
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
        URL.revokeObjectURL(url);
    }

    _validate() {
        const errors = this.treeManager.validate();
        this._render(); // Re-render to show error indicators

        if (errors.length === 0) {
            alert('✅ Validation passed! No issues found.');
        } else {
            const errorCount = errors.filter(e => e.type === 'error').length;
            const warningCount = errors.filter(e => e.type === 'warning').length;
            const infoCount = errors.filter(e => e.type === 'info').length;

            alert(`Validation complete:\n• ${errorCount} error(s)\n• ${warningCount} warning(s)\n• ${infoCount} info message(s)\n\nClick "Error Log" to see details.`);
        }
    }

    _showErrorModal() {
        const errors = this.treeManager.errors;

        if (errors.length === 0) {
            this.errorLogContentEl.innerHTML = '<p style="color:#22c55e">✅ No errors or warnings</p>';
        } else {
            let html = '';
            for (const err of errors) {
                const lineInfo = err.line ? ` (Line ${err.line}${err.column ? `:${err.column}` : ''})` : '';
                html += `<div class="error-item ${err.type}">`;
                html += `<strong>[${err.type.toUpperCase()}]</strong>${lineInfo}<br>`;
                html += `Path: ${err.path}<br>`;
                html += `${err.message}`;
                html += `</div>`;
            }
            this.errorLogContentEl.innerHTML = html;
        }

        this.errorModalEl.style.display = 'flex';
    }

    _hideErrorModal() {
        this.errorModalEl.style.display = 'none';
    }

    _copyErrors() {
        const text = this._getErrorsAsText();
        navigator.clipboard.writeText(text).then(() => {
            alert('Errors copied to clipboard!');
        }).catch(err => {
            alert('Failed to copy: ' + err.message);
        });
    }

    _saveErrors() {
        const text = this._getErrorsAsText();
        const blob = new Blob([text], { type: 'text/plain' });
        const url = URL.createObjectURL(blob);

        const a = document.createElement('a');
        a.href = url;
        a.download = 'validation-errors.txt';
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
        URL.revokeObjectURL(url);
    }

    _getErrorsAsText() {
        const errors = this.treeManager.errors;
        if (errors.length === 0) return 'No errors or warnings';

        let text = `Bookmark Tree Validation Report\n`;
        text += `Generated: ${new Date().toISOString()}\n`;
        text += `Total Issues: ${errors.length}\n`;
        text += '='.repeat(50) + '\n\n';

        for (const err of errors) {
            const lineInfo = err.line ? ` (Line ${err.line}${err.column ? `:${err.column}` : ''})` : '';
            text += `[${err.type.toUpperCase()}]${lineInfo}\n`;
            text += `Path: ${err.path}\n`;
            text += `${err.message}\n\n`;
        }

        return text;
    }
}

// ============================================================================
// Initialize on DOM ready
// ============================================================================

document.addEventListener('DOMContentLoaded', () => {
    window.treeOrganizer = new TreeOrganizerUI();
});