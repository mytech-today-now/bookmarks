/**
 * Bookmark Tree Organizer - Application Logic
 * A drag-and-drop hierarchy editor for bookmark structures
 */

// ============================================================================
// Data Model
// ============================================================================

class TreeNode {
    constructor(type, name, data = {}) {
        this.id = TreeNode.generateId();
        this.type = type; // 'folder' or 'bookmark'
        this.name = name;
        this.children = [];
        this.parent = null;
        this.expanded = true;
        this.editable = data.editable !== false;
        
        // Bookmark-specific properties
        if (type === 'bookmark') {
            this.url = data.url || '';
            this.icon = data.icon || '';
        }
        
        // Source tracking for validation
        this.sourceLine = data.sourceLine || null;
        this.sourceColumn = data.sourceColumn || null;
    }
    
    static generateId() {
        return 'node_' + Math.random().toString(36).substr(2, 9);
    }
    
    addChild(node) {
        node.parent = this;
        this.children.push(node);
        return node;
    }
    
    removeChild(node) {
        const idx = this.children.indexOf(node);
        if (idx > -1) {
            this.children.splice(idx, 1);
            node.parent = null;
        }
    }
    
    getPath() {
        const parts = [];
        let current = this;
        while (current) {
            parts.unshift(current.name);
            current = current.parent;
        }
        return parts.join(' > ');
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
        this.root = new TreeNode('folder', 'Root', { editable: false });
        this.selectedNode = null;
        this.errors = [];
        this.nodeMap = new Map(); // id -> node for fast lookup
        this.nodeMap.set(this.root.id, this.root);
    }
    
    clear() {
        this.root = new TreeNode('folder', 'Root', { editable: false });
        this.selectedNode = null;
        this.errors = [];
        this.nodeMap.clear();
        this.nodeMap.set(this.root.id, this.root);
    }
    
    addNode(parentId, type, name, data = {}) {
        const parent = this.nodeMap.get(parentId) || this.root;
        const node = new TreeNode(type, name, data);
        parent.addChild(node);
        this.nodeMap.set(node.id, node);
        return node;
    }
    
    removeNode(nodeId) {
        const node = this.nodeMap.get(nodeId);
        if (node && node.parent && node.editable) {
            node.parent.removeChild(node);
            this.nodeMap.delete(nodeId);
            // Remove all descendants from map
            const removeDescendants = (n) => {
                for (const child of n.children) {
                    this.nodeMap.delete(child.id);
                    removeDescendants(child);
                }
            };
            removeDescendants(node);
            return true;
        }
        return false;
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
        if (index >= 0 && index < newParent.children.length) {
            newParent.children.splice(index, 0, node);
        } else {
            newParent.children.push(node);
        }
        
        return true;
    }

    getNodeCount() {
        let count = 0;
        const countNodes = (node) => {
            count++;
            for (const child of node.children) {
                countNodes(child);
            }
        };
        for (const child of this.root.children) {
            countNodes(child);
        }
        return count;
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
            // Array of bookmarks
            for (const item of obj) {
                if (item.Title || item.title) {
                    const node = this.addNode(parent.id, 'bookmark', item.Title || item.title, {
                        url: item.URL || item.url || '',
                        icon: item.Icon || item.icon || '',
                        sourceLine: lineEstimate++
                    });
                }
            }
        } else if (typeof obj === 'object' && obj !== null) {
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

// ============================================================================
// UI Controller
// ============================================================================

class TreeOrganizerUI {
    constructor() {
        this.treeManager = new TreeManager();
        this.sortableInstances = [];

        // DOM Elements
        this.rootTreeEl = document.getElementById('rootTree');
        this.nodeEditorEl = document.getElementById('nodeEditor');
        this.nodeCountEl = document.getElementById('nodeCount');
        this.errorModalEl = document.getElementById('errorModal');
        this.errorLogContentEl = document.getElementById('errorLogContent');
        this.fileInputEl = document.getElementById('fileInput');

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
    }

    _render() {
        this.rootTreeEl.innerHTML = '';
        this._destroySortables();

        for (const child of this.treeManager.root.children) {
            this.rootTreeEl.appendChild(this._createNodeElement(child));
        }

        this._initSortable(this.rootTreeEl, this.treeManager.root.id);
        this._updateNodeCount();
    }

    _createNodeElement(node) {
        const li = document.createElement('li');
        li.className = 'tree-node';
        li.dataset.nodeId = node.id;

        const content = document.createElement('div');
        content.className = 'node-content';
        if (this.treeManager.selectedNode === node) {
            content.classList.add('selected');
        }

        // Check for errors on this node
        const nodeErrors = this.treeManager.errors.filter(e => e.node === node);
        if (nodeErrors.length > 0) {
            content.classList.add('has-error');
        }

        // Toggle button (for folders)
        const toggle = document.createElement('span');
        toggle.className = 'node-toggle';
        if (node.type === 'folder' && node.children.length > 0) {
            toggle.textContent = node.expanded ? '▼' : '▶';
            toggle.addEventListener('click', (e) => {
                e.stopPropagation();
                node.expanded = !node.expanded;
                this._render();
            });
        }
        content.appendChild(toggle);

        // Icon
        const icon = document.createElement('span');
        icon.className = `node-icon ${node.type}`;
        icon.textContent = node.type === 'folder' ? '📁' : '🔗';
        content.appendChild(icon);

        // Label
        const label = document.createElement('span');
        label.className = 'node-label';
        label.textContent = node.name;
        label.title = node.type === 'bookmark' ? node.url : node.getPath();
        content.appendChild(label);

        // Actions
        if (node.editable) {
            const actions = document.createElement('span');
            actions.className = 'node-actions';

            const editBtn = document.createElement('button');
            editBtn.className = 'node-action-btn';
            editBtn.textContent = '✏️';
            editBtn.title = 'Edit';
            editBtn.addEventListener('click', (e) => {
                e.stopPropagation();
                this._selectNode(node);
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

        content.addEventListener('click', () => this._selectNode(node));
        li.appendChild(content);

        // Children (for folders)
        if (node.type === 'folder') {
            const childrenUl = document.createElement('ul');
            childrenUl.className = `tree-list node-children ${node.expanded ? 'expanded' : ''}`;
            childrenUl.dataset.parentId = node.id;

            for (const child of node.children) {
                childrenUl.appendChild(this._createNodeElement(child));
            }

            li.appendChild(childrenUl);
            this._initSortable(childrenUl, node.id);
        }

        return li;
    }

    _initSortable(el, parentId) {
        const sortable = new Sortable(el, {
            group: 'tree',
            animation: 150,
            fallbackOnBody: true,
            swapThreshold: 0.65,
            ghostClass: 'drag-over',
            onEnd: (evt) => {
                const nodeId = evt.item.dataset.nodeId;
                const newParentEl = evt.to;
                const newParentId = newParentEl.dataset.parentId || this.treeManager.root.id;
                const newIndex = evt.newIndex;

                this.treeManager.moveNode(nodeId, newParentId, newIndex);
                this._render();
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

    _selectNode(node) {
        this.treeManager.selectedNode = node;
        this._render();
        this._showNodeEditor(node);
    }

    _showNodeEditor(node) {
        if (!node.editable) {
            this.nodeEditorEl.innerHTML = '<p class="placeholder-text">This node is read-only</p>';
            return;
        }

        const isBookmark = node.type === 'bookmark';

        this.nodeEditorEl.innerHTML = `
            <form class="editor-form" id="nodeEditForm">
                <div class="form-group">
                    <label>Type</label>
                    <select id="editType" ${isBookmark ? '' : ''}>
                        <option value="folder" ${!isBookmark ? 'selected' : ''}>📁 Folder</option>
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
            this._showNodeEditor(node);
        });

        // Delete button
        document.getElementById('btnDeleteNode').addEventListener('click', () => {
            this._deleteNode(node);
        });
    }

    _escapeHtml(str) {
        const div = document.createElement('div');
        div.textContent = str || '';
        return div.innerHTML;
    }

    _addNode(type) {
        const parentId = this.treeManager.selectedNode?.type === 'folder'
            ? this.treeManager.selectedNode.id
            : this.treeManager.root.id;

        const name = type === 'folder' ? 'New Folder' : 'New Bookmark';
        const node = this.treeManager.addNode(parentId, type, name, {
            url: type === 'bookmark' ? 'https://' : undefined
        });

        this._render();
        this._selectNode(node);
    }

    _deleteNode(node) {
        if (!node.editable) return;

        if (confirm(`Delete "${node.name}"${node.children?.length > 0 ? ' and all its contents' : ''}?`)) {
            this.treeManager.removeNode(node.id);
            if (this.treeManager.selectedNode === node) {
                this.treeManager.selectedNode = null;
                this.nodeEditorEl.innerHTML = '<p class="placeholder-text">Select a node to edit its properties</p>';
            }
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