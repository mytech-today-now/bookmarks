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
# - Each subfolder contains an array of BOOKMARK objects with Title and URL properties
#   These become individual bookmark links within the subfolder
#
# EXAMPLE HIERARCHY:
#   myTech.Today (root)
#     +- SoftwareTools (topic group)
#         +- Browsers (category)
#             +- News Updates (subfolder)
#             |   +- Bookmark 1
#             |   +- Bookmark 2
#             +- Aggregators (subfolder)
#             |   +- Bookmark 3
#             +- Resources (subfolder)
#                 +- Bookmark 4

@{
    'Browsers' = @{
        'News Updates' = @(
            @{
                Title = 'Biggest websites for news US: Top 50 updated each month';
                URL   = 'https://pressgazette.co.uk/media-audience-and-business-data/media_metrics/most-popular-websites-news-us-monthly-3/';
                Icon  = 'https://pressgazette.co.uk/favicon.ico';
            },
            @{
                Title = 'Top 10 best news sites and sources in 2025';
                URL   = 'https://www.top10.com/news-websites';
                Icon  = 'https://www.top10.com/favicon.ico';
            }
        );

        'Aggregators' = @(
            @{
                Title = '18 best web browsers 2025 - Efficient App';
                URL   = 'https://efficient.app/best/browser';
                Icon  = 'https://www.google.com/s2/favicons?domain=efficient.app';
            },
            @{
                Title = 'Best web browsers of 2025';
                URL   = 'https://www.pcmag.com/picks/the-best-web-browsers';
                Icon  = 'https://www.pcmag.com/apple-touch-icon.png';
            }
        );

        'SearchEngines' = @(
            @{
                Title = 'myTech.Today - Tools 2025 Search Engines';
                URL   = 'https://mytech.today/tools-2025/#search-engines';
                Icon  = 'https://mytech.today/favicon.ico';
            },
            @{
                Title = 'DuckDuckGo - privacy-first search';
                URL   = 'https://duckduckgo.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=duckduckgo.com';
            },
            @{
                Title = 'Google Image Search';
                URL   = 'https://images.google.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=google.com';
            },
            @{
                Title = 'Internet Archive - Wayback Machine';
                URL   = 'https://web.archive.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=web.archive.org';
            },
            @{
                Title = 'Archive.is - single-page snapshots';
                URL   = 'https://archive.is/';
                Icon  = 'https://archive.is/favicon.ico';
            },
            @{
                Title = 'grep.app - code search across repos';
                URL   = 'https://grep.app/';
                Icon  = 'https://www.google.com/s2/favicons?domain=grep.app';
            },
            @{
                Title = 'NerdyData - search source code on the web';
                URL   = 'https://nerdydata.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=nerdydata.com';
            },
            @{
                Title = 'infinitysearch - open-source metasearch';
                URL   = 'https://infinitysearch.co/';
                Icon  = 'https://www.google.com/s2/favicons?sz=64&domain=infinitysearch.co';
            },
            @{
                Title = 'hndex - Hacker News search engine';
                URL   = 'https://hndex.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=hndex.org';
            },
            @{
                Title = 'Symptoma - symptom checker & medical search';
                URL   = 'https://www.symptoma.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=symptoma.com';
            },
            @{
                Title = 'Apse.io - personal search engine';
                URL   = 'https://apse.io/';
                Icon  = 'https://www.google.com/s2/favicons?sz=64&domain=apse.io';
            },
            @{
                Title = 'Weboas.is - curated search portal';
                URL   = 'https://weboas.is/';
                Icon  = 'https://www.google.com/s2/favicons?sz=64&domain=weboas.is';
            },
            @{
                Title = 'Yippy - clustered metasearch';
                URL   = 'https://yippy.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=yippy.com';
            },
            @{
                Title = 'Google search operators (42 advanced operators)';
                URL   = 'https://www.imarketingonly.com/google-search-operators-the-complete-list-42-advanced-operators/';
                Icon  = 'https://www.google.com/s2/favicons?domain=imarketingonly.com';
            },
            @{
                Title = 'DuckDuckGo !bang operators';
                URL   = 'https://duckduckgo.com/bang';
                Icon  = 'https://www.google.com/s2/favicons?domain=duckduckgo.com';
            },
            @{
                Title = 'Browser market share statistics 2025';
                URL   = 'https://gs.statcounter.com/browser-market-share';
                Icon  = 'https://www.google.com/s2/favicons?domain=gs.statcounter.com';
            }
        );
    };

    'Development' = @{
        'News Updates' = @(
            @{
                Title = 'The Register - Biting the hand that feeds IT';
                URL   = 'https://www.theregister.com/';
                Icon  = 'https://theregister.com/favicon.ico';
            },
            @{
                Title = 'Hacker News';
                URL   = 'https://news.ycombinator.com/';
                Icon  = 'https://ycombinator.com/favicon.ico';
            },
            @{
                Title = 'Toms Hardware - Helping you make the most of computer hardware since 1996';
                URL   = 'https://www.tomshardware.com/news/';
                Icon  = 'https://tomshardware.com/favicon.ico';
            }
        );

        'IDEs & Editors' = @(
            @{
                Title = 'Visual Studio 2022 Community - full-featured IDE';
                URL   = 'https://visualstudio.microsoft.com/vs/community/';
                Icon  = 'https://www.google.com/s2/favicons?domain=visualstudio.microsoft.com';
            },
            @{
                Title = 'Visual Studio Code - free, cross-platform editor';
                URL   = 'https://code.visualstudio.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=code.visualstudio.com';
            },
            @{
                Title = 'JetBrains - IDEs and developer tools suite';
                URL   = 'https://www.jetbrains.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=jetbrains.com';
            },
            @{
                Title = 'PyCharm - Python IDE by JetBrains';
                URL   = 'https://www.jetbrains.com/pycharm/';
                Icon  = 'https://www.google.com/s2/favicons?domain=jetbrains.com';
            }
        );

        'Web Dev & Prototyping' = @(
            @{
                Title = 'Glitch - instant web app builder';
                URL   = 'https://glitch.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=glitch.com';
            },
            @{
                Title = 'JSFiddle - online HTML/CSS/JS playground';
                URL   = 'https://jsfiddle.net/';
                Icon  = 'https://www.google.com/s2/favicons?domain=jsfiddle.net';
            }
        );

        'Data, ML & Analytics' = @(
            @{
                Title = 'TensorFlow - end-to-end open-source machine learning';
                URL   = 'https://www.tensorflow.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=tensorflow.org';
            },
            @{
                Title = 'Datafold - data quality & comparison for SQL DBs';
                URL   = 'https://datafold.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=datafold.com';
            },
            @{
                Title = 'Streamlit - Python framework for data apps';
                URL   = 'https://streamlit.io/';
                Icon  = 'https://www.google.com/s2/favicons?domain=streamlit.io';
            }
        );

        'Dev Utilities & CLI' = @(
            @{
                Title = 'GNU Coreutils - essential command-line utilities';
                URL   = 'https://www.gnu.org/software/coreutils/';
                Icon  = 'https://www.google.com/s2/favicons?domain=gnu.org';
            },
            @{
                Title = 'ZXing QR Code Generator';
                URL   = 'https://zxing.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=zxing.org';
            },
            @{
                Title = 'regexr - interactive regex tester & cheat sheet';
                URL   = 'https://regexr.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=regexr.com';
            },
            @{
                Title = 'GOMP - Git cOMPare branch diff tool';
                URL   = 'https://github.com/MarkForged/GOMP';
                Icon  = 'https://www.google.com/s2/favicons?domain=github.com';
            },
            @{
                Title = 'gron - make JSON greppable for CLI workflows';
                URL   = 'https://github.com/tomnomnom/gron';
                Icon  = 'https://www.google.com/s2/favicons?domain=github.com';
            },
            @{
                Title = 'Refined GitHub - UI and UX improvements (extension)';
                URL   = 'https://github.com/refined-github/refined-github';
                Icon  = 'https://www.google.com/s2/favicons?domain=github.com';
            }
        );

        'Testing, QA & Automation' = @(
            @{
                Title = 'Apache JMeter - load and performance testing';
                URL   = 'https://jmeter.apache.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=jmeter.apache.org';
            },
            @{
                Title = 'BlazeMeter - cloud JMeter & performance testing';
                URL   = 'https://www.blazemeter.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=blazemeter.com';
            },
            @{
                Title = 'LoadImpact (k6) - modern cloud load testing';
                URL   = 'https://k6.io/';
                Icon  = 'https://www.google.com/s2/favicons?domain=k6.io';
            },
            @{
                Title = 'LoadRunner - enterprise load and performance testing';
                URL   = 'https://www.microfocus.com/en-us/products/loadrunner-professional';
                Icon  = 'https://www.google.com/s2/favicons?domain=microfocus.com';
            },
            @{
                Title = 'Appium - mobile app test automation';
                URL   = 'https://appium.io/';
                Icon  = 'https://www.google.com/s2/favicons?domain=appium.io';
            },
            @{
                Title = 'Vagrant - reproducible dev environments';
                URL   = 'https://developer.hashicorp.com/vagrant';
                Icon  = 'https://www.google.com/s2/favicons?domain=hashicorp.com';
            },
            @{
                Title = 'RegistryChangesView - Windows registry change monitor';
                URL   = 'https://www.nirsoft.net/utils/registry_changes_view.html';
                Icon  = 'https://www.google.com/s2/favicons?domain=nirsoft.net';
            },
            @{
                Title = 'Semgrep - lightweight code scanning & SAST';
                URL   = 'https://semgrep.dev/';
                Icon  = 'https://www.google.com/s2/favicons?domain=semgrep.dev';
            },
            @{
                Title = 'OneFuzz - Microsoft fuzzing service framework';
                URL   = 'https://github.com/microsoft/onefuzz';
                Icon  = 'https://www.google.com/s2/favicons?domain=github.com';
            },
            @{
                Title = 'QAReplay - smartest screen recorder for bug repro';
                URL   = 'https://qareplay.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=qareplay.com';
            }
        );

        'Reference & Catalogs' = @(
            @{
                Title = 'Ex-Googler dev tools (xg2xg) - Google-internal equivalents';
                URL   = 'https://github.com/jhuangtw/xg2xg';
                Icon  = 'https://www.google.com/s2/favicons?domain=github.com';
            }
        );

        'Productivity & Notes' = @(
            @{
                Title = 'TakeNote - Markdown note-taking app (takenote.dev)';
                URL   = 'https://takenote.dev/';
                Icon  = 'https://www.google.com/s2/favicons?domain=takenote.dev';
            }
        );

        'Resources' = @(
            @{
                Title = 'Stack Overflow - Questions tagged programming';
                URL   = 'https://stackoverflow.com/questions/tagged/programming';
                Icon  = 'https://stackoverflow.com/favicon.ico';
            },
            @{
                Title = 'GitHub Explore - trending repositories 2025';
                URL   = 'https://github.com/explore';
                Icon  = 'https://github.githubassets.com/favicons/favicon.svg';
            }
        );
    };

    'Cloud Storage' = @{
        'News Updates' = @(
            @{
                Title = 'Cloud storage news and updates (sample)';
                URL   = 'https://www.google.com/search?q=cloud+storage+news';
                Icon  = 'https://www.google.com/s2/favicons?domain=google.com';
            }
        );

        'Resources' = @(
            @{
                Title = 'Comparison of online backup services - Wikipedia';
                URL   = 'https://en.wikipedia.org/wiki/Comparison_of_online_backup_services';
                Icon  = 'https://en.wikipedia.org/static/favicon/wikipedia.ico';
            }
        );
    };

    'Media Downloading' = @{
        'Video Downloaders' = @(
            @{
                Title = 'Free Online Video Downloader ( Ultra HD, HDR, 1080p, 4K, 8K )';
                URL   = 'https://youtube4kdownloader.com/en80/';
                Icon  = 'https://www.google.com/s2/favicons?domain=youtube4kdownloader.com';
            },
            @{
                Title = 'Online Youtube 1080p video Downloader | Youtube4KDownloader';
                URL   = 'https://youtube4kdownloader.com/en81/download-youtube-1080p-video.html';
                Icon  = 'https://www.google.com/s2/favicons?domain=youtube4kdownloader.com';
            },
            @{
                Title = 'YouTube Private Video Downloader ( Ultra HD, 1080p, 4K, 8K )';
                URL   = 'https://youtube4kdownloader.com/youtube-private-downloader.html';
                Icon  = 'https://www.google.com/s2/favicons?domain=youtube4kdownloader.com';
            }
        );

        'Social Media Downloaders' = @(
            @{
                Title = 'Twitter Video Downloader - Download twitter videos & GIF Online';
                URL   = 'https://twittervideodownloader.com/';
                Icon  = 'https://twittervideodownloader.com/favicon.ico';
            },
            @{
                Title = 'Instagram Downloader - Download Instagram Video, Reels, Story, Photo, IGTV online - Snapinsta';
                URL   = 'https://snapinsta.app/';
                Icon  = 'https://snapinsta.app/favicon.ico';
            },
            @{
                Title = 'Facebook Video Downloader Online - Download Facebook Videos';
                URL   = 'https://fdown.net/';
                Icon  = 'https://fdown.net/favicon.ico';
            }
        );

        'News & Specialty Downloaders' = @(
            @{
                Title = 'Free Rumble Video Downloader HD Quality Fast';
                URL   = 'https://pastedownload.com/rumble-video-downloader/';
                Icon  = 'https://www.google.com/s2/favicons?domain=pastedownload.com';
            },
            @{
                Title = 'Free Wsj Video Downloader HD Quality Fast';
                URL   = 'https://pastedownload.com/wsj-video-downloader/#url=https://www.wsj.com/livecoverage/trump-rally-incident';
                Icon  = 'https://www.google.com/s2/favicons?domain=pastedownload.com';
            },
            @{
                Title = 'Download video Sister Christian | FHD quality';
                URL   = 'https://youtube4kdownloader.com/download/video/https%253A%252F%252Fopen.substack.com%252Fpub%252Fclifhigh%252Fp%252Fsister-christian%253Fr%253D17hzm3%2526utm_campaign%253Dpost%2526utm_medium%253Dweb';
                Icon  = 'https://www.google.com/s2/favicons?domain=youtube4kdownloader.com';
            },
            @{
                Title = 'Download video New Cult on the Block | FHD quality';
                URL   = 'https://save.tube/download/video/https%253A%252F%252Fclifhigh.substack.com%252Fp%252Fnew-cult-on-the-block%253Fpublication_id%253D681568%2526post_id%253D148369395%2526isFreemail%253Dtrue%2526r%253D17hzm3%2526triedRedirect%253Dtrue%2526utm_source%253Dsubstack%2526utm_medium%253Demail';
                Icon  = 'https://www.google.com/s2/favicons?domain=save.tube';
            }
        );

        'File Converters' = @(
            @{
                Title = 'Convertio - File Converter';
                URL   = 'https://convertio.co/';
                Icon  = 'https://www.google.com/s2/favicons?domain=convertio.co';
            },
            @{
                Title = 'Free File Converter Online - AnyConv';
                URL   = 'https://anyconv.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=anyconv.com';
            },
            @{
                Title = 'Online OCR - FREE OCR PDF Document Scanner & Converter - Soda PDF';
                URL   = 'https://www.sodapdf.com/ocr-pdf/';
                Icon  = 'https://www.google.com/s2/favicons?domain=sodapdf.com';
            }
        );
    };

    'News' = @{
        'News Updates' = @(
            @{
                Title = 'Techmeme - Tech news aggregator';
                URL   = 'https://www.techmeme.com/';
                Icon  = 'https://www.techmeme.com/favicon.ico';
            },
            @{
                Title = 'Hacker News front page';
                URL   = 'https://news.ycombinator.com/';
                Icon  = 'https://news.ycombinator.com/favicon.ico';
            }
        );

        'Resources' = @(
            @{
                Title = 'News media - Wikipedia';
                URL   = 'https://en.wikipedia.org/wiki/News_media';
                Icon  = 'https://en.wikipedia.org/static/favicon/wikipedia.ico';
            }
        );
    };

    'Social' = @{
        'Platforms' = @(
            @{
                Title = 'Mastodon - federated social network';
                URL   = 'https://mastodon.social/';
                Icon  = 'https://mastodon.social/favicon.ico';
            },
            @{
                Title = 'Reddit - front page of the internet';
                URL   = 'https://www.reddit.com/';
                Icon  = 'https://www.redditstatic.com/desktop2x/img/favicon/favicon-32x32.png';
            }
        );

        'Resources' = @(
            @{
                Title = 'Social media usage statistics 2025';
                URL   = 'https://www.statista.com/topics/1164/social-media-usage-worldwide/';
                Icon  = 'https://www.statista.com/favicon.ico';
            }
        );
    };

    'Generative' = @{
        'Tools' = @(
            @{
                Title = 'OpenAI - ChatGPT and GPT models';
                URL   = 'https://openai.com/';
                Icon  = 'https://openai.com/favicon.ico';
            },
            @{
                Title = 'Perplexity AI - answer engine';
                URL   = 'https://www.perplexity.ai/';
                Icon  = 'https://www.perplexity.ai/favicon.ico';
            },
            @{
                Title = 'Final Round AI - Job Interview Prep';
                URL   = 'https://www.finalroundai.com/';
                Icon  = 'https://www.finalroundai.com/favicon.ico';
            },
            @{
                Title = 'Prototyper - Rapid app builder for designers and engineers';
                URL   = 'https://www.prototyper.co/';
                Icon  = 'https://www.prototyper.co/favicon.ico';
            },
            @{
                Title = 'Midpage AI - AI-powered legal research for litigators';
                URL   = 'https://app.midpage.ai/';
                Icon  = 'https://app.midpage.ai/favicon.ico';
            },
            @{
                Title = 'Theres an AI for That (TAAIFT) - AI tool directory for every task';
                URL   = 'https://theresanaiforthat.com/';
                Icon  = 'https://theresanaiforthat.com/favicon.ico';
            },
            @{
                Title = 'Taskade - AI-powered no-code app and workflow builder';
                URL   = 'https://www.taskade.com/';
                Icon  = 'https://www.taskade.com/favicon.ico';
            },
            @{
                Title = 'Hemingwayapp - Writing improvement and readability tool';
                URL   = 'https://hemingwayapp.com/';
                Icon  = 'https://hemingwayapp.com/favicon.ico';
            }
        );

        'Resources' = @(
            @{
                Title = 'Generative artificial intelligence - Wikipedia';
                URL   = 'https://en.wikipedia.org/wiki/Generative_artificial_intelligence';
                Icon  = 'https://en.wikipedia.org/static/favicon/wikipedia.ico';
            }
        );
    };

    'Chatbots' = @{
        'Assistants' = @(
            @{
                Title = 'ChatGPT web app';
                URL   = 'https://chatgpt.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=chatgpt.com';
            },
            @{
                Title = 'Grok by xAI';
                URL   = 'https://x.ai/';
                Icon  = 'https://www.google.com/s2/favicons?domain=x.ai';
            },
            @{
                Title = 'Google Bard';
                URL   = 'https://bard.google/';
                Icon  = 'https://bard.google/favicon.ico';
            },
            @{
                Title = 'Google NotebookLM';
                URL   = 'https://notebook.ai/';
                Icon  = 'https://notebook.ai/favicon.ico';
            },
            @{
                Title = 'Claude';
                URL   = 'https://claude.ai/';
                Icon  = 'https://claude.ai/favicon.ico';
            },
            @{
                Title = 'Consensus - AI chat assistant for research';
                URL   = 'https://consensus.app/';
                Icon  = 'https://consensus.app/favicon.ico';
            }
        );

        'Resources' = @(
            @{
                Title = 'AI chat assistants comparison (search)';
                URL   = 'https://www.google.com/search?q=ai+chat+assistant+comparison';
                Icon  = 'https://www.google.com/s2/favicons?domain=google.com';
            },
            @{
                Title = 'Netus AI - AI chat assistants comparison';
                URL   = 'https://netus.ai/';
                Icon  = 'https://netus.ai/favicon.ico';
            },
            @{
                Title = 'Headliner - Podcast transcription, editing, and promotion tool';
                URL   = 'https://eddy.headliner.app/';
                Icon  = 'https://eddy.headliner.app/favicon.ico';
            },
            @{
                Title = 'Remail AI - AI email assistant';
                URL   = 'https://app.remail.ai/';
                Icon  = 'https://app.remail.ai/favicon.ico';
            }
        );
    };

    'ImageGen' = @{
        'Tools' = @(
            @{
                Title = 'DALL-E image generation';
                URL   = 'https://openai.com/dall-e-3';
                Icon  = 'https://openai.com/favicon.ico';
            },
            @{
                Title = 'Midjourney (official site)';
                URL   = 'https://www.midjourney.com/';
                Icon  = 'https://www.midjourney.com/favicon.ico';
            },
            @{
                Title = 'Microsoft Bing Image Creator';
                URL   = 'https://www.bing.com/images/create';
                Icon  = 'https://www.bing.com/favicon.ico';
            },
            @{
                Title = 'dzine ai - AI image generator and editor';
                URL   = 'https://www.dzine.ai/images/create';
                Icon  = 'https://www.dzine.ai/favicon.ico';
            }
        );

        'Resources' = @(
            @{
                Title = 'Stable Diffusion web UIs (search)';
                URL   = 'https://www.google.com/search?q=stable+diffusion+web+ui';
                Icon  = 'https://www.google.com/s2/favicons?domain=google.com';
            }
        );
    };

    'CodeAssist' = @{
        'Tools' = @(
            @{
                Title = 'GitHub Copilot';
                URL   = 'https://github.com/features/copilot';
                Icon  = 'https://github.com/favicon.ico';
            },
            @{
                Title = 'Cursor AI code editor';
                URL   = 'https://cursor.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=cursor.com';
            },
            @{
                Title = 'Augment AI code editor';
                URL   = 'https://www.augmentcode.com/';
                Icon  = 'https://www.augmentcode.com/favicon.ico';
            }
        );

        'Resources' = @(
            @{
                Title = 'AI coding assistants comparison (search)';
                URL   = 'https://www.google.com/search?q=ai+coding+assistant+comparison';
                Icon  = 'https://www.google.com/s2/favicons?domain=google.com';
            }
        );
    };

    'Productivity' = @{
        'Office Suites' = @(
            @{
                Title = 'LibreOffice - Free Office Suite';
                URL   = 'https://www.libreoffice.org/';
                Icon  = 'https://www.libreoffice.org/favicon.ico';
            },
            @{
                Title = 'Apache OpenOffice';
                URL   = 'https://www.openoffice.org/';
                Icon  = 'https://www.openoffice.org/favicon.ico';
            }
        );

        'Note-Taking' = @(
            @{
                Title = 'Obsidian - Knowledge Base';
                URL   = 'https://obsidian.md/';
                Icon  = 'https://obsidian.md/favicon.ico';
            },
            @{
                Title = 'Notion - All-in-one Workspace';
                URL   = 'https://www.notion.so/';
                Icon  = 'https://www.google.com/s2/favicons?domain=notion.so';
            },
            @{
                Title = 'Joplin - Open Source Notes';
                URL   = 'https://joplinapp.org/';
                Icon  = 'https://joplinapp.org/favicon.ico';
            }
        );

        'PDF Tools' = @(
            @{
                Title = 'Adobe Acrobat Reader';
                URL   = 'https://get.adobe.com/reader/';
                Icon  = 'https://www.google.com/s2/favicons?domain=adobe.com';
            },
            @{
                Title = 'Foxit PDF Reader';
                URL   = 'https://www.foxit.com/pdf-reader/';
                Icon  = 'https://www.foxit.com/favicon.ico';
            },
            @{
                Title = 'Smallpdf Free PDF Tools';
                URL   = 'https://smallpdf.com/pdf-tools';
                Icon  = 'https://smallpdf.com/favicon.ico';
            }
        );
    };

    'Media' = @{
        'Video Players' = @(
            @{
                Title = 'VLC Media Player';
                URL   = 'https://www.videolan.org/vlc/';
                Icon  = 'https://www.videolan.org/favicon.ico';
            },
            @{
                Title = 'MPC-HC - Media Player Classic';
                URL   = 'https://mpc-hc.org/';
                Icon  = 'https://mpc-hc.org/favicon.ico';
            }
        );

        'Image Editing' = @(
            @{
                Title = 'GIMP - GNU Image Manipulation Program';
                URL   = 'https://www.gimp.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=gimp.org';
            },
            @{
                Title = 'Paint.NET';
                URL   = 'https://www.getpaint.net/';
                Icon  = 'https://www.getpaint.net/favicon.ico';
            }
        );

        'Audio Editing' = @(
            @{
                Title = 'Audacity - Free Audio Editor';
                URL   = 'https://www.audacityteam.org/';
                Icon  = 'https://www.google.com/s2/favicons?sz=64&domain=audacityteam.org';
            }
        );

        'Audio AI' = @(
            @{
                Title = 'speechify - Text to Speech';
                URL   = 'https://speechify.com/';
                Icon  = 'https://speechify.com/favicon.ico';
            },
            @{
                Title = 'Vocal Remover - Remove vocals from audio';
                URL   = 'https://vocalremover.org/';
                Icon  = 'https://vocalremover.org/favicon.ico';
            }
        );
    };

    'Utilities' = @{
        'System Tools' = @(
            @{
                Title = 'PowerToys - Microsoft Utilities';
                URL   = 'https://github.com/microsoft/PowerToys';
                Icon  = 'https://github.com/favicon.ico';
            },
            @{
                Title = 'Everything - File Search';
                URL   = 'https://www.voidtools.com/';
                Icon  = 'https://www.voidtools.com/favicon.ico';
            }
        );

        'Compression' = @(
            @{
                Title = '7-Zip - File Archiver';
                URL   = 'https://www.7-zip.org/';
                Icon  = 'https://www.7-zip.org/favicon.ico';
            }
        );

        'Cleanup' = @(
            @{
                Title = 'CCleaner - System Cleaner';
                URL   = 'https://www.ccleaner.com/';
                Icon  = 'https://www.ccleaner.com/favicon.ico';
            },
            @{
                Title = 'BleachBit - Privacy Tool';
                URL   = 'https://www.bleachbit.org/';
                Icon  = 'https://www.bleachbit.org/favicon.ico';
            }
        );
    };

    'Security' = @{
        'Password Managers' = @(
            @{
                Title = 'Bitwarden - Open Source Password Manager';
                URL   = 'https://bitwarden.com/';
                Icon  = 'https://bitwarden.com/favicon.ico';
            },
            @{
                Title = 'KeePass - Secure Password Database';
                URL   = 'https://keepass.info/';
                Icon  = 'https://keepass.info/favicon.ico';
            }
        );

        'Encryption' = @(
            @{
                Title = 'VeraCrypt - Disk Encryption';
                URL   = 'https://www.veracrypt.fr/';
                Icon  = 'https://www.veracrypt.fr/favicon.ico';
            }
        );

        'Antivirus' = @(
            @{
                Title = 'Malwarebytes';
                URL   = 'https://www.malwarebytes.com/';
                Icon  = 'https://www.malwarebytes.com/favicon.ico';
            }
        );
    };

    'Communication' = @{
        'Messaging' = @(
            @{
                Title = 'Discord - Voice and Chat';
                URL   = 'https://discord.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=discord.com';
            },
            @{
                Title = 'Slack - Team Collaboration';
                URL   = 'https://slack.com/';
                Icon  = 'https://slack.com/favicon.ico';
            },
            @{
                Title = 'Signal - Private Messenger';
                URL   = 'https://signal.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=signal.org';
            }
        );

        'Video Conferencing' = @(
            @{
                Title = 'Zoom';
                URL   = 'https://zoom.us/';
                Icon  = 'https://zoom.us/favicon.ico';
            },
            @{
                Title = 'Microsoft Teams';
                URL   = 'https://www.microsoft.com/microsoft-teams/';
                Icon  = 'https://www.microsoft.com/favicon.ico';
            }
        );

        'Email' = @(
            @{
                Title = 'Thunderbird - Email Client';
                URL   = 'https://www.thunderbird.net/';
                Icon  = 'https://www.thunderbird.net/favicon.ico';
            }
        );
    };

    'Gaming' = @{
        'Platforms' = @(
            @{
                Title = 'Steam - Digital Game Distribution';
                URL   = 'https://store.steampowered.com/';
                Icon  = 'https://store.steampowered.com/favicon.ico';
            },
            @{
                Title = 'Epic Games Store';
                URL   = 'https://www.epicgames.com/store/';
                Icon  = 'https://www.epicgames.com/favicon.ico';
            },
            @{
                Title = 'GOG - DRM-Free Games';
                URL   = 'https://www.gog.com/';
                Icon  = 'https://www.gog.com/favicon.ico';
            }
        );

        'Resources' = @(
            @{
                Title = 'PC Gaming Wiki';
                URL   = 'https://www.pcgamingwiki.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=pcgamingwiki.com';
            }
        );
    };

    'Education' = @{
        'Learning Platforms' = @(
            @{
                Title = 'Khan Academy - Free Education';
                URL   = 'https://www.khanacademy.org/';
                Icon  = 'https://www.khanacademy.org/favicon.ico';
            },
            @{
                Title = 'Coursera - Online Courses';
                URL   = 'https://www.coursera.org/';
                Icon  = 'https://www.coursera.org/favicon.ico';
            }
        );

        'Tools' = @(
            @{
                Title = 'Anki - Flashcard Learning';
                URL   = 'https://apps.ankiweb.net/';
                Icon  = 'https://www.google.com/s2/favicons?domain=ankiweb.net';
            },
            @{
                Title = 'GeoGebra - Math Software';
                URL   = 'https://www.geogebra.org/';
                Icon  = 'https://www.geogebra.org/favicon.ico';
            }
        );
    };

    'Finance' = @{
        'Personal Finance' = @(
            @{
                Title = 'GnuCash - Accounting Software';
                URL   = 'https://www.gnucash.org/';
                Icon  = 'https://www.gnucash.org/favicon.ico';
            },
            @{
                Title = 'HomeBank - Finance Manager';
                URL   = 'http://homebank.free.fr/';
                Icon  = 'http://homebank.free.fr/favicon.ico';
            }
        );

        'Resources' = @(
            @{
                Title = 'Personal Finance Software Comparison';
                URL   = 'https://www.google.com/search?q=personal+finance+software+comparison';
                Icon  = 'https://www.google.com/s2/favicons?domain=google.com';
            }
        );
    };

    'Remote Access' = @{
        'Remote Desktop' = @(
            @{
                Title = 'TeamViewer - Remote Support';
                URL   = 'https://www.teamviewer.com/';
                Icon  = 'https://www.teamviewer.com/favicon.ico';
            },
            @{
                Title = 'AnyDesk - Remote Desktop';
                URL   = 'https://anydesk.com/';
                Icon  = 'https://anydesk.com/favicon.ico';
            },
            @{
                Title = 'RustDesk - Open Source Remote Desktop';
                URL   = 'https://rustdesk.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=rustdesk.com';
            }
        );
    };

    'Networking' = @{
        'Network Tools' = @(
            @{
                Title = 'Wireshark - Network Protocol Analyzer';
                URL   = 'https://www.wireshark.org/';
                Icon  = 'https://www.wireshark.org/favicon.ico';
            },
            @{
                Title = 'PuTTY - SSH Client';
                URL   = 'https://www.putty.org/';
                Icon  = 'https://www.google.com/s2/favicons?sz=64&domain=www.putty.org';
            },
            @{
                Title = 'Nmap - Network Scanner';
                URL   = 'https://nmap.org/';
                Icon  = 'https://nmap.org/favicon.ico';
            }
        );
    };

    '3D & CAD' = @{
        '3D Modeling' = @(
            @{
                Title = 'Blender - 3D Creation Suite';
                URL   = 'https://www.blender.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=blender.org';
            },
            @{
                Title = 'FreeCAD - Parametric 3D Modeler';
                URL   = 'https://www.freecad.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=freecad.org';
            }
        );

        'CAD' = @(
            @{
                Title = 'LibreCAD - 2D CAD';
                URL   = 'https://librecad.org/';
                Icon  = 'https://librecad.org/favicon.ico';
            }
        );
    };

    'Runtime' = @{
        'Runtimes' = @(
            @{
                Title = 'Java Runtime Environment';
                URL   = 'https://www.java.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=java.com';
            },
            @{
                Title = '.NET Desktop Runtime';
                URL   = 'https://dotnet.microsoft.com/download/dotnet';
                Icon  = 'https://www.google.com/s2/favicons?domain=dotnet.microsoft.com';
            },
            @{
                Title = 'Visual C++ Redistributable';
                URL   = 'https://learn.microsoft.com/cpp/windows/latest-supported-vc-redist';
                Icon  = 'https://learn.microsoft.com/favicon.ico';
            }
        );
    };

    'Writing' = @{
        'Writing Tools' = @(
            @{
                Title = 'FocusWriter - Distraction-Free Writing';
                URL   = 'https://gottcode.org/focuswriter/';
                Icon  = 'https://gottcode.org/favicon.ico';
            },
            @{
                Title = 'Manuskript - Novel Writing';
                URL   = 'https://www.theologeek.ch/manuskript/';
                Icon  = 'https://www.theologeek.ch/favicon.ico';
            }
        );

        'Screenwriting' = @(
            @{
                Title = 'Celtx - Screenwriting Software';
                URL   = 'https://www.celtx.com/';
                Icon  = 'https://www.celtx.com/favicon.ico';
            }
        );
    };

    'Video Editing' = @{
        'Video Editors' = @(
            @{
                Title = 'DaVinci Resolve - Professional Video Editing';
                URL   = 'https://www.blackmagicdesign.com/products/davinciresolve';
                Icon  = 'https://www.blackmagicdesign.com/favicon.ico';
            },
            @{
                Title = 'Shotcut - Free Video Editor';
                URL   = 'https://shotcut.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=shotcut.org';
            },
            @{
                Title = 'OpenShot - Easy Video Editor';
                URL   = 'https://www.openshot.org/';
                Icon  = 'https://www.openshot.org/favicon.ico';
            }
        );
    };

    'Audio Production' = @{
        'DAWs' = @(
            @{
                Title = 'Cakewalk by BandLab - Free DAW';
                URL   = 'https://www.bandlab.com/products/cakewalk';
                Icon  = 'https://www.bandlab.com/favicon.ico';
            },
            @{
                Title = 'LMMS - Music Production';
                URL   = 'https://lmms.io/';
                Icon  = 'https://lmms.io/favicon.ico';
            },
            @{
                Title = 'Reaper - Digital Audio Workstation';
                URL   = 'https://www.reaper.fm/';
                Icon  = 'https://www.reaper.fm/favicon.ico';
            }
        );
    };

    'Screen Recording' = @{
        'Screen Recorders' = @(
            @{
                Title = 'OBS Studio - Streaming and Recording';
                URL   = 'https://obsproject.com/';
                Icon  = 'https://obsproject.com/favicon.ico';
            },
            @{
                Title = 'ShareX - Screen Capture';
                URL   = 'https://getsharex.com/';
                Icon  = 'https://getsharex.com/favicon.ico';
            }
        );
    };

    'Mockups & Wireframe' = @{
        'Design Tools' = @(
            @{
                Title = 'Figma - Collaborative Design';
                URL   = 'https://www.figma.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=figma.com';
            },
            @{
                Title = 'Draw.io - Diagramming Tool';
                URL   = 'https://www.drawio.com/';
                Icon  = 'https://www.drawio.com/favicon.ico';
            },
            @{
                Title = 'Penpot - Open Source Design';
                URL   = 'https://penpot.app/';
                Icon  = 'https://penpot.app/favicon.ico';
            }
        );
    };

    'AI' = @{
        'AI Assistants' = @(
            @{
                Title = 'ChatGPT - OpenAI';
                URL   = 'https://chatgpt.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=chatgpt.com';
            },
            @{
                Title = 'Grok - xAI';
                URL   = 'https://x.ai/';
                Icon  = 'https://www.google.com/s2/favicons?domain=x.ai';
            },
            @{
                Title = 'Claude - Anthropic';
                URL   = 'https://claude.ai/';
                Icon  = 'https://www.google.com/s2/favicons?domain=claude.ai';
            }
        );

        'Dictation' = @(
            @{
                Title = 'dictation.io - Voice Dictation';
                URL   = 'https://dictation.io/';
                Icon  = 'https://dictation.io/favicon.ico';
            }
        );
    };

    'Maintenance' = @{
        'System Maintenance' = @(
            @{
                Title = 'O&O ShutUp10 - Privacy Settings';
                URL   = 'https://www.oo-software.com/en/shutup10';
                Icon  = 'https://www.oo-software.com/favicon.ico';
            },
            @{
                Title = 'Manage Restore Points';
                URL   = 'https://www.google.com/search?q=windows+system+restore+points';
                Icon  = 'https://www.google.com/s2/favicons?domain=google.com';
            }
        );

        'Logs' = @(
            @{
                Title = 'Hosts File Manager Log';
                URL   = 'file:///C:/Users/%USERNAME%/myTech.Today/logs/hosts.md';
                Icon  = 'https://www.google.com/s2/favicons?domain=mytech.today';
            },
            @{
                Title = 'Manage Restore Points Log';
                URL   = 'file:///C:/Users/%USERNAME%/myTech.Today/logs/Manage-RestorePoints.md';
                Icon  = 'https://www.google.com/s2/favicons?domain=mytech.today';
            },
            @{
                Title = 'O&O ShutUp10 Log';
                URL   = 'file:///C:/Users/%USERNAME%/myTech.Today/logs/OOShutUp10.md';
                Icon  = 'https://www.google.com/s2/favicons?domain=mytech.today';
            },
            @{
                Title = 'Responsive GUI Log';
                URL   = 'file:///C:/Users/%USERNAME%/myTech.Today/logs/responsive.md';
                Icon  = 'https://www.google.com/s2/favicons?domain=mytech.today';
            }
        );
    };

    'Shortcuts' = @{
        'Productivity Shortcuts' = @(
            @{
                Title = 'AutoHotkey - Automation Scripting';
                URL   = 'https://www.autohotkey.com/';
                Icon  = 'https://www.autohotkey.com/favicon.ico';
            },
            @{
                Title = 'PowerToys - Windows Utilities';
                URL   = 'https://github.com/microsoft/PowerToys';
                Icon  = 'https://github.com/favicon.ico';
            }
        );
    };

    'Backup' = @{
        'Backup Tools' = @(
            @{
                Title = 'Veeam Agent FREE - Backup Solution';
                URL   = 'https://www.veeam.com/windows-endpoint-server-backup-free.html';
                Icon  = 'https://www.veeam.com/favicon.ico';
            },
            @{
                Title = 'Duplicati - Encrypted Backup';
                URL   = 'https://www.duplicati.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=duplicati.com';
            },
            @{
                Title = 'FreeFileSync - File Synchronization';
                URL   = 'https://freefilesync.org/';
                Icon  = 'https://freefilesync.org/favicon.ico';
            }
        );
    };

}

