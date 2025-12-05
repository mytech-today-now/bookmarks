# Sample curated bookmark data for bookmarks.ps1
#
# STRUCTURE:
# This file defines a hierarchical bookmark structure:
#   Category -> Subfolder -> Individual Bookmarks
#
# - Top-level keys are CATEGORIES (e.g., 'Browsers', 'Development', 'Media Downloading')
#   These correspond to application categories from install.ps1
#
# - Each category contains SUBFOLDERS (e.g., 'News Updates', 'Aggregators', 'Resources')
#   These become child folders under the category in the bookmark hierarchy
#
# - Each subfolder contains an array of BOOKMARK objects with Title, URL, and Icon properties
#   These become individual bookmark links within the subfolder

#

@{
    'woowoo' = @{
        'Religious Manifestation' = @(
            @{
                'Title' = 'The Eyes to See - Aether Pirates of the Matterium!'
                'URL' = 'https://clifhigh.substack.com/p/the-eyes-to-see'
                'Icon' = 'https://clifhigh.substack.com/favicon.ico'
            },
            @{
                'Title' = 'Aether Pirates of the Matterium!'
                'URL' = 'https://clifhigh.substack.com/'
                'Icon' = 'https://clifhigh.substack.com/favicon.ico'
            },
            @{
                'Title' = 'Mauro Biglino Official Channel'
                'URL' = 'https://www.youtube.com/@MauroBiglinoOfficialChannel'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = '@nevillegoddardofficial Channel'
                'URL' = 'https://www.youtube.com/@nevillegoddardofficial'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'They''re here' = @(
            @{
                'Title' = 'Bruce Sees all - Youtube.com'
                'URL' = 'https://www.youtube.com/@BruceSeesall'
                'Icon' = 'https://yt3.googleusercontent.com/I4gzRMtUQ6oWEE20CqVWVf_qcAwyG8dvn1aV8UG1UU6gIwDH9zs2P3ttpG_cJaC937voQU-X0w=s160-c-k-c0x00ffffff-no-rj'
            }
        )
    }
}