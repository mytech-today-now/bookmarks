# Sample curated bookmark data for bookmarks.ps1
# Top-level keys are categories (e.g., 'Browsers', 'Development').
# Each category contains one more level of categorization: group names
# (e.g., 'News Updates', 'Aggregators', 'Resources'), which become
# subfolders under that category in the generated myTech.Today tree.

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
                Icon  = 'https://efficient.app/favicon.ico';
            },
            @{
                Title = 'Best web browsers of 2025';
                URL   = 'https://www.pcmag.com/picks/the-best-web-browsers';
                Icon  = 'https://www.pcmag.com/apple-touch-icon.png';
            }
        );

        'Resources' = @(
            @{
                Title = 'List of web browsers - Wikipedia';
                URL   = 'https://en.wikipedia.org/wiki/List_of_web_browsers';
                Icon  = 'https://en.wikipedia.org/static/favicon/wikipedia.ico';
            }
        );

        'SearchEngines' = @(
            @{
                Title = 'myTech.Today – Tools 2025 Search Engines';
                URL   = 'https://mytech.today/tools-2025/#search-engines';
                Icon  = 'https://www.google.com/s2/favicons?domain=mytech.today';
            },
            @{
                Title = 'DuckDuckGo – privacy-first search';
                URL   = 'https://duckduckgo.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=duckduckgo.com';
            },
            @{
                Title = 'Google Image Search';
                URL   = 'https://images.google.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=google.com';
            },
            @{
                Title = 'Internet Archive – Wayback Machine';
                URL   = 'https://web.archive.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=web.archive.org';
            },
            @{
                Title = 'Archive.is – single-page snapshots';
                URL   = 'https://archive.is/';
                Icon  = 'https://www.google.com/s2/favicons?domain=archive.is';
            },
            @{
                Title = 'grep.app – code search across repos';
                URL   = 'https://grep.app/';
                Icon  = 'https://www.google.com/s2/favicons?domain=grep.app';
            },
            @{
                Title = 'NerdyData – search source code on the web';
                URL   = 'https://nerdydata.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=nerdydata.com';
            },
            @{
                Title = 'Runnaroo – developer-focused search';
                URL   = 'https://runnaroo.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=runnaroo.com';
            },
            @{
                Title = 'infinitysearch – open-source metasearch';
                URL   = 'https://infinitysearch.co/';
                Icon  = 'https://www.google.com/s2/favicons?domain=infinitysearch.co';
            },
            @{
                Title = 'hndex – Hacker News search engine';
                URL   = 'https://hndex.org/';
                Icon  = 'https://www.google.com/s2/favicons?domain=hndex.org';
            },
            @{
                Title = 'Symptoma – symptom checker & medical search';
                URL   = 'https://www.symptoma.com/';
                Icon  = 'https://www.google.com/s2/favicons?domain=symptoma.com';
            },
            @{
                Title = 'Apse.io – personal search engine';
                URL   = 'https://apse.io/';
                Icon  = 'https://www.google.com/s2/favicons?domain=apse.io';
            },
            @{
                Title = 'asone.ai – research-focused discovery';
                URL   = 'https://asone.ai/';
                Icon  = 'https://www.google.com/s2/favicons?domain=asone.ai';
            },
            @{
                Title = 'Weboas.is – curated search portal';
                URL   = 'https://weboas.is/';
                Icon  = 'https://www.google.com/s2/favicons?domain=weboas.is';
            },
            @{
                Title = 'Yippy – clustered metasearch';
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
                Icon  = 'https://gs.statcounter.com/favicon.ico';
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
            },
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
                Icon  = 'https://streamlit.io/favicons.ico';
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
                URL   = 'https://chat.openai.com/';
                Icon  = 'https://chat.openai.com/favicon.ico';
            },
            @{
                Title = 'Grok by xAI';
                URL   = 'https://x.ai/';
                Icon  = 'https://x.ai/favicon.ico';
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
            }
        );

        'Resources' = @(
            @{
                Title = 'AI chat assistants comparison (search)';
                URL   = 'https://www.google.com/search?q=ai+chat+assistant+comparison';
                Icon  = 'https://www.google.com/s2/favicons?domain=google.com';
            }
        );
    };

    'ImageGen' = @{
        'Tools' = @(
            @{
                Title = 'DALL·E image generation';
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
                Icon  = 'https://cursor.com/favicons.ico';
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

}

