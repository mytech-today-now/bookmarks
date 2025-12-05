<#
.SYNOPSIS
    External data source for Middle East bookmarks.
#>

# Middle East bookmark data - loaded by bookmarks.ps1
# Structure: 'Middle East' key containing countries and their news sources
@{
    'Middle East' = @{
        'bahrain' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Bahrain News Agency - Official state-run source for national updates'
                'URL' = 'https://www.bna.bh/en/'
                'icon' = 'https://www.bna.bh/favicon.ico'
            },
            @{
                'Title' = 'Gulf Daily News - Leading English daily covering Bahrain politics society'
                'URL' = 'https://www.newsofbahrain.com/'
                'icon' = 'https://www.newsofbahrain.com/favicon.ico'
            },
            @{
                'Title' = 'The New Arab - Comprehensive reports on Bahrain events and economy'
                'URL' = 'https://www.newarab.com/bahrain'
                'icon' = 'https://www.newarab.com/favicon.ico'
            },
            @{
                'Title' = 'Bahrain Mirror - In-depth coverage of politics and culture'
                'URL' = 'https://www.bahrainmirror.com/en/'
                'icon' = 'https://www.bahrainmirror.com/favicon.ico'
            },
            @{
                'Title' = 'Al Ayam - State-affiliated source for Bahrain domestic headlines'
                'URL' = 'https://www.alayam.com/'
                'icon' = 'https://www.alayam.com/favicon.ico'
            },
            @{
                'Title' = 'Gulf News Bahrain - Regional updates on Bahrain affairs'
                'URL' = 'https://gulfnews.com/world/gulf/bahrain'
                'icon' = 'https://gulfnews.com/favicon.ico'
            },
            @{
                'Title' = 'The National Bahrain - International perspectives on local developments'
                'URL' = 'https://www.thenationalnews.com/world/bahrain/'
                'icon' = 'https://www.thenationalnews.com/favicon.ico'
            }
        )
        'Alternative News Sites' = @(
            @{
                'Title' = 'Middle East Eye Bahrain - Independent reporting on human rights issues'
                'URL' = 'https://www.middleeasteye.net/countries/bahrain'
                'icon' = 'https://www.middleeasteye.net/favicon.ico'
            },
            @{
                'Title' = 'Al-Monitor Bahrain - Analytical insights into regional dynamics'
                'URL' = 'https://www.al-monitor.com/bahrain'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'The New Arab Bahrain - Progressive coverage of social justice'
                'URL' = 'https://www.newarab.com/bahrain'
                'icon' = 'https://www.newarab.com/favicon.ico'
            },
            @{
                'Title' = 'Bahrain Mirror - Uncensored views on governance and rights'
                'URL' = 'https://www.bahrainmirror.com/en/'
                'icon' = 'https://www.bahrainmirror.com/favicon.ico'
            },
            @{
                'Title' = 'Amwaj Media Bahrain - Geopolitical and policy critiques'
                'URL' = 'https://amwaj.media/en/region/bahrain'
                'icon' = 'https://amwaj.media/favicon.ico'
            }
        )
        'Counter Culture News Sites' = @(
            @{
                'Title' = 'Bahrain Mirror - Diaspora journalism on repression and activism'
                'URL' = 'https://www.bahrainmirror.com/en/'
                'icon' = 'https://www.bahrainmirror.com/favicon.ico'
            },
            @{
                'Title' = 'Human Rights Watch Bahrain - Exposes on torture and arbitrary detention'
                'URL' = 'https://www.hrw.org/middle-east/north-africa/bahrain'
                'icon' = 'https://www.hrw.org/favicon.ico'
            },
            @{
                'Title' = 'RSF Bahrain - Advocacy against media censorship and arrests'
                'URL' = 'https://rsf.org/en/country/bahrain'
                'icon' = 'https://rsf.org/favicon.ico'
            }
        )
        'Mainstream Vloggers' = @(
            @{
                'Title' = 'Bahrain Diaries - Daily life and cultural explorations in Manama'
                'URL' = 'https://www.youtube.com/c/BahrainDiaries'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Expat in Bahrain - Lifestyle and family adventures for expats'
                'URL' = 'https://www.youtube.com/c/ExpatInBahrain'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Bahrain Foodie - Culinary tours and traditional recipes vlogs'
                'URL' = 'https://www.youtube.com/c/BahrainFoodie'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Manama Moments - Youth trends and entertainment content'
                'URL' = 'https://www.youtube.com/c/ManamaMoments'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Bahrain Vibes - Travel and urban life experiences'
                'URL' = 'https://www.youtube.com/c/BahrainVibes'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Alternative Vloggers' = @(
            @{
                'Title' = 'Bahrain Unfiltered - Authentic street life and social commentary'
                'URL' = 'https://www.youtube.com/c/BahrainUnfiltered'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Desert Wanderer - Offbeat adventures and hidden gems in Bahrain'
                'URL' = 'https://www.youtube.com/c/DesertWanderer'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Bahrain Underground - Youth culture and music scene vlogs'
                'URL' = 'https://www.youtube.com/c/BahrainUnderground'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Expat Tales Bahrain - Diaspora stories and cultural clashes'
                'URL' = 'https://www.youtube.com/c/ExpatTalesBahrain'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Mainstream Podcasters' = @(
            @{
                'Title' = 'Bahrain Confidential - Insider stories on Gulf politics and society'
                'URL' = 'https://podcasts.apple.com/us/podcast/bahrain-confidential/id123456789'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Gulf Matters - Regional diplomacy and Bahrain economic insights'
                'URL' = 'https://www.chathamhouse.org/2023/11/gulf-matters-podcast'
                'icon' = 'https://www.chathamhouse.org/favicon.ico'
            },
            @{
                'Title' = 'The New Arab Podcast - Middle East affairs with Bahrain focus'
                'URL' = 'https://www.newarab.com/podcast'
                'icon' = 'https://www.newarab.com/favicon.ico'
            },
            @{
                'Title' = 'Al Jazeera Inside Story - Bahrain political and social episodes'
                'URL' = 'https://www.aljazeera.com/program/inside-story/'
                'icon' = 'https://www.aljazeera.com/favicon.ico'
            },
            @{
                'Title' = 'Middle East Eye Podcast - Bahrain human rights discussions'
                'URL' = 'https://www.middleeasteye.net/podcast'
                'icon' = 'https://www.middleeasteye.net/favicon.ico'
            }
        )
        'Alternative Podcasters' = @(
            @{
                'Title' = 'Bahrain Uprising - Diaspora reflections on 2011 revolution'
                'URL' = 'https://www.bahrainuprising.net/podcast'
                'icon' = 'https://www.bahrainuprising.net/favicon.ico'
            },
            @{
                'Title' = 'Gulf Youth - Youth activism and social issues in Bahrain'
                'URL' = 'https://gulfyouthpodcast.com/'
                'icon' = 'https://gulfyouthpodcast.com/favicon.ico'
            },
            @{
                'Title' = 'The Resistance - Underground stories of Bahrain opposition'
                'URL' = 'https://www.resistancepod.com/'
                'icon' = 'https://www.resistancepod.com/favicon.ico'
            },
            @{
                'Title' = 'Voices of Bahrain - Personal narratives on rights and culture'
                'URL' = 'https://voicesofbahrain.org/podcast'
                'icon' = 'https://voicesofbahrain.org/favicon.ico'
            }
        )
        'Business' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'Gulf Daily News Economy - Bahrain trade investments and markets'
                    'URL' = 'https://www.newsofbahrain.com/business'
                    'icon' = 'https://www.newsofbahrain.com/favicon.ico'
                },
                @{
                    'Title' = 'The National Business Bahrain - Finance and corporate developments'
                    'URL' = 'https://www.thenationalnews.com/business/bahrain'
                    'icon' = 'https://www.thenationalnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Bahrain Economic Development Board - Official investment opportunities'
                    'URL' = 'https://www.bahrainedb.com/news'
                    'icon' = 'https://www.bahrainedb.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Business Bahrain - Regional economic policy insights'
                    'URL' = 'https://gulfbusiness.com/tag/bahrain-economy'
                    'icon' = 'https://gulfbusiness.com/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'EconomyNext Bahrain - Critical reports on financial challenges'
                    'URL' = 'https://economynext.com/tag/bahrain-economy'
                    'icon' = 'https://economynext.com/favicon.ico'
                },
                @{
                    'Title' = 'Amwaj Media Economy - Independent analysis of Bahrain investments'
                    'URL' = 'https://amwaj.media/en/region/bahrain/economy'
                    'icon' = 'https://amwaj.media/favicon.ico'
                },
                @{
                    'Title' = 'World Bank Bahrain - Development facts and economic reports'
                    'URL' = 'https://www.worldbank.org/en/country/bahrain'
                    'icon' = 'https://www.worldbank.org/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Bahrain Business Vlogs - Startup stories and market tours'
                    'URL' = 'https://www.youtube.com/c/BahrainBusinessVlogs'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Expat Entrepreneur Bahrain - Investment tips and ventures'
                    'URL' = 'https://www.youtube.com/c/ExpatEntrepreneurBahrain'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Manama Markets - Trade and finance daily vlogs'
                    'URL' = 'https://www.youtube.com/c/ManamaMarkets'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Business TV - Corporate insights and success stories'
                    'URL' = 'https://www.youtube.com/c/GulfBusinessTV'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'Bahrain Confidential Business - Economic leaders interviews'
                    'URL' = 'https://podcasts.apple.com/us/podcast/bahrain-confidential/id123456789'
                    'icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Matters Economy - Trade partnerships and investments discussions'
                    'URL' = 'https://www.chathamhouse.org/2023/11/gulf-matters-podcast'
                    'icon' = 'https://www.chathamhouse.org/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Business - Bahrain finance and regional trade episodes'
                    'URL' = 'https://www.aljazeera.com/program/counting-the-cost/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
        }
        'Sports' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'Gulf Daily News Sports - Bahrain football athletics and events'
                    'URL' = 'https://www.newsofbahrain.com/sports'
                    'icon' = 'https://www.newsofbahrain.com/favicon.ico'
                },
                @{
                    'Title' = 'The New Arab Sports - Gulf regional competitions and Bahrain teams'
                    'URL' = 'https://www.newarab.com/sports'
                    'icon' = 'https://www.newarab.com/favicon.ico'
                },
                @{
                    'Title' = 'Bahrain Football Association - Official national team updates'
                    'URL' = 'https://www.bfa.bh/news'
                    'icon' = 'https://www.bfa.bh/favicon.ico'
                },
                @{
                    'Title' = 'ESPN Bahrain - Live scores and athlete features'
                    'URL' = 'https://www.espn.com/soccer/team/_/id/8317/bahrain'
                    'icon' = 'https://www.espn.com/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'Middle East Eye Sports - Independent Bahrain athletics analysis'
                    'URL' = 'https://www.middleeasteye.net/topics/bahrain-sports'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Amwaj Media Sports - Regional competitions and youth development'
                    'URL' = 'https://amwaj.media/en/region/bahrain/sports'
                    'icon' = 'https://amwaj.media/favicon.ico'
                },
                @{
                    'Title' = 'The National Sports Bahrain - Athlete spotlights and critiques'
                    'URL' = 'https://www.thenationalnews.com/sport/bahrain'
                    'icon' = 'https://www.thenationalnews.com/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Bahrain Sports TV - Football matches and fan vlogs'
                    'URL' = 'https://www.youtube.com/c/BahrainSportsTV'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Manama Fitness - Athletics training and events coverage'
                    'URL' = 'https://www.youtube.com/c/ManamaFitness'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Sports Hub - Regional competitions highlights Bahrain'
                    'URL' = 'https://www.youtube.com/c/GulfSportsHub'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Bahrain Athletics - Youth sports and community games'
                    'URL' = 'https://www.youtube.com/c/BahrainAthletics'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'Gulf Sports Podcast - Bahrain teams and regional matches'
                    'URL' = 'https://podcasts.apple.com/us/podcast/gulf-sports-podcast/id123456789'
                    'icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Sports Talk - Athletics and football discussions Bahrain'
                    'URL' = 'https://www.middleeasteye.net/podcast/sports'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Sports - Bahrain events and Gulf competitions'
                    'URL' = 'https://www.aljazeera.com/program/sports'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
        }
        'Culture' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'Gulf Daily News Culture - Bahrain arts festivals and heritage'
                    'URL' = 'https://www.newsofbahrain.com/culture'
                    'icon' = 'https://www.newsofbahrain.com/favicon.ico'
                },
                @{
                    'Title' = 'The New Arab Culture - Bahraini music and societal trends'
                    'URL' = 'https://www.newarab.com/culture'
                    'icon' = 'https://www.newarab.com/favicon.ico'
                },
                @{
                    'Title' = 'Bahrain News Agency Culture - Social customs and events'
                    'URL' = 'https://www.bna.bh/en/culture'
                    'icon' = 'https://www.bna.bh/favicon.ico'
                },
                @{
                    'Title' = 'The National Culture Bahrain - Artistic expressions and traditions'
                    'URL' = 'https://www.thenationalnews.com/arts-culture/bahrain'
                    'icon' = 'https://www.thenationalnews.com/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'Middle East Eye Culture - Bahraini diaspora and identity stories'
                    'URL' = 'https://www.middleeasteye.net/topics/bahrain-culture'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Amwaj Media Culture - Social issues through arts lens Bahrain'
                    'URL' = 'https://amwaj.media/en/region/bahrain/culture'
                    'icon' = 'https://amwaj.media/favicon.ico'
                },
                @{
                    'Title' = 'Bahrain Mirror Culture - Censored artistic expressions and folklore'
                    'URL' = 'https://www.bahrainmirror.com/en/culture'
                    'icon' = 'https://www.bahrainmirror.com/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Bahrain Cultural Vlogs - Festivals and daily rituals immersions'
                    'URL' = 'https://www.youtube.com/c/BahrainCulturalVlogs'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Manama Heritage - Ethnic customs and crafts explorations'
                    'URL' = 'https://www.youtube.com/c/ManamaHeritage'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Folklore - Folklore and community traditions vlogs'
                    'URL' = 'https://www.youtube.com/c/GulfFolklore'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Expat Bahrain Culture - Heritage sites and interactions'
                    'URL' = 'https://www.youtube.com/c/ExpatBahrainCulture'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'Bahrain Confidential Culture - Artistic narratives and societal reflections'
                    'URL' = 'https://podcasts.apple.com/us/podcast/bahrain-confidential/id123456789'
                    'icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Matters Culture - Heritage and modern expressions discussions'
                    'URL' = 'https://www.chathamhouse.org/2023/11/gulf-matters-podcast'
                    'icon' = 'https://www.chathamhouse.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Culture - Folklore and cultural identity episodes'
                    'URL' = 'https://www.middleeasteye.net/podcast/culture'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                }
            )
        }
        'Science and Technology' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'Gulf Daily News Sci-Tech - Bahrain innovation and research news'
                    'URL' = 'https://www.newsofbahrain.com/science-technology'
                    'icon' = 'https://www.newsofbahrain.com/favicon.ico'
                },
                @{
                    'Title' = 'The New Arab Science - Gulf tech breakthroughs and digital advances'
                    'URL' = 'https://www.newarab.com/science-technology'
                    'icon' = 'https://www.newarab.com/favicon.ico'
                },
                @{
                    'Title' = 'Bahrain News Agency Tech - Official policy and developments'
                    'URL' = 'https://www.bna.bh/en/science-technology'
                    'icon' = 'https://www.bna.bh/favicon.ico'
                },
                @{
                    'Title' = 'The National Science Bahrain - Environmental and health research'
                    'URL' = 'https://www.thenationalnews.com/science/bahrain'
                    'icon' = 'https://www.thenationalnews.com/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'Middle East Eye Science - Critical tech policy and AI ethics'
                    'URL' = 'https://www.middleeasteye.net/topics/bahrain-science'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Amwaj Media Tech - Digital trends and innovation critiques'
                    'URL' = 'https://amwaj.media/en/region/bahrain/technology'
                    'icon' = 'https://amwaj.media/favicon.ico'
                },
                @{
                    'Title' = 'Bahrain Mirror Science - Censored research and environmental issues'
                    'URL' = 'https://www.bahrainmirror.com/en/science-technology'
                    'icon' = 'https://www.bahrainmirror.com/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Bahrain Tech Vlogs - Gadgets and innovation demos'
                    'URL' = 'https://www.youtube.com/c/BahrainTechVlogs'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Manama Science - Educational experiments and discoveries'
                    'URL' = 'https://www.youtube.com/c/ManamaScience'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Innovation - Tech startups and future trends'
                    'URL' = 'https://www.youtube.com/c/GulfInnovation'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Expat Bahrain Tech - Digital life and apps in Bahrain'
                    'URL' = 'https://www.youtube.com/c/ExpatBahrainTech'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'Bahrain Confidential Tech - Innovation and digital economy episodes'
                    'URL' = 'https://podcasts.apple.com/us/podcast/bahrain-confidential/id123456789'
                    'icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Matters Science - Research and tech policy discussions'
                    'URL' = 'https://www.chathamhouse.org/2023/11/gulf-matters-podcast'
                    'icon' = 'https://www.chathamhouse.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Tech - AI and cybersecurity in Gulf'
                    'URL' = 'https://www.middleeasteye.net/podcast/technology'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                }
            )
        }
        'Military' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'Bahrain Defense Force - Official armed forces news and operations'
                    'URL' = 'https://www.bdf.mil.bh/news'
                    'icon' = 'https://www.bdf.mil.bh/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Daily News Defense - Regional military partnerships coverage'
                    'URL' = 'https://www.newsofbahrain.com/defense'
                    'icon' = 'https://www.newsofbahrain.com/favicon.ico'
                },
                @{
                    'Title' = 'The New Arab Military - Bahrain forces and Gulf security'
                    'URL' = 'https://www.newarab.com/military'
                    'icon' = 'https://www.newarab.com/favicon.ico'
                },
                @{
                    'Title' = 'Defense News Bahrain - Arms deals and strategic developments'
                    'URL' = 'https://www.defensenews.com/global/mideast-africa/bahrain'
                    'icon' = 'https://www.defensenews.com/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'Middle East Eye Military - Bahrain torture and repression exposes'
                    'URL' = 'https://www.middleeasteye.net/topics/bahrain-military'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Amwaj Media Defense - Geopolitical strategy and alliances critiques'
                    'URL' = 'https://amwaj.media/en/region/bahrain/defense'
                    'icon' = 'https://amwaj.media/favicon.ico'
                },
                @{
                    'Title' = 'Bahrain Mirror Military - Security forces and human rights abuses'
                    'URL' = 'https://www.bahrainmirror.com/en/military'
                    'icon' = 'https://www.bahrainmirror.com/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Bahrain Military Vlogs - Parades and training footage'
                    'URL' = 'https://www.youtube.com/c/BahrainMilitaryVlogs'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Defense Hub - Arms shows and strategic vlogs'
                    'URL' = 'https://www.youtube.com/c/GulfDefenseHub'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Manama Security - Border patrols and exercises coverage'
                    'URL' = 'https://www.youtube.com/c/ManamaSecurity'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Expat Bahrain Military - Partnership training insights'
                    'URL' = 'https://www.youtube.com/c/ExpatBahrainMilitary'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'Bahrain Confidential Military - Forces and regional strategy episodes'
                    'URL' = 'https://podcasts.apple.com/us/podcast/bahrain-confidential/id123456789'
                    'icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Matters Defense - Security partnerships and threats discussions'
                    'URL' = 'https://www.chathamhouse.org/2023/11/gulf-matters-podcast'
                    'icon' = 'https://www.chathamhouse.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Military - Bahrain operations and human rights'
                    'URL' = 'https://www.middleeasteye.net/podcast/military'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                }
            )
        }
    }
    'Cyprus' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Cyprus Mail'
                'URL' = 'https://cyprus-mail.com/'
                'Icon' = 'https://cyprus-mail.com/favicon.ico'
            },
            @{
                'Title' = 'in-cyprus.com'
                'URL' = 'https://in-cyprus.philenews.com/'
                'Icon' = 'https://in-cyprus.philenews.com/favicon.ico'
            },
            @{
                'Title' = 'News in Cyprus'
                'URL' = 'https://www.newsincyprus.com/'
                'Icon' = 'https://www.newsincyprus.com/favicon.ico'
            },
            @{
                'Title' = 'Phileleftheros'
                'URL' = 'https://www.philenews.com/'
                'Icon' = 'https://www.philenews.com/favicon.ico'
            },
            @{
                'Title' = 'Politis'
                'URL' = 'https://politis.com.cy/'
                'Icon' = 'https://politis.com.cy/favicon.ico'
            },
            @{
                'Title' = 'Cyprus News'
                'URL' = 'https://www.cyprus-news.com/'
                'Icon' = 'https://www.cyprus-news.com/favicon.ico'
            },
            @{
                'Title' = 'KYPE'
                'URL' = 'https://www.cna.org.cy/en?lang=EN'
                'Icon' = 'https://www.cna.org.cy/favicon.ico'
            }
        )
        'Alternative News Sites' = @(
            @{
                'Title' = 'Sigma Live'
                'URL' = 'https://www.sigmalive.com/'
                'Icon' = 'https://www.sigmalive.com/favicon.ico'
            },
            @{
                'Title' = 'Alpha News'
                'URL' = 'https://www.alphanews.live/'
                'Icon' = 'https://www.alphanews.live/favicon.ico'
            },
            @{
                'Title' = 'Offsite News'
                'URL' = 'https://offsite.news/'
                'Icon' = 'https://offsite.news/favicon.ico'
            },
            @{
                'Title' = 'Cyprus Barometer'
                'URL' = 'https://cyprusbarometer.com/'
                'Icon' = 'https://cyprusbarometer.com/favicon.ico'
            },
            @{
                'Title' = 'JAMnews Cyprus'
                'URL' = 'https://jam-news.net/tag/cyprus/'
                'Icon' = 'https://jam-news.net/favicon.ico'
            }
        )
        'Counter Culture News Sites' = @(
            @{
                'Title' = 'The Independent Cyprus'
                'URL' = 'https://www.independent.co.uk/topic/cyprus'
                'Icon' = 'https://www.independent.co.uk/favicon.ico'
            },
            @{
                'Title' = 'Euractiv Cyprus'
                'URL' = 'https://www.euractiv.com/tag/cyprus/'
                'Icon' = 'https://www.euractiv.com/favicon.ico'
            },
            @{
                'Title' = 'OC Media Cyprus'
                'URL' = 'https://oc-media.org/tag/cyprus/'
                'Icon' = 'https://oc-media.org/favicon.ico'
            }
        )
        'Mainstream Vloggers' = @(
            @{
                'Title' = 'Fidias'
                'URL' = 'https://www.youtube.com/c/Fidias'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Cyprus Insight'
                'URL' = 'https://www.youtube.com/c/CYPRUSINSIGHT'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Visit Cyprus'
                'URL' = 'https://www.youtube.com/visitcyprus'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Sigma Live'
                'URL' = 'https://www.youtube.com/c/SigmaLive'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Alpha News Live'
                'URL' = 'https://www.youtube.com/c/AlphaNewsLive'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Alternative Vloggers' = @(
            @{
                'Title' = 'Nicosia Uncut'
                'URL' = 'https://www.youtube.com/c/NicosiaUncut'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'The Greek Current'
                'URL' = 'https://www.youtube.com/c/TheGreekCurrent'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Cyprus Community'
                'URL' = 'https://www.youtube.com/c/CyprusCommunity'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hack Cyprus'
                'URL' = 'https://www.youtube.com/c/HackCyprus'
                'Icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Mainstream Podcasters' = @(
            @{
                'Title' = 'Cyprus News Digest'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-cyprus-news-digest/id846730089'
                'Icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Nicosia Uncut'
                'URL' = 'https://example.com/placeholder'
                'Icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Cyprus Beat'
                'URL' = 'https://example.com/placeholder'
                'Icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'The Greek Current'
                'URL' = 'https://example.com/placeholder'
                'Icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Cyprus Community'
                'URL' = 'https://podcasts.apple.com/us/podcast/cyprus-community/id1463016292'
                'Icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
        'Alternative Podcasters' = @(
            @{
                'Title' = 'The History of Cyprus Podcast'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-history-of-cyprus-podcast/id1627537682'
                'Icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Mamma Mu Podcast'
                'URL' = 'https://example.com/placeholder'
                'Icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Bailout Cyprus Podcast'
                'URL' = 'https://example.com/placeholder'
                'Icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Hack Cyprus Podcast'
                'URL' = 'https://example.com/placeholder'
                'Icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
        'Business' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'CBN Cyprus'
                    'URL' = 'https://www.cbn.com.cy/'
                    'Icon' = 'https://www.cbn.com.cy/favicon.ico'
                },
                @{
                    'Title' = 'InBusinessNews'
                    'URL' = 'https://inbusinessnews.reporter.com.cy/'
                    'Icon' = 'https://inbusinessnews.reporter.com.cy/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Mail Business'
                    'URL' = 'https://cyprus-mail.com/business/'
                    'Icon' = 'https://cyprus-mail.com/favicon.ico'
                },
                @{
                    'Title' = 'Financial Mirror'
                    'URL' = 'https://www.financialmirror.com/'
                    'Icon' = 'https://www.financialmirror.com/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'in-cyprus Business'
                    'URL' = 'https://in-cyprus.philenews.com/category/business/'
                    'Icon' = 'https://in-cyprus.philenews.com/favicon.ico'
                },
                @{
                    'Title' = 'Zawya Cyprus'
                    'URL' = 'https://www.zawya.com/en/market-research/insights/cyprus'
                    'Icon' = 'https://www.zawya.com/favicon.ico'
                },
                @{
                    'Title' = 'Reuters Cyprus Business'
                    'URL' = 'https://www.reuters.com/world/middle-east/cyprus-business/'
                    'Icon' = 'https://www.reuters.com/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Cyprus Business Review'
                    'URL' = 'https://www.youtube.com/c/CyprusBusinessReview'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Fidias (Economy)'
                    'URL' = 'https://www.youtube.com/c/Fidias'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'The Greek Current Business'
                    'URL' = 'https://www.youtube.com/c/TheGreekCurrent'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Hack Cyprus (Tech Business)'
                    'URL' = 'https://www.youtube.com/c/HackCyprus'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'Made in Cyprus'
                    'URL' = 'https://podcasts.apple.com/gb/podcast/made-in-cyprus-big-biz-stories-from-a-tiny-island/id1736452132'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Bailout Cyprus Podcast'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Community Business'
                    'URL' = 'https://podcasts.apple.com/us/podcast/cyprus-community/id1463016292'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                }
            )
        }
        'Sports' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'Match.cy'
                    'URL' = 'https://match.cy/'
                    'Icon' = 'https://match.cy/favicon.ico'
                },
                @{
                    'Title' = '24Sports'
                    'URL' = 'https://www.24sports.com.cy/gr/'
                    'Icon' = 'https://www.24sports.com.cy/favicon.ico'
                },
                @{
                    'Title' = 'Goal News Cy'
                    'URL' = 'https://goal.philenews.com/'
                    'Icon' = 'https://goal.philenews.com/favicon.ico'
                },
                @{
                    'Title' = 'Balla.com.cy'
                    'URL' = 'https://balla.com.cy/'
                    'Icon' = 'https://balla.com.cy/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'Omada Cyprus'
                    'URL' = 'https://omada.reporter.com.cy/'
                    'Icon' = 'https://omada.reporter.com.cy/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Sports News'
                    'URL' = 'https://www.cyprussportsnews.com/'
                    'Icon' = 'https://www.cyprussportsnews.com/favicon.ico'
                },
                @{
                    'Title' = 'ESPN Cyprus'
                    'URL' = 'https://www.espn.com/soccer/league/_/name/cyprus-1'
                    'Icon' = 'https://www.espn.com/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Cyprus Sports TV'
                    'URL' = 'https://www.youtube.com/c/CyprusSportsTV'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Fidias Sports'
                    'URL' = 'https://www.youtube.com/c/Fidias'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Visit Cyprus Sports'
                    'URL' = 'https://www.youtube.com/visitcyprus'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Sigma Live Sports'
                    'URL' = 'https://www.youtube.com/c/SigmaLive'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'Cyprus Sports Podcast'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Nicosia Uncut Sports'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Beat Sports'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                }
            )
        }
        'Culture' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'Cyprus Mail Culture'
                    'URL' = 'https://cyprus-mail.com/lifestyle/'
                    'Icon' = 'https://cyprus-mail.com/favicon.ico'
                },
                @{
                    'Title' = 'in-cyprus Culture'
                    'URL' = 'https://in-cyprus.philenews.com/category/culture/'
                    'Icon' = 'https://in-cyprus.philenews.com/favicon.ico'
                },
                @{
                    'Title' = 'Phileleftheros Culture'
                    'URL' = 'https://www.philenews.com/category/culture/'
                    'Icon' = 'https://www.philenews.com/favicon.ico'
                },
                @{
                    'Title' = 'Politis Culture'
                    'URL' = 'https://politis.com.cy/category/culture/'
                    'Icon' = 'https://politis.com.cy/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'BBC Culture Cyprus'
                    'URL' = 'https://www.bbc.com/culture/search?q=cyprus'
                    'Icon' = 'https://www.bbc.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Cyprus Culture'
                    'URL' = 'https://www.aljazeera.com/tag/cyprus-culture/'
                    'Icon' = 'https://www.aljazeera.com/favicon.ico'
                },
                @{
                    'Title' = 'The Guardian Cyprus Culture'
                    'URL' = 'https://www.theguardian.com/world/cyprus'
                    'Icon' = 'https://www.theguardian.com/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Cyprus Insight Culture'
                    'URL' = 'https://www.youtube.com/c/CYPRUSINSIGHT'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Visit Cyprus Culture'
                    'URL' = 'https://www.youtube.com/visitcyprus'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Fidias Cultural'
                    'URL' = 'https://www.youtube.com/c/Fidias'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'The Greek Current Culture'
                    'URL' = 'https://www.youtube.com/c/TheGreekCurrent'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'The History of Cyprus Podcast'
                    'URL' = 'https://podcasts.apple.com/us/podcast/the-history-of-cyprus-podcast/id1627537682'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Mamma Mu Podcast'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'From Root To Vine'
                    'URL' = 'https://podcasts.apple.com/at/podcast/from-root-to-vine/id1550971903?l=en'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                }
            )
        }
        'Science and Technology' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'The Cyprus Institute'
                    'URL' = 'https://www.cyi.ac.cy/'
                    'Icon' = 'https://www.cyi.ac.cy/favicon.ico'
                },
                @{
                    'Title' = 'Technology Report Cyprus'
                    'URL' = 'https://www.technologyreportcyprus.com/'
                    'Icon' = 'https://www.technologyreportcyprus.com/favicon.ico'
                },
                @{
                    'Title' = 'in-cyprus Tech'
                    'URL' = 'https://in-cyprus.philenews.com/category/technology/'
                    'Icon' = 'https://in-cyprus.philenews.com/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Mail Tech'
                    'URL' = 'https://cyprus-mail.com/technology/'
                    'Icon' = 'https://cyprus-mail.com/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'MIT Technology Review Cyprus'
                    'URL' = 'https://www.technologyreview.com/topic/cyprus/'
                    'Icon' = 'https://www.technologyreview.com/favicon.ico'
                },
                @{
                    'Title' = 'Phys.org Cyprus'
                    'URL' = 'https://phys.org/tags/cyprus/'
                    'Icon' = 'https://phys.org/favicon.ico'
                },
                @{
                    'Title' = 'ScienceDaily Cyprus'
                    'URL' = 'https://www.sciencedaily.com/news/top/technology/cyprus/'
                    'Icon' = 'https://www.sciencedaily.com/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Hack Cyprus'
                    'URL' = 'https://www.youtube.com/c/HackCyprus'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Insight Tech'
                    'URL' = 'https://www.youtube.com/c/CYPRUSINSIGHT'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Fidias Tech'
                    'URL' = 'https://www.youtube.com/c/Fidias'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'The Greek Current Tech'
                    'URL' = 'https://www.youtube.com/c/TheGreekCurrent'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'Hack Cyprus Podcast'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Beat Tech'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Nicosia Uncut Innovation'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                }
            )
        }
        'Politics' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'Cyprus Mail Politics'
                    'URL' = 'https://cyprus-mail.com/politics/'
                    'Icon' = 'https://cyprus-mail.com/favicon.ico'
                },
                @{
                    'Title' = 'in-cyprus Politics'
                    'URL' = 'https://in-cyprus.philenews.com/category/politics/'
                    'Icon' = 'https://in-cyprus.philenews.com/favicon.ico'
                },
                @{
                    'Title' = 'Independent Cyprus Politics'
                    'URL' = 'https://www.independent.co.uk/topic/cyprus'
                    'Icon' = 'https://www.independent.co.uk/favicon.ico'
                },
                @{
                    'Title' = 'Euronews Cyprus Politics'
                    'URL' = 'https://www.euronews.com/tag/cyprus-politics'
                    'Icon' = 'https://www.euronews.com/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'BBC News Cyprus Politics'
                    'URL' = 'https://www.bbc.com/news/topics/c8nq32jw5r5t'
                    'Icon' = 'https://www.bbc.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Cyprus Politics'
                    'URL' = 'https://www.aljazeera.com/where/cyprus/politics'
                    'Icon' = 'https://www.aljazeera.com/favicon.ico'
                },
                @{
                    'Title' = 'Cypriot Politics NewsNow'
                    'URL' = 'https://www.newsnow.com/ng/World/Europe/Southern%2BEurope/Cyprus/Politics'
                    'Icon' = 'https://www.newsnow.co.uk/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Fidias Politics'
                    'URL' = 'https://www.youtube.com/c/Fidias'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Nicosia Uncut'
                    'URL' = 'https://www.youtube.com/c/NicosiaUncut'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Insight Politics'
                    'URL' = 'https://www.youtube.com/c/CYPRUSINSIGHT'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'The Greek Current Politics'
                    'URL' = 'https://www.youtube.com/c/TheGreekCurrent'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'Nicosia Uncut'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Beat Politics'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'The Greek Current Politics'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                }
            )
        }
        'Fashion' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'Cyprus Fashion'
                    'URL' = 'https://www.cyprusfashion.com/'
                    'Icon' = 'https://www.cyprusfashion.com/favicon.ico'
                },
                @{
                    'Title' = 'Like.com.cy'
                    'URL' = 'https://like.philenews.com/'
                    'Icon' = 'https://like.philenews.com/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Mail Lifestyle'
                    'URL' = 'https://cyprus-mail.com/lifestyle/'
                    'Icon' = 'https://cyprus-mail.com/favicon.ico'
                },
                @{
                    'Title' = 'in-cyprus Lifestyle'
                    'URL' = 'https://in-cyprus.philenews.com/category/lifestyle/'
                    'Icon' = 'https://in-cyprus.philenews.com/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'Vogue Cyprus'
                    'URL' = 'https://www.vogue.com/tag/cyprus'
                    'Icon' = 'https://www.vogue.com/favicon.ico'
                },
                @{
                    'Title' = 'Business of Fashion Cyprus'
                    'URL' = 'https://www.businessoffashion.com/topics/asia/cyprus'
                    'Icon' = 'https://www.businessoffashion.com/favicon.ico'
                },
                @{
                    'Title' = 'Independent Fashion Cyprus'
                    'URL' = 'https://www.independent.co.uk/topic/cyprus-fashion'
                    'Icon' = 'https://www.independent.co.uk/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Cyprus Fashion TV'
                    'URL' = 'https://www.youtube.com/c/CyprusFashionTV'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Visit Cyprus Fashion'
                    'URL' = 'https://www.youtube.com/visitcyprus'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Fidias Style'
                    'URL' = 'https://www.youtube.com/c/Fidias'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'The Greek Current Fashion'
                    'URL' = 'https://www.youtube.com/c/TheGreekCurrent'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'From Root To Vine'
                    'URL' = 'https://podcasts.apple.com/at/podcast/from-root-to-vine/id1550971903?l=en'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Mamma Mu Lifestyle'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Community Fashion'
                    'URL' = 'https://podcasts.apple.com/us/podcast/cyprus-community/id1463016292'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                }
            )
        }
        'Military' = @{
            'Mainstream News Sites' = @(
                @{
                    'Title' = 'Cyprus Mail Defense'
                    'URL' = 'https://cyprus-mail.com/defence/'
                    'Icon' = 'https://cyprus-mail.com/favicon.ico'
                },
                @{
                    'Title' = 'in-cyprus Military'
                    'URL' = 'https://in-cyprus.philenews.com/tag/military/'
                    'Icon' = 'https://in-cyprus.philenews.com/favicon.ico'
                },
                @{
                    'Title' = 'British Army Cyprus'
                    'URL' = 'https://www.army.mod.uk/learn-and-explore/global-operations/europe/cyprus/'
                    'Icon' = 'https://www.army.mod.uk/favicon.ico'
                },
                @{
                    'Title' = 'BFBS Forces News Cyprus'
                    'URL' = 'https://www.forcesnews.com/operations/cyprus'
                    'Icon' = 'https://www.forcesnews.com/favicon.ico'
                }
            )
            'Counter News Sites' = @(
                @{
                    'Title' = 'The Defense Post Cyprus'
                    'URL' = 'https://thedefensepost.com/tag/cyprus/'
                    'Icon' = 'https://thedefensepost.com/favicon.ico'
                },
                @{
                    'Title' = 'NATO Cyprus'
                    'URL' = 'https://www.nato.int/cps/en/natohq/topics_81815.htm'
                    'Icon' = 'https://www.nato.int/favicon.ico'
                },
                @{
                    'Title' = 'Janes Defence Cyprus'
                    'URL' = 'https://www.janes.com/defence-news/cyprus'
                    'Icon' = 'https://www.janes.com/favicon.ico'
                }
            )
            'Vloggers' = @(
                @{
                    'Title' = 'Cyprus Insight Military'
                    'URL' = 'https://www.youtube.com/c/CYPRUSINSIGHT'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Fidias Defense'
                    'URL' = 'https://www.youtube.com/c/Fidias'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'Nicosia Uncut Security'
                    'URL' = 'https://www.youtube.com/c/NicosiaUncut'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'The Greek Current Military'
                    'URL' = 'https://www.youtube.com/c/TheGreekCurrent'
                    'Icon' = 'https://www.youtube.com/favicon.ico'
                }
            )
            'Podcasts' = @(
                @{
                    'Title' = 'The History of Cyprus Podcast Military'
                    'URL' = 'https://podcasts.apple.com/us/podcast/the-history-of-cyprus-podcast/id1627537682'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Nicosia Uncut Defense'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                },
                @{
                    'Title' = 'Cyprus Beat Security'
                    'URL' = 'https://example.com/placeholder'
                    'Icon' = 'https://podcasts.apple.com/favicon.ico'
                }
            )
        }
    }
'egypt' = @{
    'Mainstream News Sites' = @(
        @{
            'Title' = 'Daily News Egypt - Independent English daily newspaper in Egypt'
            'URL' = 'https://www.dailynewsegypt.com/'
            'icon' = 'https://www.dailynewsegypt.com/favicon.ico'
        },
        @{
            'Title' = 'Ahram Online - News business culture sports from Egypt'
            'URL' = 'https://english.ahram.org.eg/'
            'icon' = 'https://english.ahram.org.eg/favicon.ico'
        },
        @{
            'Title' = 'Egypt Today - Latest news updates on Egyptian affairs'
            'URL' = 'https://www.egypttoday.com/'
            'icon' = 'https://www.egypttoday.com/favicon.ico'
        },
        @{
            'Title' = 'Al-Masry Al-Youm - Leading Egyptian newspaper in English'
            'URL' = 'https://www.almasryalyoum.com/english'
            'icon' = 'https://www.almasryalyoum.com/favicon.ico'
        },
        @{
            'Title' = 'Masrawy - Comprehensive Egyptian news portal'
            'URL' = 'https://www.masrawy.com/english'
            'icon' = 'https://www.masrawy.com/favicon.ico'
        },
        @{
            'Title' = 'Youm7 - Daily Egyptian news and updates'
            'URL' = 'https://www.youm7.com/en'
            'icon' = 'https://www.youm7.com/favicon.ico'
        },
        @{
            'Title' = 'El Watan News - Political social news from Egypt'
            'URL' = 'https://www.elwatannews.com/en'
            'icon' = 'https://www.elwatannews.com/favicon.ico'
        }
    )
    'Alternative News Sites' = @(
        @{
            'Title' = 'Mada Masr - Independent Egyptian journalism platform'
            'URL' = 'https://www.madamasr.com/en'
            'icon' = 'https://www.madamasr.com/favicon.ico'
        },
        @{
            'Title' = 'Egypt Independent - Non-profit news organization Egypt'
            'URL' = 'https://egyptindependent.com/'
            'icon' = 'https://egyptindependent.com/favicon.ico'
        },
        @{
            'Title' = 'Egyptian Streets - Lifestyle culture news from Egypt'
            'URL' = 'https://egyptianstreets.com/'
            'icon' = 'https://egyptianstreets.com/favicon.ico'
        },
        @{
            'Title' = 'Vetogate - Independent news portal for Egypt'
            'URL' = 'https://www.vetogate.com/en'
            'icon' = 'https://www.vetogate.com/favicon.ico'
        },
        @{
            'Title' = 'Dostor - Daily news and analysis from Egypt'
            'URL' = 'https://www.dostor.org/en'
            'icon' = 'https://www.dostor.org/favicon.ico'
        }
    )
    'Counter Culture News Sites' = @(
        @{
            'Title' = 'Mada Masr - Independent journalism challenging official narratives'
            'URL' = 'https://www.madamasr.com/en'
            'icon' = 'https://www.madamasr.com/favicon.ico'
        },
        @{
            'Title' = 'el Manasa - Independent cultural magazine in Egypt'
            'URL' = 'https://elmanasa.com/en'
            'icon' = 'https://elmanasa.com/favicon.ico'
        },
        @{
            'Title' = 'Cairo Observer - Urban political commentary from Egypt'
            'URL' = 'https://cairoobserver.com/'
            'icon' = 'https://cairoobserver.com/favicon.ico'
        }
    )
    'Mainstream Vloggers' = @(
        @{
            'Title' = 'Hassan Ramzy - Comedy and daily life vlogs in Egypt'
            'URL' = 'https://www.youtube.com/c/HassanRamzy'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Baher Mokhtar - Lifestyle and entertainment content Egypt'
            'URL' = 'https://www.youtube.com/c/BaherMokhtar'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Youssef Shaaban - Music and trendy youth vlogs Egypt'
            'URL' = 'https://www.youtube.com/c/YoussefShaaban'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Sameh Sanad - Comedy sketches and family entertainment Egypt'
            'URL' = 'https://www.youtube.com/c/SamehSanad'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Mena Mourad - Beauty fashion and daily routines in Egypt'
            'URL' = 'https://www.youtube.com/c/MenaMourad'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Alternative Vloggers' = @(
        @{
            'Title' = 'Zedd Reviews - Tech and culture reviews from Egypt'
            'URL' = 'https://www.youtube.com/c/ZeddReviews'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Mazen Yassen - Satirical commentary on Egyptian society'
            'URL' = 'https://www.youtube.com/c/MazenYassen'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Farida Walid - Social issues and personal vlogs Egypt'
            'URL' = 'https://www.youtube.com/c/FaridaWalid'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Elda7ee7 - Educational and fun content creator Egypt'
            'URL' = 'https://www.youtube.com/c/Elda7ee7'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Mainstream Podcasters' = @(
        @{
            'Title' = 'Tahrir Podcast - Political discussions from Cairo Egypt'
            'URL' = 'https://podcasts.apple.com/us/podcast/tahrir-podcast/id1554680414'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'The Curation by Nour Hassan - Lifestyle culture in Egypt'
            'URL' = 'https://podcasts.apple.com/us/podcast/the-curation-by-nour-hassan/id123456789'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'The Lovin Cairo Show - Entertainment and trends Egypt'
            'URL' = 'https://podcasts.apple.com/us/podcast/the-lovin-cairo-show/id123456789'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'Rocky Jordan - Detective stories set in Egypt'
            'URL' = 'https://podcasts.apple.com/us/podcast/rocky-jordan/id123456789'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'Egyptian Streets Podcast - Culture and society conversations'
            'URL' = 'https://podcasts.apple.com/us/podcast/egyptian-streets-podcast/id123456789'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        }
    )
    'Alternative Podcasters' = @(
        @{
            'Title' = 'Bayneh W Baynak - Social issues and feminist perspectives Egypt'
            'URL' = 'https://podcasts.apple.com/us/podcast/bayneh-w-baynak/id123456789'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'Dukkan Show - Comedy and cultural satire Egypt'
            'URL' = 'https://podcasts.apple.com/us/podcast/dukkan-show/id123456789'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'Arab-American Psycho - Identity and diaspora stories Egypt'
            'URL' = 'https://podcasts.apple.com/us/podcast/arab-american-psycho/id123456789'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'Radical Contemporary - Youth and activism in Egypt'
            'URL' = 'https://podcasts.apple.com/us/podcast/radical-contemporary/id123456789'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        }
    )
    'Business' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Business Today Egypt - Egyptian English business magazine insights'
                'URL' = 'https://www.businesstodayegypt.com/'
                'icon' = 'https://www.businesstodayegypt.com/favicon.ico'
            },
            @{
                'Title' = 'Daily News Egypt Business - Finance investments economy news Egypt'
                'URL' = 'https://www.dailynewsegypt.com/category/business'
                'icon' = 'https://www.dailynewsegypt.com/favicon.ico'
            },
            @{
                'Title' = 'Egypt Today Business - Economic updates and market analysis'
                'URL' = 'https://www.egypttoday.com/Section/Business/3'
                'icon' = 'https://www.egypttoday.com/favicon.ico'
            },
            @{
                'Title' = 'Ahram Online Business - Market trends and corporate developments'
                'URL' = 'https://english.ahram.org.eg/Business'
                'icon' = 'https://english.ahram.org.eg/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'AGBI Egypt - Arabian Gulf Business Insight on economy'
                'URL' = 'https://www.agbi.com/middle-east/egypt/'
                'icon' = 'https://www.agbi.com/favicon.ico'
            },
            @{
                'Title' = 'Enterprise News Egypt - Independent business finance regulation news'
                'URL' = 'https://enterprise.news/'
                'icon' = 'https://enterprise.news/favicon.ico'
            },
            @{
                'Title' = 'World Bank Egypt - Development economic challenges reports'
                'URL' = 'https://www.worldbank.org/en/country/egypt'
                'icon' = 'https://www.worldbank.org/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'YPM Vlogs - Bargaining shopping business in Egypt markets'
                'URL' = 'https://www.youtube.com/c/YPMVlogs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Egypt Small Businesses - Thriving entrepreneurs stories Egypt'
                'URL' = 'https://www.youtube.com/watch?v=a-beNxOOYRs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Shocked in Cairo Rich Egypt - Business worth it vlogs'
                'URL' = 'https://www.youtube.com/watch?v=ASBsO9I-CIE'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Egypt Business Vlogger - Startup success and tips Egypt'
                'URL' = 'https://www.youtube.com/c/EgyptBusinessVlogger'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Enterprise Podcast - CEOs founders building Egypt businesses'
                'URL' = 'https://enterprise.press/podcast/'
                'icon' = 'https://enterprise.press/favicon.ico'
            },
            @{
                'Title' = '7areef FinTech Podcast - FinTech entrepreneurship Egypt'
                'URL' = 'https://fintech-egypt.com/7areef-FinTech-Podcast/'
                'icon' = 'https://fintech-egypt.com/favicon.ico'
            },
            @{
                'Title' = 'Business Monthly Magazine - AmCham Egypt business discussions'
                'URL' = 'https://www.amcham.org.eg/publications/business-monthly'
                'icon' = 'https://www.amcham.org.eg/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'KingFut - Egyptian Football News opinion scores updates'
                'URL' = 'https://www.kingfut.com/'
                'icon' = 'https://www.kingfut.com/favicon.ico'
            },
            @{
                'Title' = 'NileSports - Egyptian African global football news'
                'URL' = 'https://nilesports.com/'
                'icon' = 'https://nilesports.com/favicon.ico'
            },
            @{
                'Title' = 'Egyptian Gazette Sports - Latest sports news Egypt worldwide'
                'URL' = 'https://egyptian-gazette.com/sports/'
                'icon' = 'https://egyptian-gazette.com/favicon.ico'
            },
            @{
                'Title' = 'Daily News Egypt Sports - Results fixtures blogs Egypt'
                'URL' = 'https://www.dailynewsegypt.com/category/sports/'
                'icon' = 'https://www.dailynewsegypt.com/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'ON Time Sports - Egyptian sports channel news analysis'
                'URL' = 'https://www.youtube.com/c/ONTIME_SPORTS'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Sports United - Independent Egyptian athletics commentary'
                'URL' = 'https://www.youtube.com/c/SportsUnited'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Time Sports - Alternative sports match critiques Egypt'
                'URL' = 'https://www.youtube.com/c/TimeSports'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'ON Time Sports - Egyptian sports highlights and reactions'
                'URL' = 'https://www.youtube.com/c/ONTIME_SPORTS'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'CzarJulius - Sports fan reactions and game vlogs Egypt'
                'URL' = 'https://www.youtube.com/c/CzarJulius'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Eric Menk - Basketball PBA insights Egypt'
                'URL' = 'https://www.youtube.com/@TheEMenk30'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Martin Nievera - Game On sports talk Egypt'
                'URL' = 'https://www.youtube.com/@martinnievera'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Egyptian Gooner Podcast - Arsenal fans and Egyptian football'
                'URL' = 'https://www.youtube.com/c/EgyptianGoonerPodcast'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = '433 The Home of Football - Egyptian player stories and matches'
                'URL' = 'https://open.spotify.com/show/65CBWl27S7HCQ7Iy24btXz'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Mo Salah Egyptian King - Football icon biography podcast'
                'URL' = 'https://www.bbc.co.uk/programmes/p0lvrlcg'
                'icon' = 'https://www.bbc.co.uk/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Egyptian Streets - Culture lifestyle news from Egypt'
                'URL' = 'https://egyptianstreets.com/'
                'icon' = 'https://egyptianstreets.com/favicon.ico'
            },
            @{
                'Title' = 'Ahram Online Culture - Arts heritage and festivals Egypt'
                'URL' = 'https://english.ahram.org.eg/Category/6/Arts-Culture.aspx'
                'icon' = 'https://english.ahram.org.eg/favicon.ico'
            },
            @{
                'Title' = 'Egypt Today Arts Culture - Entertainment and traditions news'
                'URL' = 'https://www.egypttoday.com/Section/Arts-Culture/4'
                'icon' = 'https://www.egypttoday.com/favicon.ico'
            },
            @{
                'Title' = 'Daily News Egypt Culture - Heritage and social customs Egypt'
                'URL' = 'https://www.dailynewsegypt.com/category/culture/'
                'icon' = 'https://www.dailynewsegypt.com/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'Ancient Egypt Magazine - Egyptology and cultural history'
                'URL' = 'https://ancientegyptmagazine.com/'
                'icon' = 'https://ancientegyptmagazine.com/favicon.ico'
            },
            @{
                'Title' = 'Le Monde Egypt - International culture and opinion Egypt'
                'URL' = 'https://www.lemonde.fr/en/egypt/'
                'icon' = 'https://www.lemonde.fr/favicon.ico'
            },
            @{
                'Title' = 'Experience Egypt - Cultural events and heritage preservation'
                'URL' = 'https://www.experienceegypt.eg/'
                'icon' = 'https://www.experienceegypt.eg/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'Gventures - Egyptian culture holidays markets mosques vlogs'
                'URL' = 'https://www.youtube.com/@Gventures'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'The Egypt Travel Channel - Culture series history and lifestyle'
                'URL' = 'https://www.youtube.com/@TheEgyptTravelChannel'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Behind the Pyramids - Ancient modern Egyptian culture vlogs'
                'URL' = 'https://www.youtube.com/watch?v=We_7xTKHAd8'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Egypt Vlogs - Travel cultural heritage and festivals Egypt'
                'URL' = 'https://www.youtube.com/playlist?list=PL5UPPvpb6Q8d7-K2cWPXQl8aAKBAo7tVL'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The History of Egypt - Ancient Egyptian culture and society'
                'URL' = 'https://www.egyptianhistorypodcast.com/'
                'icon' = 'https://www.egyptianhistorypodcast.com/favicon.ico'
            },
            @{
                'Title' = 'Talk Like An Egyptian - Egyptology and cultural history discussions'
                'URL' = 'https://iszi.com/podcasts'
                'icon' = 'https://iszi.com/favicon.ico'
            },
            @{
                'Title' = 'Afterlives of Ancient Egypt - Cultural legacy and modern reflections'
                'URL' = 'http://karacooney.squarespace.com/podcast-afterlives'
                'icon' = 'http://karacooney.squarespace.com/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Phys.org Egypt - Latest science news advancements breakthroughs'
                'URL' = 'https://phys.org/tags/egypt/'
                'icon' = 'https://phys.org/favicon.ico'
            },
            @{
                'Title' = 'Daily News Egypt Science - Technology and innovation news Egypt'
                'URL' = 'https://www.dailynewsegypt.com/category/science/'
                'icon' = 'https://www.dailynewsegypt.com/favicon.ico'
            },
            @{
                'Title' = 'Egyptian Gazette Technology - Gadgets startups AI breakthroughs Egypt'
                'URL' = 'https://egyptian-gazette.com/technology/'
                'icon' = 'https://egyptian-gazette.com/favicon.ico'
            },
            @{
                'Title' = 'CIO Africa Egypt - Tech industry trends developments Egypt'
                'URL' = 'https://cioafrica.co/category/egypt/'
                'icon' = 'https://cioafrica.co/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'Asian Scientist Egypt - Women science challenges and stories'
                'URL' = 'https://www.asianscientist.com/tag/egypt/'
                'icon' = 'https://www.asianscientist.com/favicon.ico'
            },
            @{
                'Title' = 'RevoScience - Sustainable energy renewable tech Egypt'
                'URL' = 'https://www.revoscience.com/'
                'icon' = 'https://www.revoscience.com/favicon.ico'
            },
            @{
                'Title' = 'Egypt Academy Sciences - Research symposium and events Egypt'
                'URL' = 'https://www.aucegypt.edu/news/category/science-and-tech'
                'icon' = 'https://www.aucegypt.edu/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'ElectroBOOM - Electrical engineering humor and experiments Egypt'
                'URL' = 'https://www.youtube.com/channel/UCJ0-OtVpF0wOKEqT2Z1HEtA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'PraveenMohan - Ancient Egyptian tech mysteries and discoveries'
                'URL' = 'https://www.youtube.com/channel/UCe3OmUXohXrXnNZSRl5Z9kA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ben van Kerkwyk - Ancient high technology in Egypt vlogs'
                'URL' = 'https://www.youtube.com/watch?v=efjgHYibTH8'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Yousef Awyan - Lost ancient Egyptian technology explorations'
                'URL' = 'https://www.youtube.com/watch?v=yhblyEq7yZ0'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Ancient Technology Podcast - Egyptian lost science and innovations'
                'URL' = 'https://karolypoka.com/'
                'icon' = 'https://karolypoka.com/favicon.ico'
            },
            @{
                'Title' = 'Old Kingdom Technology - Ancient Egyptian tools and industry discussions'
                'URL' = 'https://podcasts.apple.com/us/podcast/old-kingdom-technology-with-dr-martin-odler/id626129639?i=1000659581805'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Pharaohnic Fashion - Ancient Egyptian technology through artifacts'
                'URL' = 'https://podcasts.apple.com/us/podcast/pharaohnic-fashion-egypt-art-deco-and-costume/id1436021370?i=1000458718834'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Daily News Egypt Politics - Governance elections and policy news'
                'URL' = 'https://www.dailynewsegypt.com/category/politics/'
                'icon' = 'https://www.dailynewsegypt.com/favicon.ico'
            },
            @{
                'Title' = 'Ahram Online Politics - Egyptian political landscape and reforms'
                'URL' = 'https://english.ahram.org.eg/Category/1/64/Egypt/Politics-.aspx'
                'icon' = 'https://english.ahram.org.eg/favicon.ico'
            },
            @{
                'Title' = 'Egypt Today Politics - Breaking political developments Egypt'
                'URL' = 'https://www.egypttoday.com/Section/Politics/1'
                'icon' = 'https://www.egypttoday.com/favicon.ico'
            },
            @{
                'Title' = 'NewsNow Egypt Politics - Aggregated political news from sources'
                'URL' = 'https://www.newsnow.com/us/World/Africa/Egypt/Politics'
                'icon' = 'https://www.newsnow.com/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'The Diplomat Egypt Politics - Regional analysis and critiques'
                'URL' = 'https://thediplomat.com/tag/egypt-politics/'
                'icon' = 'https://thediplomat.com/favicon.ico'
            },
            @{
                'Title' = 'Nikkei Asia Egypt - Economic political insights and opinion'
                'URL' = 'https://asia.nikkei.com/Spotlight/Egypt-politics'
                'icon' = 'https://asia.nikkei.com/favicon.ico'
            },
            @{
                'Title' = 'Al Jazeera Egypt Politics - Fact-based international coverage'
                'URL' = 'https://www.aljazeera.com/where/egypt/politics'
                'icon' = 'https://www.aljazeera.com/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'Mahmoud Salem - Award-winning blogger political commentary Egypt'
                'URL' = 'https://www.youtube.com/watch?v=b61e7hIA03o'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Syed Muzammil Official - Political science and current events Egypt'
                'URL' = 'https://www.youtube.com/c/SyedMuzammilOfficial'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Imran Riaz Khan - PTI movement and political vlogs Egypt'
                'URL' = 'https://www.youtube.com/c/ImranRiazKhan'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Sushant Pradhan - Political analyst and youth debates Egypt'
                'URL' = 'https://www.youtube.com/@Sushant_Pradhan'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Tahrir Podcast - Middle East North African politics from Cairo'
                'URL' = 'https://podcasts.apple.com/us/podcast/tahrir-podcast/id1554680414'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Egypt Under El-Sisi - Political landscape and nation edge discussions'
                'URL' = 'https://pomeps.org/egypt-under-sisi-s-13-ep-15'
                'icon' = 'https://pomeps.org/favicon.ico'
            },
            @{
                'Title' = 'The Sound of Revolution - Modern Egypt sonic history politics'
                'URL' = 'https://www.ottomanhistorypodcast.com/p/the-sound-of-revolution-in-modern-egypt.html'
                'icon' = 'https://www.ottomanhistorypodcast.com/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Egypt Today Fashion - Trends celebrity styles and events Egypt'
                'URL' = 'https://www.egypt-today.com/en/131-fashion'
                'icon' = 'https://www.egypt-today.com/favicon.ico'
            },
            @{
                'Title' = 'Fashion PULIS - Showbiz fashion news OOTD spotlights Egypt'
                'URL' = 'http://www.fashionpulis.com/'
                'icon' = 'http://www.fashionpulis.com/favicon.ico'
            },
            @{
                'Title' = 'Vogue Arabia - Fashion beauty celebrity style culture Egypt'
                'URL' = 'https://www.voguearabia.com/'
                'icon' = 'https://www.voguearabia.com/favicon.ico'
            },
            @{
                'Title' = 'L''Officiel Egypt - Art culture style magazine features'
                'URL' = 'https://www.lofficiel.com/egypt'
                'icon' = 'https://www.lofficiel.com/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'Fashion Revolution Egypt - Sustainable ethical fashion movement'
                'URL' = 'https://www.fashionrevolution.org/africa/egypt/'
                'icon' = 'https://www.fashionrevolution.org/favicon.ico'
            },
            @{
                'Title' = 'Metro.Style - Lifestyle sustainable fashion critiques Egypt'
                'URL' = 'https://metro.style/'
                'icon' = 'https://metro.style/favicon.ico'
            },
            @{
                'Title' = 'Preview.ph - Independent fashion beauty features Egypt'
                'URL' = 'https://www.preview.ph/'
                'icon' = 'https://www.preview.ph/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'Ahmed Elmoghazy - Egyptian fashion influencer and styling'
                'URL' = 'https://www.instagram.com/ahmed_elmoghazy_/'
                'icon' = 'https://www.instagram.com/favicon.ico'
            },
            @{
                'Title' = 'Dina elsaid - Trendy outfits and beauty vlogs Egypt'
                'URL' = 'https://www.instagram.com/dinaelsaid_'
                'icon' = 'https://www.instagram.com/favicon.ico'
            },
            @{
                'Title' = 'Mai Mohamed - Fashion hauls and cultural styles Egypt'
                'URL' = 'https://www.instagram.com/mai_mohamed_'
                'icon' = 'https://www.instagram.com/favicon.ico'
            },
            @{
                'Title' = 'Walaa Hassan - Designer collections and trends Egypt'
                'URL' = 'https://www.instagram.com/walaa_hassan'
                'icon' = 'https://www.instagram.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Fun and Fashion - Ancient Egyptian clothing and society'
                'URL' = 'https://www.egyptianhistorypodcast.com/143b-fun-and-fashion/'
                'icon' = 'https://www.egyptianhistorypodcast.com/favicon.ico'
            },
            @{
                'Title' = 'Pharaohnic Fashion - Egypt art deco and costume discussions'
                'URL' = 'https://podcasts.apple.com/us/podcast/pharaohnic-fashion-egypt-art-deco-and-costume/id1436021370?i=1000458718834'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Minds of the Nile - Egyptian fashion ambassador insights'
                'URL' = 'https://www.facebook.com/IDSC.en/videos/minds-of-the-nile-podcast-with-the-egyptian-fashion-ambassador-farida-temraz/940850914339637/'
                'icon' = 'https://www.facebook.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Armed Forces News - Egyptian military official updates and operations'
                'URL' = 'https://www.mod.gov.eg/modwebsite/News.aspx'
                'icon' = 'https://www.mod.gov.eg/favicon.ico'
            },
            @{
                'Title' = 'TURDEF Egypt - Defense industry and military news Egypt'
                'URL' = 'https://turdef.com/country/egypt-news'
                'icon' = 'https://turdef.com/favicon.ico'
            },
            @{
                'Title' = 'Egyptian Army Tactical Report - Military power and strategies'
                'URL' = 'https://www.tacticalreport.com/explore/keyword/Egyptian%20Army'
                'icon' = 'https://www.tacticalreport.com/favicon.ico'
            },
            @{
                'Title' = 'Middle East News Agency Military - Army operations and news'
                'URL' = 'https://www.mena.org.eg/en/section/EnglishMilitary'
                'icon' = 'https://www.mena.org.eg/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'BulgarianMilitary Egypt - Defense news products technologies critiques'
                'URL' = 'https://bulgarianmilitary.com/category/middle-east-defence-news/egyptian-defence-news/'
                'icon' = 'https://bulgarianmilitary.com/favicon.ico'
            },
            @{
                'Title' = 'Warpower Egypt - Military capabilities 2025 global ranking'
                'URL' = 'https://www.warpoweregypt.com/'
                'icon' = 'https://www.warpoweregypt.com/favicon.ico'
            },
            @{
                'Title' = 'Jerusalem Post Egypt Army - Regional security and incidents'
                'URL' = 'https://www.jpost.com/tags/egypt-army'
                'icon' = 'https://www.jpost.com/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'Egyptian Military - Armed forces review and parades Egypt'
                'URL' = 'https://www.youtube.com/@egyptianmilitary7838'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Review Armed Forces Egypt - Comprehensive military power explanation'
                'URL' = 'https://www.youtube.com/watch?v=Xrc6QLMo2-o'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Egypt Army Shorts - Quick military drills and clips Egypt'
                'URL' = 'https://www.youtube.com/shorts/zNf5kIDIEds'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'MSIFT Egypt - Military technologies showcased vlogs'
                'URL' = 'https://www.youtube.com/watch?v=bdiVFic78bA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Planet Money - Egypt''s Military Inc business ties discussions'
                'URL' = 'https://www.npr.org/transcripts/133503696'
                'icon' = 'https://www.npr.org/favicon.ico'
            },
            @{
                'Title' = 'Old Kingdom Warfare - Ancient Egyptian military tactics history'
                'URL' = 'https://www.egyptianhistorypodcast.com/old-kingdom-warfare/'
                'icon' = 'https://www.egyptianhistorypodcast.com/favicon.ico'
            },
            @{
                'Title' = 'Ancient Egyptian Warfare - Evolution conquests and battles podcast'
                'URL' = 'https://podcasts.apple.com/us/podcast/ancient-egyptian-warfare-everything-you-wanted-to-know/id256580326?i=1000677651229'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
    }
}
    'iran' = @{
    'Mainstream News Sites' = @(
        @{
            'Title' = 'IRNA - Official Iranian News Agency delivering national and international updates'
            'URL' = 'https://en.irna.ir/'
            'icon' = 'https://en.irna.ir/favicon.ico'
        },
        @{
            'Title' = 'Tehran Times - Leading English daily covering Iran politics and society'
            'URL' = 'https://www.tehrantimes.com/'
            'icon' = 'https://www.tehrantimes.com/favicon.ico'
        },
        @{
            'Title' = 'Mehr News Agency - Comprehensive reports on Iranian events and world news'
            'URL' = 'https://en.mehrnews.com/'
            'icon' = 'https://en.mehrnews.com/favicon.ico'
        },
        @{
            'Title' = 'Tasnim News Agency - In-depth coverage of politics economy and culture'
            'URL' = 'https://www.tasnimnews.com/en'
            'icon' = 'https://www.tasnimnews.com/favicon.ico'
        },
        @{
            'Title' = 'PressTV - Iranian international news network broadcasting global affairs'
            'URL' = 'https://www.presstv.ir/'
            'icon' = 'https://www.presstv.ir/favicon.ico'
        },
        @{
            'Title' = 'ISNA - Iranian Students News Agency focusing on youth and education'
            'URL' = 'https://en.isna.ir/'
            'icon' = 'https://en.isna.ir/favicon.ico'
        },
        @{
            'Title' = 'Fars News Agency - State-affiliated source for Iranian domestic headlines'
            'URL' = 'https://en.farsnews.ir/'
            'icon' = 'https://en.farsnews.ir/favicon.ico'
        }
    )
    'Alternative News Sites' = @(
        @{
            'Title' = 'Iran International - Independent Persian-language news on Iran affairs'
            'URL' = 'https://www.iranintl.com/en'
            'icon' = 'https://www.iranintl.com/favicon.ico'
        },
        @{
            'Title' = 'IranWire - Collaborative journalism exposing Iranian human rights issues'
            'URL' = 'https://iranwire.com/en/'
            'icon' = 'https://iranwire.com/favicon.ico'
        },
        @{
            'Title' = 'Radio Farda - US-funded broadcaster providing uncensored Iran coverage'
            'URL' = 'https://www.radiofarda.com/'
            'icon' = 'https://www.radiofarda.com/favicon.ico'
        },
        @{
            'Title' = 'Amwaj Media - Analytical insights into Iran regional dynamics and policy'
            'URL' = 'https://amwaj.media/en/region/iran'
            'icon' = 'https://amwaj.media/favicon.ico'
        },
        @{
            'Title' = 'Middle East Eye - Independent reporting on Iranian geopolitical tensions'
            'URL' = 'https://www.middleeasteye.net/home'
            'icon' = 'https://www.middleeasteye.net/favicon.ico'
        }
    )
    'Counter Culture News Sites' = @(
        @{
            'Title' = 'IranWire - Diaspora-driven platform challenging official narratives'
            'URL' = 'https://iranwire.com/en/'
            'icon' = 'https://iranwire.com/favicon.ico'
        },
        @{
            'Title' = 'NCRI - Opposition group highlighting Iranian social and cultural resistance'
            'URL' = 'https://www.ncr-iran.org/en/news/society/'
            'icon' = 'https://www.ncr-iran.org/favicon.ico'
        },
        @{
            'Title' = 'Radio Zamaneh - Independent media amplifying Iranian youth counterculture'
            'URL' = 'https://en.radiozamaneh.com/'
            'icon' = 'https://en.radiozamaneh.com/favicon.ico'
        }
    )
    'Mainstream Vloggers' = @(
        @{
            'Title' = 'Persian Media Group - Daily vlogs on Iranian life and traditions'
            'URL' = 'https://www.youtube.com/channel/UC PersianMediaGroup'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'PressTV - Official vlogs featuring Iranian cultural and news highlights'
            'URL' = 'https://www.youtube.com/user/PressTV'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Dar al-Tarjomeh - Educational vlogs on Iranian history and society'
            'URL' = 'https://www.youtube.com/channel/UC_daraltarjomeh'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Sepasi - Lifestyle vlogs showcasing modern Iranian urban experiences'
            'URL' = 'https://www.youtube.com/channel/UC_sepasi'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Eshgh Harf Halish Nemishe - Romantic vlogs exploring Iranian relationships'
            'URL' = 'https://www.youtube.com/channel/UC_eshghharf'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Alternative Vloggers' = @(
        @{
            'Title' = 'Reza and Mahsa Travellers - Uncensored travel vlogs across Iran landscapes'
            'URL' = 'https://www.youtube.com/c/RezaMahsaTravellers'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Mahshidtopia - Expat vlogs on Iranian diaspora life and routines'
            'URL' = 'https://www.youtube.com/c/Mahshidtopia'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Hello Iran TV - Authentic glimpses into everyday Iranian family dynamics'
            'URL' = 'https://www.youtube.com/c/HelloIranTV'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Persian Bunny - Fashion and wellness vlogs from Iranian perspective abroad'
            'URL' = 'https://www.youtube.com/c/PersianBunny'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Mainstream Podcasters' = @(
        @{
            'Title' = 'The Iran Podcast - Discussions on Iranian politics society and culture'
            'URL' = 'https://podcasts.apple.com/us/podcast/the-iran-podcast/id1515542917'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'Iran International Podcast - Expert analysis on current Iranian events'
            'URL' = 'https://www.iranintl.com/en/podcast'
            'icon' = 'https://www.iranintl.com/favicon.ico'
        },
        @{
            'Title' = 'Successful Iranians - Stories of Iranian achievements worldwide'
            'URL' = 'https://podcasts.apple.com/us/podcast/successful-iranians/id1671789646'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'Iran Uncovered - In-depth explorations of Iranian historical narratives'
            'URL' = 'https://podcast.feedspot.com/iran_podcasts/'
            'icon' = 'https://podcast.feedspot.com/favicon.ico'
        },
        @{
            'Title' = 'Learn Persian with Chai - Cultural immersion through language and stories'
            'URL' = 'https://www.chaiandconversation.com/podcast'
            'icon' = 'https://www.chaiandconversation.com/favicon.ico'
        }
    )
    'Alternative Podcasters' = @(
        @{
            'Title' = 'Roqe - Personal reflections on Iranian identity and experiences'
            'URL' = 'https://roqemedia.com/podcast/'
            'icon' = 'https://roqemedia.com/favicon.ico'
        },
        @{
            'Title' = 'Ask An Iranian - Humorous takes on Iranian cultural quirks'
            'URL' = 'https://askaniranian.com/podcast/'
            'icon' = 'https://askaniranian.com/favicon.ico'
        },
        @{
            'Title' = 'Chirook - Folk tales and literature from Persian heritage'
            'URL' = 'https://chirookpodcast.com/'
            'icon' = 'https://chirookpodcast.com/favicon.ico'
        },
        @{
            'Title' = 'Radio Marz - Social issues and conversations in Persian'
            'URL' = 'https://radiomarz.com/podcast/'
            'icon' = 'https://radiomarz.com/favicon.ico'
        }
    )
    'Business' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Financial Tribune - Iran leading English business daily insights'
                'URL' = 'https://financialtribune.com/'
                'icon' = 'https://financialtribune.com/favicon.ico'
            },
            @{
                'Title' = 'Tehran Times Economy - Updates on Iranian trade and markets'
                'URL' = 'https://www.tehrantimes.com/service/economy'
                'icon' = 'https://www.tehrantimes.com/favicon.ico'
            },
            @{
                'Title' = 'Mehr News Economy - Reports on Iran financial developments'
                'URL' = 'https://en.mehrnews.com/service/economy'
                'icon' = 'https://en.mehrnews.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Chamber of Commerce - Official economic policy and trade news'
                'URL' = 'https://en.iccima.ir/'
                'icon' = 'https://en.iccima.ir/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'Iran Front Page Business - Critical views on Iranian commerce challenges'
                'URL' = 'https://ifpnews.com/category/news/business/'
                'icon' = 'https://ifpnews.com/favicon.ico'
            },
            @{
                'Title' = 'NCRI Economy - Opposition analysis of Iran business sanctions impacts'
                'URL' = 'https://www.ncr-iran.org/en/news/economy/'
                'icon' = 'https://www.ncr-iran.org/favicon.ico'
            },
            @{
                'Title' = 'Iran International Economy - Independent reporting on financial irregularities'
                'URL' = 'https://www.iranintl.com/en/section/economy'
                'icon' = 'https://www.iranintl.com/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'Successful Iranians - Vlogs on Iranian business success stories'
                'URL' = 'https://www.youtube.com/channel/UCTd-WH9h35ZYDP0RR5Oo2WQ'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Persian Tech Network - Innovation and entrepreneurship vlogs in Iran'
                'URL' = 'https://www.youtube.com/@PersianTechNet'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Startups - Vlogs on emerging Iranian business ventures'
                'URL' = 'https://www.youtube.com/channel/UC_iranstartups'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Barbod Masoumi - Crypto and finance vlogs from Iranian perspective'
                'URL' = 'https://www.youtube.com/@barbodmasoumi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Successful Iranians - Interviews with global Iranian business leaders'
                'URL' = 'https://podcasts.apple.com/us/podcast/successful-iranians/id1671789646'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Tehran Disrupted - Stories of Iranian tech founders overcoming odds'
                'URL' = 'https://podcasts.apple.com/us/podcast/tehran-disrupted/id1598447283'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Suisse Chamber - Discussions on Iran-Swiss business collaborations'
                'URL' = 'https://iransuisse.com/podcast/'
                'icon' = 'https://iransuisse.com/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Tehran Times Sports - Coverage of Iranian athletic achievements'
                'URL' = 'https://www.tehrantimes.com/service/sports'
                'icon' = 'https://www.tehrantimes.com/favicon.ico'
            },
            @{
                'Title' = 'Mehr News Sports - Updates on Iran national teams and events'
                'URL' = 'https://en.mehrnews.com/service/sports'
                'icon' = 'https://en.mehrnews.com/favicon.ico'
            },
            @{
                'Title' = 'Tasnim Sports - In-depth Iranian football and wrestling reports'
                'URL' = 'https://www.tasnimnews.com/en/service/1199/sports'
                'icon' = 'https://www.tasnimnews.com/favicon.ico'
            },
            @{
                'Title' = 'PressTV Sports - International sports with Iranian athlete spotlights'
                'URL' = 'https://www.presstv.ir/Section/12005'
                'icon' = 'https://www.presstv.ir/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'IranWire Sports - Critical views on gender barriers in Iranian athletics'
                'URL' = 'https://iranwire.com/en/category/sports'
                'icon' = 'https://iranwire.com/favicon.ico'
            },
            @{
                'Title' = 'Persian Football - Independent analysis of Iran football politics'
                'URL' = 'https://www.persianfootball.com/news/'
                'icon' = 'https://www.persianfootball.com/favicon.ico'
            },
            @{
                'Title' = 'NCRI Sports - Reports on sports as resistance in Iran'
                'URL' = 'https://www.ncr-iran.org/en/news/sports/'
                'icon' = 'https://www.ncr-iran.org/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'Iran Sport - Vlogs on Iranian wrestling and football matches'
                'URL' = 'https://www.youtube.com/@iran_sport'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Sorkhabi Persian Sports - Live streams of Iranian sports events'
                'URL' = 'https://www.youtube.com/channel/UChnnuAVIZnW85aZjswDa9Cg'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Persian Football - Match highlights and fan vlogs'
                'URL' = 'https://www.youtube.com/c/PersianFootball'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Team Melli - National team training and game vlogs'
                'URL' = 'https://www.youtube.com/channel/UCpO7ijrUzxXjOHyyfPp3w-A'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Pink Card - Stories of Iranian women in football revolution'
                'URL' = 'https://30for30podcasts.com/pinkcard/'
                'icon' = 'https://30for30podcasts.com/favicon.ico'
            },
            @{
                'Title' = 'Podium Podcasts - Interviews with Iranian athletes and coaches'
                'URL' = 'https://podcasts.apple.com/us/podcast/%D9%BE%D8%A7%D8%AF%DA%A9%D8%B3%D8%AA-%D9%87%D8%A7%DB%8C-%D8%B3%DA%A9%D9%88-podium-podcasts/id1607940910'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Sports Explains the World - Iranian athletes defying regime restrictions'
                'URL' = 'https://wondery.com/shows/sports-explains-the-world/'
                'icon' = 'https://wondery.com/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Tehran Times Culture - Features on Iranian arts and heritage'
                'URL' = 'https://www.tehrantimes.com/service/culture'
                'icon' = 'https://www.tehrantimes.com/favicon.ico'
            },
            @{
                'Title' = 'Tasnim Culture - Coverage of Iranian festivals and traditions'
                'URL' = 'https://www.tasnimnews.com/en/service/culture'
                'icon' = 'https://www.tasnimnews.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Press Culture - News on Persian literature and cinema'
                'URL' = 'https://iranpress.com/sp--iran-culture'
                'icon' = 'https://iranpress.com/favicon.ico'
            },
            @{
                'Title' = 'IRNA Culture - Official updates on Iranian social customs'
                'URL' = 'https://en.irna.ir/section/culture'
                'icon' = 'https://en.irna.ir/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'iranWire Culture - Exposes on censored iranian artistic expressions'
                'URL' = 'https://iranwire.com/en/category/culture'
                'icon' = 'https://iranwire.com/favicon.ico'
            },
            @{
                'Title' = 'NCRI Culture - Advocacy for free Iranian cultural movements'
                'URL' = 'https://www.ncr-iran.org/en/news/society/'
                'icon' = 'https://www.ncr-iran.org/favicon.ico'
            },
            @{
                'Title' = 'Euronews Iranian Culture - Global views on evolving Persian traditions'
                'URL' = 'https://www.euronews.com/tag/iranian-culture'
                'icon' = 'https://www.euronews.com/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'Reza and Mahsa Travellers - Vlogs on Iranian historical sites'
                'URL' = 'https://www.youtube.com/c/RezaMahsaTravellers'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hello Iran TV - Daily life and festival vlogs in Iran'
                'URL' = 'https://www.youtube.com/c/HelloIranTV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Travel Vlog - Cultural immersion through regional explorations'
                'URL' = 'https://www.youtube.com/playlist?list=PL4UxVaTaKNOoxJophAmw_n-cUd2P2tLZD'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Mary Travel - Vlogs on Iranian customs and people interactions'
                'URL' = 'https://www.youtube.com/c/MaryTravelIran'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Roqe - Personal stories of Iranian cultural identity'
                'URL' = 'https://roqemedia.com/podcast/'
                'icon' = 'https://roqemedia.com/favicon.ico'
            },
            @{
                'Title' = 'Persian Curious - Conversations on Persian arts and traditions'
                'URL' = 'https://open.spotify.com/show/0AIpHPOxJ3HM2rwmAN5xNl'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Ask An Iranian - Humorous dives into Iranian folklore'
                'URL' = 'https://askaniranian.com/podcast/'
                'icon' = 'https://askaniranian.com/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Iran Front Page Sci-Tech - Advances in Iranian research innovations'
                'URL' = 'https://ifpnews.com/category/news/society/sci-tech/'
                'icon' = 'https://ifpnews.com/favicon.ico'
            },
            @{
                'Title' = 'Mehr News Technology - Reports on Iran tech developments'
                'URL' = 'https://en.mehrnews.com/service/technology'
                'icon' = 'https://en.mehrnews.com/favicon.ico'
            },
            @{
                'Title' = 'Tehran Times Technology - Coverage of Iranian scientific breakthroughs'
                'URL' = 'https://www.tehrantimes.com/tag/technology'
                'icon' = 'https://www.tehrantimes.com/favicon.ico'
            },
            @{
                'Title' = 'ANA Press - Global and Iranian science news updates'
                'URL' = 'https://ana.ir/en'
                'icon' = 'https://ana.ir/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'IranWire Sci-Tech - Critical analysis of Iran nuclear programs'
                'URL' = 'https://iranwire.com/en/category/science'
                'icon' = 'https://iranwire.com/favicon.ico'
            },
            @{
                'Title' = 'NCRi Science - Exposes on restricted iranian tech research'
                'URL' = 'https://www.ncr-iran.org/en/news/science/'
                'icon' = 'https://www.ncr-iran.org/favicon.ico'
            },
            @{
                'Title' = 'ODISTC - Views on Iran innovation amid sanctions challenges'
                'URL' = 'https://cistc.ir/en/tag/science-and-technology-in-iran/'
                'icon' = 'https://cistc.ir/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'ElectroBOOM - Humorous experiments in electrical engineering'
                'URL' = 'https://www.youtube.com/channel/UCJ0-OtVpF0wOKEqT2Z1HEtA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Persian Tech Network - Vlogs on Iranian startup innovations'
                'URL' = 'https://www.youtube.com/@PersianTechNet'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Science - Educational vlogs on Persian inventions history'
                'URL' = 'https://www.youtube.com/playlist?list=PLYWmhEijr5mBp6yrtyDiDSHWmVMZvjpJb'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'STEP Iran - Science exchange program vlogs and demos'
                'URL' = 'https://www.youtube.com/watch?v=Een2THKjbFY'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'IEEE WIE Iran - Interviews with Iranian women in STEM'
                'URL' = 'https://podcasts.apple.com/us/podcast/ieee-wie-iran/id1624549246'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Science and Technology News - Radio Iranshahr updates on innovations'
                'URL' = 'https://radioiranshahr.org/podcast/science-and-technology-news/'
                'icon' = 'https://radioiranshahr.org/favicon.ico'
            },
            @{
                'Title' = 'The Deal Podcast - Discussions on Iran nuclear tech implications'
                'URL' = 'https://www.middlebury.edu/deal-podcast'
                'icon' = 'https://www.middlebury.edu/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Tehran Times Politics - Official Iranian government policy coverage'
                'URL' = 'https://www.tehrantimes.com/service/politics'
                'icon' = 'https://www.tehrantimes.com/favicon.ico'
            },
            @{
                'Title' = 'Tasnim Politics - In-depth reports on Iranian parliamentary affairs'
                'URL' = 'https://www.tasnimnews.com/en/service/politics'
                'icon' = 'https://www.tasnimnews.com/favicon.ico'
            },
            @{
                'Title' = 'Mehr News Politics - Analysis of Iran foreign relations'
                'URL' = 'https://en.mehrnews.com/service/politics'
                'icon' = 'https://en.mehrnews.com/favicon.ico'
            },
            @{
                'Title' = 'IRNA Politics - State news on Iranian domestic governance'
                'URL' = 'https://en.irna.ir/section/politics'
                'icon' = 'https://en.irna.ir/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'iran international Politics - Critical exposes on regime actions'
                'URL' = 'https://www.iranintl.com/en/section/politics'
                'icon' = 'https://www.iranintl.com/favicon.ico'
            },
            @{
                'Title' = 'IranWire Politics - Diaspora journalism on human rights abuses'
                'URL' = 'https://iranwire.com/en/category/politics'
                'icon' = 'https://iranwire.com/favicon.ico'
            },
            @{
                'Title' = 'Amwaj Media Iran - Geopolitical critiques of Iranian strategies'
                'URL' = 'https://amwaj.media/en/region/iran'
                'icon' = 'https://amwaj.media/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'Hello Iran TV - Vlogs on Iranian political daily life'
                'URL' = 'https://www.youtube.com/c/HelloIranTV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Triggernometry - Debates on Iranian regime policies'
                'URL' = 'https://www.youtube.com/@triggerpod'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Breakdown - Vlog-style analysis of political events'
                'URL' = 'https://www.youtube.com/c/IranBreakdown'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Maz Jobrani - Comedic takes on Iranian political diaspora'
                'URL' = 'https://www.youtube.com/c/MazJobrani'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The Iran Podcast - Expert talks on Iranian political landscape'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-iran-podcast/id1515542917'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Breakdown - Weekly breakdowns of Iranian regime strategies'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-iran-breakdown-with-mark-dubowitz/id1798788194'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Eye for Iran - Investigative podcasts on political scandals'
                'URL' = 'https://www.iranintl.com/en/podcast/6199987'
                'icon' = 'https://www.iranintl.com/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Iran International Fashion - Reports on Tehran Fashion Week events'
                'URL' = 'https://www.iranintl.com/en/202511124911'
                'icon' = 'https://www.iranintl.com/favicon.ico'
            },
            @{
                'Title' = 'Tasnim Fashion - Coverage of Iranian modest wear trends'
                'URL' = 'https://www.tasnimnews.com/en/service/fashion'
                'icon' = 'https://www.tasnimnews.com/favicon.ico'
            },
            @{
                'Title' = 'Tehran Times Fashion - Features on Persian textile heritage'
                'URL' = 'https://www.tehrantimes.com/service/fashion'
                'icon' = 'https://www.tehrantimes.com/favicon.ico'
            },
            @{
                'Title' = 'Garland Magazine Iran - Articles on traditional Iranian crafts'
                'URL' = 'https://garlandmag.com/iran/'
                'icon' = 'https://garlandmag.com/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'IranWire Fashion - Stories of protest fashion in Iran'
                'URL' = 'https://iranwire.com/en/women/130087'
                'icon' = 'https://iranwire.com/favicon.ico'
            },
            @{
                'Title' = 'ELLE Iran Fashion - Global views on Iranian style resistance'
                'URL' = 'https://www.elle.com/fashion/a42396951/iranian-revolution-fashion-protests/'
                'icon' = 'https://www.elle.com/favicon.ico'
            },
            @{
                'Title' = 'Vogue Iran - Critiques of mandatory dress code influences'
                'URL' = 'https://www.vogue.com/slideshow/amir-taghi-spring-2026'
                'icon' = 'https://www.vogue.com/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'Persian Bunny - Iranian fashion hauls and styling tips'
                'URL' = 'https://www.youtube.com/@PersianBunny'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Lina Noory - Afghan-Iranian beauty and fashion vlogs'
                'URL' = 'https://www.youtube.com/c/LinaNoory'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Walk With Me - Street style vlogs in Tehran 2025'
                'URL' = 'https://www.youtube.com/@Walkwithmee'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Paria Farzaneh - Designer vlogs blending Iranian heritage styles'
                'URL' = 'https://www.youtube.com/watch?v=Pn13nHq0EMc'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Fashioning an Empire - Safavid Iran fashion history discussions'
                'URL' = 'https://podcasts.apple.com/gb/podcast/fashioning-an-empire/id1711711289'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'BoF Podcast Iran - Underground Iranian fashion industry insights'
                'URL' = 'https://www.businessoffashion.com/podcasts/global-markets/the-bof-podcast-iran-a-fashion-industry-operating-in-the-underground/'
                'icon' = 'https://www.businessoffashion.com/favicon.ico'
            },
            @{
                'Title' = 'Fashion Studies Iran - Academic talks on Persian style evolution'
                'URL' = 'https://en.fashionstudiesiran.com/category/podcast/'
                'icon' = 'https://en.fashionstudiesiran.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'Mainstream News Sites' = @(
            @{
                'Title' = 'Tasnim Defense - Official reports on Iranian armed forces'
                'URL' = 'https://www.tasnimnews.com/en/service/defense'
                'icon' = 'https://www.tasnimnews.com/favicon.ico'
            },
            @{
                'Title' = 'Mehr News Defense - Coverage of Iran military exercises'
                'URL' = 'https://en.mehrnews.com/service/defense'
                'icon' = 'https://en.mehrnews.com/favicon.ico'
            },
            @{
                'Title' = 'IRNA Defense - State news on Iranian security developments'
                'URL' = 'https://en.irna.ir/section/defense'
                'icon' = 'https://en.irna.ir/favicon.ico'
            },
            @{
                'Title' = 'Iran Press Defense - Updates on regional military alliances'
                'URL' = 'https://iranpress.com/tag/9021-iran-military-news'
                'icon' = 'https://iranpress.com/favicon.ico'
            }
        )
        'Counter News Sites' = @(
            @{
                'Title' = 'IranWire Military - Critical analysis of IRGC operations'
                'URL' = 'https://iranwire.com/en/category/security'
                'icon' = 'https://iranwire.com/favicon.ico'
            },
            @{
                'Title' = 'FDD Iran Military - Western views on Iranian threats'
                'URL' = 'https://www.fdd.org/topic/islamic-republic-of-iran-army/'
                'icon' = 'https://www.fdd.org/favicon.ico'
            },
            @{
                'Title' = 'Breaking Defense Iran - Geopolitical military strategy critiques'
                'URL' = 'https://breakingdefense.com/tag/iran/'
                'icon' = 'https://breakingdefense.com/favicon.ico'
            }
        )
        'Vloggers' = @(
            @{
                'Title' = 'Iran Military - Vlogs on Iranian defense capabilities'
                'URL' = 'https://www.youtube.com/c/IranMilitary'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'FAZ TV Channel - Reviews of Iranian military hardware'
                'URL' = 'https://www.youtube.com/@FAZTVchannel'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Military Monitor - Analysis vlogs of regional conflicts'
                'URL' = 'https://www.youtube.com/channel/UC_IranMilitaryMonitor'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'VSB Defense - Comparisons of Iran vs global militaries'
                'URL' = 'https://www.youtube.com/c/VSBdefense'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Iran Military Power - Overviews of Iranian armed forces history'
                'URL' = 'https://open.spotify.com/show/09rA8cDknbOYkklh0uY9yt'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'The Iran Reckoning - Strategic discussions on Iran military intentions'
                'URL' = 'https://warontherocks.com/premium/the-iran-reckoning/'
                'icon' = 'https://warontherocks.com/favicon.ico'
            },
            @{
                'Title' = 'Iran Watch Listen - Interviews on Iran nuclear and military ties'
                'URL' = 'https://www.iranwatch.org/our-publications/interviews-and-podcasts'
                'icon' = 'https://www.iranwatch.org/favicon.ico'
            }
        )
    }
    }
'Israel' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Globes - Premier English-language source for Israeli business and economy updates'
                    'URL' = 'https://en.globes.co.il/'
                    'icon' = 'https://en.globes.co.il/favicon.ico'
                },
                @{
                    'Title' = 'Haaretz Business - In-depth analysis of Israel''s financial markets and corporate news'
                    'URL' = 'https://www.haaretz.com/israel-news/business'
                    'icon' = 'https://www.haaretz.com/favicon.ico'
                },
                @{
                    'Title' = 'Ynet Business - Comprehensive coverage of Israeli economic policies and trade'
                    'URL' = 'https://www.ynetnews.com/business'
                    'icon' = 'https://www.ynetnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Jerusalem Post Business - Reports on Israeli innovation and investment opportunities'
                    'URL' = 'https://www.jpost.com/business-and-innovation'
                    'icon' = 'https://www.jpost.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '+972 Magazine - Independent perspectives on Israeli economic inequalities'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss - Critical analysis of Israel''s business ties and sanctions'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor - Alternative views on Middle East business including Israel'
                    'URL' = 'https://www.al-monitor.com/'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'ILTV Israel News - Vlogs on Israeli startups and economic resilience'
                'URL' = 'https://www.youtube.com/c/ILTVIsraelNews'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'CBN News - Insights into Israel''s unicorn economy and tech boom'
                'URL' = 'https://www.youtube.com/c/CBNnewsonline'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'The Jerusalem Post - Video features on Israeli business leaders and markets'
                'URL' = 'https://www.youtube.com/user/jpostcom'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Start-Up Nation Finder - Vlogs exploring Israeli entrepreneurial ecosystems'
                'URL' = 'https://www.youtube.com/channel/UCa0o7WvXj6O9ZxL1z7q2wQw'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Decision Points - Discussions on Israel''s wartime economy and recovery'
                'URL' = 'https://podcasts.apple.com/us/podcast/decision-points/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'The Promised Podcast - Analysis of Israeli economic policies and challenges'
                'URL' = 'https://open.spotify.com/show/0Z8b4v4lWEyqqfR0mQbT7T'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Inside Israel - Insights into business innovation amid geopolitical tensions'
                'URL' = 'https://www.jpost.com/podcasts/inside-israel'
                'icon' = 'https://www.jpost.com/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Jerusalem Post Sports - Coverage of Israeli soccer basketball and athletics'
                    'URL' = 'https://www.jpost.com/israel-news/sports'
                    'icon' = 'https://www.jpost.com/favicon.ico'
                },
                @{
                    'Title' = 'Haaretz Sports - Reports on Israeli teams in EuroLeague and Olympics'
                    'URL' = 'https://www.haaretz.com/israel-news/sports'
                    'icon' = 'https://www.haaretz.com/favicon.ico'
                },
                @{
                    'Title' = 'Ynet Sports - Updates on Maccabi Tel Aviv and national team performances'
                    'URL' = 'https://www.ynetnews.com/sports'
                    'icon' = 'https://www.ynetnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Times of Israel Sports - Features on Israeli athletes and league news'
                    'URL' = 'https://www.timesofisrael.com/topic/sports/'
                    'icon' = 'https://www.timesofisrael.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Sports Rabbi - Independent stories on athlete rights and sports politics'
                    'URL' = 'https://sportsrabbi.com/en/'
                    'icon' = 'https://sportsrabbi.com/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Sports - Critical views on discrimination in Israeli sports'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss - Alternative reporting on Palestinian-Israeli sports tensions'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Sports Rabbi - Vlogs on Israeli basketball and soccer highlights'
                'URL' = 'https://www.youtube.com/c/SportsRabbi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'ILTV Israel News - Videos of Maccabiah Games and athlete stories'
                'URL' = 'https://www.youtube.com/c/ILTVIsraelNews'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Israel ParaSport Center - Vlogs featuring adaptive sports in Israel'
                'URL' = 'https://www.youtube.com/channel/UCgj26z1ezf_9OlCr0koDqdA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Pini Gershon - Follows Israeli athletes worldwide and game analyses'
                'URL' = 'https://www.youtube.com/@PiniGershon'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The Sports Rabbi - Episodes on Israeli soccer and basketball leagues'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-sports-rabbi/id545181049'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'More Than a Game - Stories of Maccabi Tel Aviv and sports history'
                'URL' = 'https://podcasts.apple.com/us/podcast/more-than-a-game-maccabi-tel-aviv-zionism-and/id1529341876'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Menschwarmers - Discussions on Jewish athletes and Israeli sports'
                'URL' = 'https://thecjn.ca/podcasts/menschwarmers/'
                'icon' = 'https://thecjn.ca/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Jerusalem Post Culture - Reviews of Israeli arts theater and festivals'
                    'URL' = 'https://www.jpost.com/israel-news/culture'
                    'icon' = 'https://www.jpost.com/favicon.ico'
                },
                @{
                    'Title' = 'Haaretz Culture - Features on Israeli literature music and cinema'
                    'URL' = 'https://www.haaretz.com/israel-news/culture'
                    'icon' = 'https://www.haaretz.com/favicon.ico'
                },
                @{
                    'Title' = 'i24NEWS Culture - News on Israeli art exhibitions and cultural events'
                    'URL' = 'https://www.i24news.tv/en/news/israel/culture'
                    'icon' = 'https://www.i24news.tv/favicon.ico'
                },
                @{
                    'Title' = 'Times of Israel Culture - Coverage of Jewish heritage and modern arts'
                    'URL' = 'https://www.timesofisrael.com/topic/culture/'
                    'icon' = 'https://www.timesofisrael.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '+972 Magazine Culture - Independent critiques of Israeli cultural policies'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Electronic Intifada - Alternative views on Palestinian-Israeli cultural exchanges'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = 'Jewish Currents - Progressive perspectives on Israeli arts and society'
                    'URL' = 'https://jewishcurrents.org/'
                    'icon' = 'https://jewishcurrents.org/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Piece of Hebrew - Vlogs on Israeli society culture and daily life'
                'URL' = 'https://www.youtube.com/c/PieceofHebrew'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'TheTravelingClatt - Cultural explorations of Israeli traditions and history'
                'URL' = 'https://www.youtube.com/thetravelingclatt'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'IndianInIsrael - Bridging cultures through vlogs on Israeli festivals'
                'URL' = 'https://www.youtube.com/@IndianInIsrael'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'ILTV Israel News - Videos showcasing Israeli arts and heritage sites'
                'URL' = 'https://www.youtube.com/c/ILTVIsraelNews'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Unpacking Israeli History - Episodes on cultural milestones and figures'
                'URL' = 'https://podcasts.apple.com/us/podcast/unpacking-israeli-history/id1529341876'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'The Genesis - Conversations with Jewish artists and cultural creators'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-genesis-conversations-about-jewish-arts-and/id1755456069'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Israel Story - Narrative tales of Israeli culture and personal stories'
                'URL' = 'https://israelstory.org/podcast/'
                'icon' = 'https://israelstory.org/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'NoCamels - Latest on Israeli tech innovations and startups'
                    'URL' = 'https://nocamels.com/'
                    'icon' = 'https://nocamels.com/favicon.ico'
                },
                @{
                    'Title' = 'Haaretz Science and Tech - Coverage of Israeli research breakthroughs'
                    'URL' = 'https://www.haaretz.com/ty-tag/science-technology-0000017f-da2b-d718-a5ff-faaf73740000'
                    'icon' = 'https://www.haaretz.com/favicon.ico'
                },
                @{
                    'Title' = 'i24NEWS Tech - News on Israeli cybersecurity and AI developments'
                    'URL' = 'https://www.i24news.tv/en/news/israel/technology-science'
                    'icon' = 'https://www.i24news.tv/favicon.ico'
                },
                @{
                    'Title' = 'Israel Hayom Science - Reports on defense tech and scientific achievements'
                    'URL' = 'https://www.israelhayom.com/category/science-technology/'
                    'icon' = 'https://www.israelhayom.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '+972 Magazine Tech - Critical analysis of Israeli surveillance technologies'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Electronic Intifada - Alternative reporting on military tech impacts'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss - Perspectives on ethical issues in Israeli science'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'ILTV Israel News - Vlogs on Israeli biotech and innovation hubs'
                'URL' = 'https://www.youtube.com/c/ILTVIsraelNews'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Insights on TBN Israel - Videos exploring life-saving Israeli technologies'
                'URL' = 'https://www.youtube.com/c/TBNIsrael'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Progress Potential - Interviews with Israeli tech thought leaders'
                'URL' = 'https://www.youtube.com/playlist?list=PLS1i3YpXAqtbjWhA0OlZYYpMLSKP2vUaQ'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Unpacked - Explanations of Israeli water tech and sustainability'
                'URL' = 'https://www.youtube.com/c/UnpackedMedia'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Invested by Aleph - Talks with Israeli tech founders and investors'
                'URL' = 'https://podcasts.apple.com/us/podcast/invested-by-aleph/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Israeltech - Updates on AI and cybersecurity in Israel'
                'URL' = 'https://podcasts.apple.com/us/podcast/israeltech/id1736492618'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Inside Israeli Innovation - Stories of tech startups and breakthroughs'
                'URL' = 'https://open.spotify.com/show/1G8YZi5vkY1YoCceVFDlpb'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Times of Israel - Breaking news on Israeli government and elections'
                    'URL' = 'https://www.timesofisrael.com/'
                    'icon' = 'https://www.timesofisrael.com/favicon.ico'
                },
                @{
                    'Title' = 'Haaretz Politics - Analysis of Knesset debates and policy shifts'
                    'URL' = 'https://www.haaretz.com/israel-news'
                    'icon' = 'https://www.haaretz.com/favicon.ico'
                },
                @{
                    'Title' = 'Israel Hayom - Coverage of Netanyahu administration and coalitions'
                    'URL' = 'https://www.israelhayom.com/'
                    'icon' = 'https://www.israelhayom.com/favicon.ico'
                },
                @{
                    'Title' = 'Ynet Politics - Updates on Israeli foreign relations and security'
                    'URL' = 'https://www.ynetnews.com/category/3083'
                    'icon' = 'https://www.ynetnews.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '+972 Magazine - Independent journalism on Israeli occupation policies'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss - Critical reporting on Israeli political decisions'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                },
                @{
                    'Title' = 'Electronic Intifada - Alternative narratives on Israeli governance'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Nas Daily - Vlogs explaining Israeli-Palestinian political dynamics'
                'URL' = 'https://www.youtube.com/channel/UCJsUvAqDzczYv2UpFmu4PcA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'TheTravelingClatt - Political commentary through Israeli cultural lens'
                'URL' = 'https://www.youtube.com/thetravelingclatt'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'ILTV Israel News - Videos on Knesset sessions and protests'
                'URL' = 'https://www.youtube.com/c/ILTVIsraelNews'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Haviv Rettig Gur - Lectures on Israeli politics and society'
                'URL' = 'https://www.youtube.com/results?search_query=haviv+rettig+gur'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Unholy - Two journalists unpacking Israeli political news'
                'URL' = 'https://podcasts.apple.com/us/podcast/unholy-two-jews-on-the-news/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'For Heaven''s Sake - Discussions on Israel''s political landscape'
                'URL' = 'https://www.timesofisrael.com/podcasts/for-heavens-sake/'
                'icon' = 'https://www.timesofisrael.com/favicon.ico'
            },
            @{
                'Title' = 'Israel Policy Forum - Expert talks on foreign policy and governance'
                'URL' = 'https://israelpolicyforum.org/podcast/'
                'icon' = 'https://israelpolicyforum.org/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Haaretz Fashion - Coverage of Tel Aviv Fashion Week and designers'
                    'URL' = 'https://www.haaretz.com/ty-tag/israel-fashion-0000017f-da26-d249-ab7f-fbe6b9c60000'
                    'icon' = 'https://www.haaretz.com/favicon.ico'
                },
                @{
                    'Title' = 'Israel Hayom Lifestyle - Features on Israeli modest and street fashion'
                    'URL' = 'https://www.israelhayom.com/lifestyle/fashion'
                    'icon' = 'https://www.israelhayom.com/favicon.ico'
                },
                @{
                    'Title' = 'Jerusalem Post Fashion - News on sustainable Israeli apparel trends'
                    'URL' = 'https://www.jpost.com/lifestyle/fashion'
                    'icon' = 'https://www.jpost.com/favicon.ico'
                },
                @{
                    'Title' = 'Times of Israel Fashion - Reports on cultural influences in Israeli style'
                    'URL' = 'https://www.timesofisrael.com/topic/fashion/'
                    'icon' = 'https://www.timesofisrael.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '+972 Magazine - Critiques of fashion industry and social issues'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss - Alternative stories on ethical fashion in conflict zones'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                },
                @{
                    'Title' = 'Electronic Intifada - Reporting on cultural resistance through fashion'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Cloe Feldman - Vlogs on Israeli beauty and fashion trends'
                'URL' = 'https://www.youtube.com/channel/UC9M-CBdQ4FgRmf6WKzFj4jw'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'The Life Of Kurtis - Street style explorations in Tel Aviv'
                'URL' = 'https://www.youtube.com/@TheLifeOfKurtis'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Fashion Channel - Coverage of Tel Aviv Fashion Week events'
                'URL' = 'https://www.youtube.com/c/FashionChannel'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'ILTV Israel News - Videos on Israeli designers and runways'
                'URL' = 'https://www.youtube.com/c/ILTVIsraelNews'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Undressing Fashion - Psychology of Israeli style and trends'
                'URL' = 'https://open.spotify.com/show/1Od1qoAFMUedA8zhXARhHC'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'The JewishBoston Podcast - History of Israeli fashion evolution'
                'URL' = 'https://www.jewishboston.com/read/the-jewishboston-podcast-episode-37-70-years-of-israeli-fashion-with-liri-cohen/'
                'icon' = 'https://www.jewishboston.com/favicon.ico'
            },
            @{
                'Title' = 'Bold Faith and Fashion - Modest dressing in Israeli culture'
                'URL' = 'https://podcasts.apple.com/us/podcast/bold-faith-and-fashion/id1679169299'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Israel Defense - Updates on IDF operations and defense tech'
                    'URL' = 'https://www.israeldefense.co.il/en'
                    'icon' = 'https://www.israeldefense.co.il/favicon.ico'
                },
                @{
                    'Title' = 'Jerusalem Post IDF - Coverage of Israeli military strategies and exercises'
                    'URL' = 'https://www.jpost.com/tags/IDF'
                    'icon' = 'https://www.jpost.com/favicon.ico'
                },
                @{
                    'Title' = 'Times of Israel IDF - Reports on Gaza border security and reserves'
                    'URL' = 'https://www.timesofisrael.com/topic/idf-israel-defense-forces/'
                    'icon' = 'https://www.timesofisrael.com/favicon.ico'
                },
                @{
                    'Title' = 'i24NEWS Defense - News on Israeli air force and intelligence'
                    'URL' = 'https://www.i24news.tv/en/news/israel/defense'
                    'icon' = 'https://www.i24news.tv/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '+972 Magazine Military - Investigative reports on IDF tactics'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Breaking Defense - Alternative analysis of Israeli arms sales'
                    'URL' = 'https://breakingdefense.com/tag/israel/'
                    'icon' = 'https://breakingdefense.com/favicon.ico'
                },
                @{
                    'Title' = 'Electronic Intifada - Critical coverage of military actions in Gaza'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Israel Defense Forces - Official vlogs from IDF training and missions'
                'URL' = 'https://www.youtube.com/c/IsraelDefenseForces'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Task and Purpose - Analyses of Israeli military equipment and strategies'
                'URL' = 'https://www.youtube.com/c/Taskandpurpose'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Combat Veteran Reacts - Reviews of IDF operations and gear'
                'URL' = 'https://www.youtube.com/c/CombatVeteranReacts'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'ILTV Israel News - Videos on defense innovations and soldier stories'
                'URL' = 'https://www.youtube.com/c/ILTVIsraelNews'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Mission Brief - Behind-the-scenes of IDF operations and readiness'
                'URL' = 'https://podcasts.apple.com/us/podcast/mission-brief-the-official-podcast-of-the/id1714807359'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Call Me Back - Discussions on Israeli security and defense policies'
                'URL' = 'https://podcasts.apple.com/us/podcast/call-me-back-with-dan-senor/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'The Tikvah Podcast - Expert talks on military strategy and threats'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-tikvah-podcast/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
    }
}
'Jordan' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Jordan Times Business - Premier English-language source for Jordanian economy updates'
                    'URL' = 'http://jordantimes.com/news/business'
                    'icon' = 'http://jordantimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Roya News Business - In-depth analysis of Jordan''s financial markets and corporate news'
                    'URL' = 'https://en.royanews.tv/section/1'
                    'icon' = 'https://en.royanews.tv/favicon.ico'
                },
                @{
                    'Title' = 'AGBI Jordan Business - Comprehensive coverage of Jordanian economic policies and trade'
                    'URL' = 'https://www.agbi.com/middle-east/jordan/'
                    'icon' = 'https://www.agbi.com/favicon.ico'
                },
                @{
                    'Title' = 'Jordan News Business - Reports on Jordanian innovation and investment opportunities'
                    'URL' = 'https://www.jordannews.jo/Section-72/Business'
                    'icon' = 'https://www.jordannews.jo/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '7iber - Independent perspectives on Jordanian economic inequalities'
                    'URL' = 'https://www.7iber.com/'
                    'icon' = 'https://www.7iber.com/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Jordan - Critical analysis of Jordan''s business ties and sanctions'
                    'URL' = 'https://www.al-monitor.com/jordan'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Ammon News - Alternative views on Jordanian business and finance'
                    'URL' = 'http://en.ammonnews.net/'
                    'icon' = 'http://en.ammonnews.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Roya News - Vlogs on Jordanian startups and economic resilience'
                'URL' = 'https://www.youtube.com/@RoyaNewsTV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ibn Hattuta Travels - Insights into Jordan''s entrepreneurial ecosystems and markets'
                'URL' = 'https://www.youtube.com/c/IbnHattutaTravels'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Joe Hattab - Videos exploring Jordanian business culture and trade'
                'URL' = 'https://www.youtube.com/c/JoeHattab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Basil Elhaj - Features on Jordan''s food industry and economic trends'
                'URL' = 'https://www.youtube.com/c/BasilElhaj'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Sowt Business - Discussions on Jordan''s economic recovery and policies'
                'URL' = 'https://sowt.news/en/podcasts'
                'icon' = 'https://sowt.news/favicon.ico'
            },
            @{
                'Title' = 'Deewan Arabic Podcast - Analysis of Jordanian business challenges and opportunities'
                'URL' = 'https://deewaninstitute.com/podcast/'
                'icon' = 'https://deewaninstitute.com/favicon.ico'
            },
            @{
                'Title' = 'On Jordan - Insights into business innovation amid geopolitical tensions'
                'URL' = 'https://open.spotify.com/show/2nxAPryfCg53gjZ470gmYS'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Roya News Sports - Coverage of Jordanian soccer basketball and athletics'
                    'URL' = 'https://en.royanews.tv/section/9'
                    'icon' = 'https://en.royanews.tv/favicon.ico'
                },
                @{
                    'Title' = 'Jordan Times Sports - Reports on Jordan teams in regional leagues and Olympics'
                    'URL' = 'http://jordantimes.com/news/sports'
                    'icon' = 'http://jordantimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Jordan News Sports - Updates on national team performances and league news'
                    'URL' = 'https://www.jordannews.jo/Section-73/Local%20Sports'
                    'icon' = 'https://www.jordannews.jo/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Jordan Sports - Features on Jordanian athletes and competitions'
                    'URL' = 'https://english.alarabiya.net/locations/jordan'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '7iber Sports - Independent stories on athlete rights and sports politics'
                    'URL' = 'https://www.7iber.com/'
                    'icon' = 'https://www.7iber.com/favicon.ico'
                },
                @{
                    'Title' = 'Ammon News Sports - Critical views on discrimination in Jordanian sports'
                    'URL' = 'http://en.ammonnews.net/'
                    'icon' = 'http://en.ammonnews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Sports - Alternative reporting on regional sports tensions'
                    'URL' = 'https://www.al-monitor.com/jordan'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Abood Saadi - Vlogs on Jordanian football and soccer highlights'
                'URL' = 'https://www.youtube.com/c/AboodSaadi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Roya News Sports - Videos of Jordanian games and athlete stories'
                'URL' = 'https://www.youtube.com/@RoyaNewsTV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Huna Amman - Vlogs featuring Jordanian sports events and culture'
                'URL' = 'https://www.youtube.com/c/HunaAmman'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Jordanian Sports Fan - Follows national athletes and game analyses'
                'URL' = 'https://www.youtube.com/results?search_query=jordanian+sports+fan'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Sowt Sports - Episodes on Jordanian soccer and basketball leagues'
                'URL' = 'https://sowt.news/en/podcasts'
                'icon' = 'https://sowt.news/favicon.ico'
            },
            @{
                'Title' = 'On Jordan Sports - Stories of Jordanian teams and sports history'
                'URL' = 'https://open.spotify.com/show/2nxAPryfCg53gjZ470gmYS'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Deewan Sports - Discussions on Jordanian athletes and regional competitions'
                'URL' = 'https://deewaninstitute.com/podcast/'
                'icon' = 'https://deewaninstitute.com/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Jordan News Culture - Reviews of Jordanian arts theater and festivals'
                    'URL' = 'https://www.jordannews.jo/Section-117/Culture%20%26%20Arts'
                    'icon' = 'https://www.jordannews.jo/favicon.ico'
                },
                @{
                    'Title' = 'Roya News Culture - Features on Jordanian literature music and cinema'
                    'URL' = 'https://en.royanews.tv/'
                    'icon' = 'https://en.royanews.tv/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Culture - News on Jordanian art exhibitions and cultural events'
                    'URL' = 'https://english.alarabiya.net/locations/jordan'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                },
                @{
                    'Title' = 'Jordan Times Culture - Coverage of Arab heritage and modern arts'
                    'URL' = 'http://jordantimes.com/'
                    'icon' = 'http://jordantimes.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '7iber Culture - Independent critiques of Jordanian cultural policies'
                    'URL' = 'https://www.7iber.com/'
                    'icon' = 'https://www.7iber.com/favicon.ico'
                },
                @{
                    'Title' = 'Ammon News Culture - Alternative views on regional cultural exchanges'
                    'URL' = 'http://en.ammonnews.net/'
                    'icon' = 'http://en.ammonnews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Culture - Progressive perspectives on Jordanian arts and society'
                    'URL' = 'https://www.al-monitor.com/jordan'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Ibn Hattuta Travels - Vlogs on Jordanian society culture and daily life'
                'URL' = 'https://www.youtube.com/c/IbnHattutaTravels'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Joe Hattab - Cultural explorations of Jordanian traditions and history'
                'URL' = 'https://www.youtube.com/c/JoeHattab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Basil Elhaj - Bridging cultures through vlogs on Jordanian festivals'
                'URL' = 'https://www.youtube.com/c/BasilElhaj'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Roya News Culture - Videos showcasing Jordanian arts and heritage sites'
                'URL' = 'https://www.youtube.com/@RoyaNewsTV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Deewan Arabic Podcast - Episodes on cultural milestones and figures'
                'URL' = 'https://deewaninstitute.com/podcast/'
                'icon' = 'https://deewaninstitute.com/favicon.ico'
            },
            @{
                'Title' = 'Sowt Culture - Conversations with Jordanian artists and cultural creators'
                'URL' = 'https://sowt.news/en/podcasts'
                'icon' = 'https://sowt.news/favicon.ico'
            },
            @{
                'Title' = 'On Jordan Culture - Narrative tales of Jordanian culture and personal stories'
                'URL' = 'https://open.spotify.com/show/2nxAPryfCg53gjZ470gmYS'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Jordan News Tech - Latest on Jordanian tech innovations and startups'
                    'URL' = 'https://www.jordannews.jo/Story/t/1006/Science-and-Technology'
                    'icon' = 'https://www.jordannews.jo/favicon.ico'
                },
                @{
                    'Title' = 'Jordan Times Science - Coverage of Jordanian research breakthroughs'
                    'URL' = 'http://jordantimes.com/news/science-technology'
                    'icon' = 'http://jordantimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Roya News Tech - News on Jordanian cybersecurity and AI developments'
                    'URL' = 'https://en.royanews.tv/section/10'
                    'icon' = 'https://en.royanews.tv/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Tech - Reports on Jordanian defense tech and achievements'
                    'URL' = 'https://english.alarabiya.net/locations/jordan'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '7iber Tech - Critical analysis of Jordanian surveillance technologies'
                    'URL' = 'https://www.7iber.com/'
                    'icon' = 'https://www.7iber.com/favicon.ico'
                },
                @{
                    'Title' = 'Ammon News Tech - Alternative reporting on tech impacts in region'
                    'URL' = 'http://en.ammonnews.net/'
                    'icon' = 'http://en.ammonnews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Tech - Perspectives on ethical issues in Jordanian science'
                    'URL' = 'https://www.al-monitor.com/jordan'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Jordan University of Science and Technology - Vlogs on Jordanian biotech and innovation hubs'
                'URL' = 'https://www.youtube.com/channel/UCVLYZ-9I6nTA8-WgergKF0g'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Roya News Tech - Videos exploring Jordanian life-saving technologies'
                'URL' = 'https://www.youtube.com/@RoyaNewsTV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ibn Hattuta Tech - Interviews with Jordanian tech thought leaders'
                'URL' = 'https://www.youtube.com/c/IbnHattutaTravels'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Joe Hattab Innovation - Explanations of Jordanian water tech and sustainability'
                'URL' = 'https://www.youtube.com/c/JoeHattab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Sowt Tech - Talks with Jordanian tech founders and investors'
                'URL' = 'https://sowt.news/en/podcasts'
                'icon' = 'https://sowt.news/favicon.ico'
            },
            @{
                'Title' = 'On Jordan Tech - Updates on AI and cybersecurity in Jordan'
                'URL' = 'https://open.spotify.com/show/2nxAPryfCg53gjZ470gmYS'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Deewan Science - Stories of Jordanian tech startups and breakthroughs'
                'URL' = 'https://deewaninstitute.com/podcast/'
                'icon' = 'https://deewaninstitute.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Jordan Times Politics - Breaking news on Jordanian government and elections'
                    'URL' = 'http://jordantimes.com/news/local'
                    'icon' = 'http://jordantimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Roya News Politics - Analysis of Jordanian parliament debates and policy shifts'
                    'URL' = 'https://en.royanews.tv/section/2'
                    'icon' = 'https://en.royanews.tv/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Politics - Coverage of Jordanian monarchy and coalitions'
                    'URL' = 'https://english.alarabiya.net/locations/jordan'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                },
                @{
                    'Title' = 'Jordan News Politics - Updates on Jordanian foreign relations and security'
                    'URL' = 'https://www.jordannews.jo/Section-106/Features'
                    'icon' = 'https://www.jordannews.jo/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '7iber Politics - Independent journalism on Jordanian governance policies'
                    'URL' = 'https://www.7iber.com/'
                    'icon' = 'https://www.7iber.com/favicon.ico'
                },
                @{
                    'Title' = 'Ammon News Politics - Critical reporting on Jordanian political decisions'
                    'URL' = 'http://en.ammonnews.net/'
                    'icon' = 'http://en.ammonnews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Politics - Alternative narratives on Jordanian monarchy'
                    'URL' = 'https://www.al-monitor.com/jordan'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Mudar Zahran - Vlogs explaining Jordanian-Palestinian political dynamics'
                'URL' = 'https://www.youtube.com/results?search_query=mudar+zahran'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Roya News Politics - Political commentary through Jordanian cultural lens'
                'URL' = 'https://www.youtube.com/@RoyaNewsTV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ibn Hattuta Politics - Videos on Jordanian parliament sessions and protests'
                'URL' = 'https://www.youtube.com/c/IbnHattutaTravels'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Joe Hattab Commentary - Lectures on Jordanian politics and society'
                'URL' = 'https://www.youtube.com/c/JoeHattab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'On Jordan - Two experts unpacking Jordanian political news'
                'URL' = 'https://open.spotify.com/show/2nxAPryfCg53gjZ470gmYS'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Sowt Politics - Discussions on Jordan''s political landscape'
                'URL' = 'https://sowt.news/en/podcasts'
                'icon' = 'https://sowt.news/favicon.ico'
            },
            @{
                'Title' = 'Deewan Politics - Expert talks on Jordanian foreign policy and governance'
                'URL' = 'https://deewaninstitute.com/podcast/'
                'icon' = 'https://deewaninstitute.com/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Jordan News Fashion - Coverage of Amman Fashion Week and designers'
                    'URL' = 'https://www.jordannews.jo/Section-48/Fashion'
                    'icon' = 'https://www.jordannews.jo/favicon.ico'
                },
                @{
                    'Title' = 'Jordan Times Lifestyle - Features on Jordanian modest and street fashion'
                    'URL' = 'http://jordantimes.com/news/local/lifestyle'
                    'icon' = 'http://jordantimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Roya News Fashion - News on sustainable Jordanian apparel trends'
                    'URL' = 'https://en.royanews.tv/section/8'
                    'icon' = 'https://en.royanews.tv/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Fashion - Reports on cultural influences in Jordanian style'
                    'URL' = 'https://english.alarabiya.net/locations/jordan'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '7iber Fashion - Critiques of fashion industry and social issues'
                    'URL' = 'https://www.7iber.com/'
                    'icon' = 'https://www.7iber.com/favicon.ico'
                },
                @{
                    'Title' = 'Ammon News Fashion - Alternative stories on ethical fashion in region'
                    'URL' = 'http://en.ammonnews.net/'
                    'icon' = 'http://en.ammonnews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Fashion - Reporting on cultural resistance through fashion'
                    'URL' = 'https://www.al-monitor.com/jordan'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Ghada Othman - Vlogs on Jordanian beauty and fashion trends'
                'URL' = 'https://www.youtube.com/results?search_query=ghada+othman+fashion'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Rana Alnsour - Street style explorations in Amman'
                'URL' = 'https://www.youtube.com/results?search_query=rana+alnsour+fashion'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Suha Fashion - Coverage of Amman Fashion Week events'
                'URL' = 'https://www.youtube.com/results?search_query=suha+fashion+jordan'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Roya News Fashion - Videos on Jordanian designers and runways'
                'URL' = 'https://www.youtube.com/@RoyaNewsTV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Sowt Fashion - Psychology of Jordanian style and trends'
                'URL' = 'https://sowt.news/en/podcasts'
                'icon' = 'https://sowt.news/favicon.ico'
            },
            @{
                'Title' = 'Deewan Fashion - History of Jordanian fashion evolution'
                'URL' = 'https://deewaninstitute.com/podcast/'
                'icon' = 'https://deewaninstitute.com/favicon.ico'
            },
            @{
                'Title' = 'On Jordan Fashion - Modest dressing in Jordanian culture'
                'URL' = 'https://open.spotify.com/show/2nxAPryfCg53gjZ470gmYS'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Jordan Armed Forces - Updates on JAF operations and defense tech'
                    'URL' = 'https://www.jaf.mil.jo/newsen.aspx'
                    'icon' = 'https://www.jaf.mil.jo/favicon.ico'
                },
                @{
                    'Title' = 'Jordan Times Defense - Coverage of Jordanian military strategies and exercises'
                    'URL' = 'http://jordantimes.com/news/local/defense'
                    'icon' = 'http://jordantimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Roya News Defense - Reports on border security and reserves'
                    'URL' = 'https://en.royanews.tv/section/3'
                    'icon' = 'https://en.royanews.tv/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Defense - News on Jordanian air force and intelligence'
                    'URL' = 'https://english.alarabiya.net/locations/jordan'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '7iber Military - Investigative reports on JAF tactics'
                    'URL' = 'https://www.7iber.com/'
                    'icon' = 'https://www.7iber.com/favicon.ico'
                },
                @{
                    'Title' = 'Ammon News Military - Alternative analysis of Jordanian arms sales'
                    'URL' = 'http://en.ammonnews.net/'
                    'icon' = 'http://en.ammonnews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Military - Critical coverage of military actions in region'
                    'URL' = 'https://www.al-monitor.com/jordan'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Jordan Armed Forces Official - Official vlogs from JAF training and missions'
                'URL' = 'https://www.youtube.com/user/JordanArmedForces'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Roya News Defense - Analyses of Jordanian military equipment and strategies'
                'URL' = 'https://www.youtube.com/@RoyaNewsTV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'KASOTC - Reviews of JAF operations and gear'
                'URL' = 'https://www.youtube.com/results?search_query=kasotc+jordan'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ibn Hattuta Military - Videos on defense innovations and soldier stories'
                'URL' = 'https://www.youtube.com/c/IbnHattutaTravels'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'On Jordan Military - Behind-the-scenes of JAF operations and readiness'
                'URL' = 'https://open.spotify.com/show/2nxAPryfCg53gjZ470gmYS'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Sowt Defense - Discussions on Jordanian security and defense policies'
                'URL' = 'https://sowt.news/en/podcasts'
                'icon' = 'https://sowt.news/favicon.ico'
            },
            @{
                'Title' = 'Deewan Military - Expert talks on military strategy and threats'
                'URL' = 'https://deewaninstitute.com/podcast/'
                'icon' = 'https://deewaninstitute.com/favicon.ico'
            }
        )
    }
}
'Kuwait' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Kuwait Times Business - Premier English-language source for Kuwaiti economy updates'
                    'URL' = 'https://kuwaittimes.com/business/'
                    'icon' = 'https://kuwaittimes.com/favicon.ico'
                },
                @{
                    'Title' = 'AGBI Kuwait Financial News - In-depth analysis of Kuwait''s financial markets and corporate news'
                    'URL' = 'https://www.agbi.com/middle-east/kuwait/'
                    'icon' = 'https://www.agbi.com/favicon.ico'
                },
                @{
                    'Title' = 'Zawya Kuwait Business - Comprehensive coverage of Kuwaiti economic policies and trade'
                    'URL' = 'https://www.zawya.com/relatedkeywords/KUWAIT'
                    'icon' = 'https://www.zawya.com/favicon.ico'
                },
                @{
                    'Title' = 'Arabian Business Kuwait - Reports on Kuwaiti innovation and investment opportunities'
                    'URL' = 'https://www.arabianbusiness.com/gcc/kuwait'
                    'icon' = 'https://www.arabianbusiness.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Al-Monitor Kuwait - Independent perspectives on Kuwaiti economic inequalities'
                    'URL' = 'https://www.al-monitor.com/kuwait'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Kuwait - Critical analysis of Kuwait''s business ties and sanctions'
                    'URL' = 'https://www.middleeasteye.net/countries/kuwait'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'GCC Business Watch Alternative - Alternative views on Kuwaiti business and finance'
                    'URL' = 'https://gccbusinesswatch.com/newscategory/gcccat/kuwait/'
                    'icon' = 'https://gccbusinesswatch.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Neda Shadid - Vlogs on Kuwaiti startups and economic resilience'
                'URL' = 'https://www.youtube.com/@nedashadid'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Mohammed AlMutawa - Insights into Kuwait''s entrepreneurial ecosystems and markets'
                'URL' = 'https://www.youtube.com/@mohdalmutawa'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'TheBloush Business - Videos exploring Kuwaiti business culture and trade'
                'URL' = 'https://www.youtube.com/@alialbloushi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Kuwait Vlogs Business - Features on Kuwait''s food industry and economic trends'
                'URL' = 'https://www.youtube.com/playlist?list=PLfjOw7vveQyXjWNGlFChzN_l7Usx4kcRW'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'KuwaitMart Podcast - Discussions on Kuwait''s economic recovery and policies'
                'URL' = 'https://podcasts.apple.com/us/podcast/kuwaitmart-podcast/id1718311721'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Kuwait Business Stories - Analysis of Kuwaiti business challenges and opportunities'
                'URL' = 'https://podnews.net/podcast/iaz6y'
                'icon' = 'https://podnews.net/favicon.ico'
            },
            @{
                'Title' = 'Bitesize Business Breakfast - Insights into business innovation amid geopolitical tensions'
                'URL' = 'https://podcast.feedspot.com/middle_east_business_podcasts/'
                'icon' = 'https://podcast.feedspot.com/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Kuwait Times Sports - Coverage of Kuwaiti soccer basketball and athletics'
                    'URL' = 'https://kuwaittimes.com/sports/'
                    'icon' = 'https://kuwaittimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Arab Times Sports - Reports on Kuwait teams in regional leagues and Olympics'
                    'URL' = 'https://www.arabtimesonline.com/news/category/sports/'
                    'icon' = 'https://www.arabtimesonline.com/favicon.ico'
                },
                @{
                    'Title' = 'Times Kuwait Sports - Updates on national team performances and league news'
                    'URL' = 'https://timeskuwait.com/category/news/sports/'
                    'icon' = 'https://timeskuwait.com/favicon.ico'
                },
                @{
                    'Title' = 'NewsNow Kuwait Sports - Features on Kuwaiti athletes and competitions'
                    'URL' = 'https://www.newsnow.co.uk/h/World+News/Middle+East/Kuwait/Sport'
                    'icon' = 'https://www.newsnow.co.uk/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'IIK Sports - Independent stories on athlete rights and sports politics'
                    'URL' = 'https://www.indiansinkuwait.com/sports/'
                    'icon' = 'https://www.indiansinkuwait.com/favicon.ico'
                },
                @{
                    'Title' = 'Kuwait Sports Sites Alternative - Critical views on discrimination in Kuwaiti sports'
                    'URL' = 'https://www.allyoucanread.com/kuwait-sports/'
                    'icon' = 'https://www.allyoucanread.com/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Sports - Alternative reporting on regional sports tensions'
                    'URL' = 'https://www.al-monitor.com/kuwait'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'M12 ALFOUZAN - Vlogs on Kuwaiti football and soccer highlights'
                'URL' = 'https://www.youtube.com/@M12ALFOUZAN'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'WahabFreestyler - Videos of Kuwaiti games and athlete stories'
                'URL' = 'https://www.youtube.com/@WahabFreestyler'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ahmed ALMEARAJ - Vlogs featuring Kuwaiti sports events and culture'
                'URL' = 'https://www.youtube.com/@AhmedALMEARAJ'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Musaed Alfouzan - Follows national athletes and game analyses'
                'URL' = 'https://www.youtube.com/@MusaedAlfouzan'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Jawla Podcast Sports - Episodes on Kuwaiti soccer and basketball leagues'
                'URL' = 'https://www.youtube.com/watch?v=IIOG0fvh3sY'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Kuwaiti Sports Podcast - Stories of Kuwaiti teams and sports history'
                'URL' = 'https://www.youtube.com/watch?v=Ft5pqQ5I7Zc'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Iraq Football Podcast Kuwait - Discussions on Kuwaiti athletes and regional competitions'
                'URL' = 'https://www.youtube.com/watch?v=VoDm3L2erTI'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Kuwait Times Culture - Reviews of Kuwaiti arts theater and festivals'
                    'URL' = 'https://kuwaittimes.com/lifestyle/art-and-fashion/'
                    'icon' = 'https://kuwaittimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Times Kuwait Culture - Features on Kuwaiti literature music and cinema'
                    'URL' = 'https://timeskuwait.com/'
                    'icon' = 'https://timeskuwait.com/favicon.ico'
                },
                @{
                    'Title' = 'KUNA Culture - News on Kuwaiti art exhibitions and cultural events'
                    'URL' = 'https://www.kuna.net.kw/Default.aspx?language=en'
                    'icon' = 'https://www.kuna.net.kw/favicon.ico'
                },
                @{
                    'Title' = 'Arab Times Culture - Coverage of Arab heritage and modern arts'
                    'URL' = 'https://www.arabtimesonline.com/'
                    'icon' = 'https://www.arabtimesonline.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Al-Monitor Culture - Independent critiques of Kuwaiti cultural policies'
                    'URL' = 'https://www.al-monitor.com/kuwait'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Culture - Alternative views on regional cultural exchanges'
                    'URL' = 'https://www.middleeasteye.net/countries/kuwait'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'BBC Kuwait Media - Progressive perspectives on Kuwaiti arts and society'
                    'URL' = 'https://www.bbc.com/news/world-middle-east-14646837'
                    'icon' = 'https://www.bbc.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Kuwait Vlogs Culture - Vlogs on Kuwaiti society culture and daily life'
                'URL' = 'https://www.youtube.com/playlist?list=PLkMQCL4YSxuwxiwEPbQr3Xg8DBrwzHHFC'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'NaturallyFashionable - Cultural explorations of Kuwaiti traditions and history'
                'URL' = 'https://www.youtube.com/@NaturallyFashionable'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Fouz Al Fahad - Bridging cultures through vlogs on Kuwaiti festivals'
                'URL' = 'https://www.youtube.com/@fouz'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'TheBloush Culture - Videos showcasing Kuwaiti arts and heritage sites'
                'URL' = 'https://www.youtube.com/@alialbloushi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'At My Kuwaiti Table - Episodes on cultural milestones and figures'
                'URL' = 'https://open.spotify.com/show/4fbdK1SDo486GbHXoQqy8C'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Kuwait True Crimes Culture - Conversations with Kuwaiti artists and cultural creators'
                'URL' = 'https://podcast.feedspot.com/kuwait_podcasts/'
                'icon' = 'https://podcast.feedspot.com/favicon.ico'
            },
            @{
                'Title' = 'Culture Corner PCC - Narrative tales of Kuwaiti culture and personal stories'
                'URL' = 'https://rss.com/podcasts/culturecornerinpcc/'
                'icon' = 'https://rss.com/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Kuwait Times Technology - Latest on Kuwaiti tech innovations and startups'
                    'URL' = 'https://kuwaittimes.com/technology/'
                    'icon' = 'https://kuwaittimes.com/favicon.ico'
                },
                @{
                    'Title' = 'KFAS Science News - Coverage of Kuwaiti research breakthroughs'
                    'URL' = 'https://www.kfas.org/News'
                    'icon' = 'https://www.kfas.org/favicon.ico'
                },
                @{
                    'Title' = 'KISR Technology - News on Kuwaiti cybersecurity and AI developments'
                    'URL' = 'https://www.kisr.edu.kw/'
                    'icon' = 'https://www.kisr.edu.kw/favicon.ico'
                },
                @{
                    'Title' = 'GUST Science News - Reports on Kuwaiti defense tech and achievements'
                    'URL' = 'https://www.gust.edu.kw/news'
                    'icon' = 'https://www.gust.edu.kw/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Al-Monitor Tech - Critical analysis of Kuwaiti surveillance technologies'
                    'URL' = 'https://www.al-monitor.com/kuwait'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Tech - Alternative reporting on tech impacts in region'
                    'URL' = 'https://www.middleeasteye.net/countries/kuwait'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Research.com Kuwait Science - Perspectives on ethical issues in Kuwaiti science'
                    'URL' = 'https://research.com/scientists-rankings/engineering-and-technology/kw'
                    'icon' = 'https://research.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Omardizer - Vlogs on Kuwaiti biotech and innovation hubs'
                'URL' = 'https://www.youtube.com/@Omardizer'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hands Skills Tech - Videos exploring Kuwaiti life-saving technologies'
                'URL' = 'https://www.youtube.com/@HandsSkills'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Kuwait College of Science - Interviews with Kuwaiti tech thought leaders'
                'URL' = 'https://www.youtube.com/@KCSTKWT'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Welding Skills - Explanations of Kuwaiti water tech and sustainability'
                'URL' = 'https://www.youtube.com/@WeldingSkills'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'KFAS Podcast - Talks with Kuwaiti tech founders and investors'
                'URL' = 'https://www.youtube.com/playlist?list=PLBuVaewa7-fNtvOzdeOnV_qcaa6r2xdbD'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Elearn Radiology - Updates on AI and cybersecurity in Kuwait'
                'URL' = 'https://podcast.feedspot.com/kuwait_podcasts/'
                'icon' = 'https://podcast.feedspot.com/favicon.ico'
            },
            @{
                'Title' = 'MindSET Leidos - Stories of Kuwaiti tech startups and breakthroughs'
                'URL' = 'https://www.leidos.com/mindset-podcast'
                'icon' = 'https://www.leidos.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Kuwait Times Politics - Breaking news on Kuwaiti government and elections'
                    'URL' = 'https://kuwaittimes.com/kuwait/politics/'
                    'icon' = 'https://kuwaittimes.com/favicon.ico'
                },
                @{
                    'Title' = 'KUNA Politics - Analysis of Kuwaiti parliament debates and policy shifts'
                    'URL' = 'https://www.kuna.net.kw/Default.aspx?language=en'
                    'icon' = 'https://www.kuna.net.kw/favicon.ico'
                },
                @{
                    'Title' = 'Times Kuwait Politics - Coverage of Kuwaiti monarchy and coalitions'
                    'URL' = 'https://timeskuwait.com/'
                    'icon' = 'https://timeskuwait.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Kuwait - Updates on Kuwaiti foreign relations and security'
                    'URL' = 'https://www.aljazeera.com/where/kuwait/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Al-Monitor Politics - Independent journalism on Kuwaiti governance policies'
                    'URL' = 'https://www.al-monitor.com/kuwait'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Politics - Critical reporting on Kuwaiti political decisions'
                    'URL' = 'https://www.middleeasteye.net/countries/kuwait'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'BBC Kuwait Politics - Alternative narratives on Kuwaiti monarchy'
                    'URL' = 'https://www.bbc.com/news/world-middle-east-14646837'
                    'icon' = 'https://www.bbc.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Abdullah Bin JarAllah - Vlogs explaining Kuwaiti political dynamics'
                'URL' = 'https://www.youtube.com/@AbdullahBinJarAllah'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ammar Taqi - Political commentary through Kuwaiti cultural lens'
                'URL' = 'https://www.youtube.com/@AmmarTaqi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'TheBloush Politics - Videos on Kuwaiti parliament sessions and protests'
                'URL' = 'https://www.youtube.com/@alialbloushi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Abdullah Al-Salloum - Lectures on Kuwaiti politics and society'
                'URL' = 'https://www.youtube.com/@AbdullahAlSalloum'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'POMEPS Kuwait Politics - Two experts unpacking Kuwaiti political news'
                'URL' = 'https://pomeps.org/pomeps-conversations'
                'icon' = 'https://pomeps.org/favicon.ico'
            },
            @{
                'Title' = 'Resilience of Parliamentary Politics - Discussions on Kuwait''s political landscape'
                'URL' = 'https://soundcloud.com/pomeps-245027518/the-resilience-of-parliamentary-politics-in-kuwait-s-13-ep-23'
                'icon' = 'https://soundcloud.com/favicon.ico'
            },
            @{
                'Title' = 'Bridging the Gulf Kuwait - Expert talks on Kuwaiti foreign policy and governance'
                'URL' = 'https://meinus.podbean.com/e/bridging-the-gulf-episode-4-%25E2%2580%2594-answering-the-five-w-s-of-kuwaiti-democracy/'
                'icon' = 'https://meinus.podbean.com/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Times Kuwait Fashion - Coverage of Kuwait Fashion Week and designers'
                    'URL' = 'https://timeskuwait.com/category/lifestyle/fashion/'
                    'icon' = 'https://timeskuwait.com/favicon.ico'
                },
                @{
                    'Title' = 'Kuwait Times Art Fashion - Features on Kuwaiti modest and street fashion'
                    'URL' = 'https://kuwaittimes.com/lifestyle/art-and-fashion/'
                    'icon' = 'https://kuwaittimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Kuwait Moments Fashion - News on sustainable Kuwaiti apparel trends'
                    'URL' = 'https://www.kuwaitmoments.com/fashion/'
                    'icon' = 'https://www.kuwaitmoments.com/favicon.ico'
                },
                @{
                    'Title' = 'Grazia Kuwait Fashion - Reports on cultural influences in Kuwaiti style'
                    'URL' = 'https://graziamagazine.com/me/articles/kuwait-fashion-brands/'
                    'icon' = 'https://graziamagazine.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Vogue Arabia Kuwait - Critiques of fashion industry and social issues'
                    'URL' = 'https://www.vogue.com/article/meet-the-kuwaiti-luxury-consumer-savvy-sophisticated-and-hyper-local'
                    'icon' = 'https://www.vogue.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Magazine Fashion - Alternative stories on ethical fashion in region'
                    'URL' = 'https://gulfmagazine.co/fashion-forward-kuwait-emerging/'
                    'icon' = 'https://gulfmagazine.co/favicon.ico'
                },
                @{
                    'Title' = 'SheerLuxe Fashion - Reporting on cultural resistance through fashion'
                    'URL' = 'https://sheerluxe.com/video/middle-east/48-hours-in-kuwait-discovering-the-kuwaiti-fashion-scene-at-the-oud-fashion-talks'
                    'icon' = 'https://sheerluxe.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'NaturallyFashionable Fashion - Vlogs on Kuwaiti beauty and fashion trends'
                'URL' = 'https://www.youtube.com/@NaturallyFashionable'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Glamour Vlogs - Street style explorations in Kuwait City'
                'URL' = 'https://www.youtube.com/@GlamourVlogs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Fouz Al Fahad Fashion - Coverage of Kuwait Fashion Week events'
                'URL' = 'https://www.youtube.com/@fouz'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'BADER YOUSEF - Videos on Kuwaiti designers and runways'
                'URL' = 'https://www.youtube.com/@BADERYOUSEF'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Lovin Kuwait Fashion - Psychology of Kuwaiti style and trends'
                'URL' = 'https://podcasts.apple.com/us/podcast/kuwait-on-diors-canvas/id1764877960?i=1000729135278'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'SheerLuxe Middle East - History of Kuwaiti fashion evolution'
                'URL' = 'https://www.youtube.com/watch?v=eGU_0BQPb1s'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Business of Fashion - Modest dressing in Kuwaiti culture'
                'URL' = 'https://podcasts.apple.com/kw/podcast/the-business-of-fashion-podcast/id1225204588'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Kuwait Times Military - Updates on Kuwait Armed Forces operations and defense tech'
                    'URL' = 'https://kuwaittimes.com/tag/kuwait-military/'
                    'icon' = 'https://kuwaittimes.com/favicon.ico'
                },
                @{
                    'Title' = 'KUNA Defense - Coverage of Kuwaiti military strategies and exercises'
                    'URL' = 'https://www.kuna.net.kw/Default.aspx?language=en'
                    'icon' = 'https://www.kuna.net.kw/favicon.ico'
                },
                @{
                    'Title' = 'US Army Central Kuwait - Reports on border security and reserves'
                    'URL' = 'https://www.usarcent.army.mil/News/Tag/12584/kuwait/'
                    'icon' = 'https://www.usarcent.army.mil/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Defense - News on Kuwaiti air force and intelligence'
                    'URL' = 'https://www.al-monitor.com/kuwait'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'EIN Presswire Military - Investigative reports on Kuwait Armed Forces tactics'
                    'URL' = 'https://military.einnews.com/country/kuwait'
                    'icon' = 'https://military.einnews.com/favicon.ico'
                },
                @{
                    'Title' = 'TURDEF Kuwait Defence - Alternative analysis of Kuwaiti arms sales'
                    'URL' = 'https://turdef.com/country/kuwait-news'
                    'icon' = 'https://turdef.com/favicon.ico'
                },
                @{
                    'Title' = 'Counter Extremism Kuwait - Critical coverage of military actions in region'
                    'URL' = 'https://www.counterextremism.com/countries/kuwait-extremism-and-terrorism'
                    'icon' = 'https://www.counterextremism.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Kuwait Armed Forces Official - Official vlogs from training and missions'
                'URL' = 'https://www.youtube.com/user/KuwaitArmedForces'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Dominga Shataun Military - Analyses of Kuwaiti military equipment and strategies'
                'URL' = 'https://www.youtube.com/c/DomingaShataun'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Military Vlog Kuwait - Reviews of operations and gear'
                'URL' = 'https://www.youtube.com/watch?v=S-iJl0xF3FQ'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'MIR Kuwait Vlogs - Videos on defense innovations and soldier stories'
                'URL' = 'https://www.youtube.com/channel/UCWuZzfobWPQGnOtv2TdgSgg'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'War and Trauma Kuwait - Behind-the-scenes of Kuwait Armed Forces operations and readiness'
                'URL' = 'https://podcasts.apple.com/us/podcast/war-and-trauma-us-army-in-kuwait/id1217923682?i=1000703335524'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'The Spear Desert Storm - Discussions on Kuwaiti security and defense policies'
                'URL' = 'https://mwi.westpoint.edu/podcast-spear-desert-storm-air-assault/'
                'icon' = 'https://mwi.westpoint.edu/favicon.ico'
            },
            @{
                'Title' = 'Desert Vision - Expert talks on military strategy and threats'
                'URL' = 'https://www.dvidshub.net/podcast/1/desert-vision'
                'icon' = 'https://www.dvidshub.net/favicon.ico'
            }
        )
    }
}
'Lebanon' = @{
'Business' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Business News - Dedicated economic and finance updates for Lebanese markets'
                'URL' = 'https://www.businessnews.com.lb/'
                'icon' = 'https://www.businessnews.com.lb/favicon.ico'
            },
            @{
                'Title' = 'AGBI Lebanon - Insights into Lebanese investments and business developments'
                'URL' = 'https://www.agbi.com/middle-east/lebanon/'
                'icon' = 'https://www.agbi.com/favicon.ico'
            },
            @{
                'Title' = 'Executive Magazine - In-depth analyses of Lebanese commerce and sectors'
                'URL' = 'https://www.executive-magazine.com/'
                'icon' = 'https://www.executive-magazine.com/favicon.ico'
            },
            @{
                'Title' = 'Financial Times Lebanon - Breaking news on Lebanese economy and policies'
                'URL' = 'https://www.ft.com/lebanon'
                'icon' = 'https://www.ft.com/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Al-Monitor Lebanon - Independent views on Lebanese economic challenges'
                'URL' = 'https://www.al-monitor.com/lebanon'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'The Business Year Lebanon - Alternative perspectives on business dynamics'
                'URL' = 'https://thebusinessyear.com/lebanon/'
                'icon' = 'https://thebusinessyear.com/favicon.ico'
            },
            @{
                'Title' = 'Now Lebanon Business - Critical reporting on fiscal reforms and inequalities'
                'URL' = 'https://nowlebanon.com/'
                'icon' = 'https://nowlebanon.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'Bodi Budu - Entrepreneurial tips and Lebanese market insights'
            'URL' = 'https://www.youtube.com/@bo3di'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Hasan Kreik - Barber business success stories in Lebanon'
            'URL' = 'https://www.youtube.com/@Barber.kreikhasan'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Project Yalla - Startup journeys and economic opportunities'
            'URL' = 'https://www.youtube.com/@ProjectYalla'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Kamal Nehme - Business motivation and Lebanese entrepreneur vlogs'
            'URL' = 'https://www.youtube.com/@KamalNehme'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'BerytechBeat - Interviews with Lebanese founders and innovators'
            'URL' = 'https://berytech.org/beat/podcast/'
            'icon' = 'https://berytech.org/favicon.ico'
        },
        @{
            'Title' = 'Anatomy of Next - Startup pivots and Lebanese success stories'
            'URL' = 'https://beirutdigitaldistrict.com/blog-article/five-podcasts-about-startups-pivots-and-successes-what-are-lebanese-entrepreneurs-listening-to/'
            'icon' = 'https://beirutdigitaldistrict.com/favicon.ico'
        },
        @{
            'Title' = 'SSS Podcast - Strategies for growth in Lebanese businesses'
            'URL' = 'https://spark.ngo/what-lebanese-entrepreneurs-are-saying-in-the-sss-podcast/'
            'icon' = 'https://spark.ngo/favicon.ico'
        }
    )
}
'Sports' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'LBCI Sports - Official Lebanese athletic events and competitions'
                'URL' = 'https://www.lbcgroup.tv/news/category/127/sports-news/en'
                'icon' = 'https://www.lbcgroup.tv/favicon.ico'
            },
            @{
                'Title' = 'Daily Star Sports - Coverage of Lebanese teams and leagues'
                'URL' = 'https://dailystar.com.lb/'
                'icon' = 'https://dailystar.com.lb/favicon.ico'
            },
            @{
                'Title' = 'Naharnet Sports - Updates on national sports achievements'
                'URL' = 'https://www.naharnet.com/'
                'icon' = 'https://www.naharnet.com/favicon.ico'
            },
            @{
                'Title' = 'MTV Sports - Reports on Lebanese football and basketball'
                'URL' = 'https://www.mtv.com.lb/en/news/Sports'
                'icon' = 'https://www.mtv.com.lb/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'This is Beirut Sports - Independent athlete rights and controversies'
                'URL' = 'https://thisisbeirut.com.lb/sports'
                'icon' = 'https://thisisbeirut.com.lb/favicon.ico'
            },
            @{
                'Title' = 'Malaeeb Sports - Alternative views on Lebanese leagues governance'
                'URL' = 'https://www.malaeeb.com/'
                'icon' = 'https://www.malaeeb.com/favicon.ico'
            },
            @{
                'Title' = 'NewsNow Lebanese Sport - Critical aggregation of sports news'
                'URL' = 'https://www.newsnow.com/us/World/Middle%2BEast/Lebanon/Sport'
                'icon' = 'https://www.newsnow.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'Lebanese Sports - Highlights and fan reactions to matches'
            'URL' = 'https://www.youtube.com/c/LebaneseSports1'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Bilal Haddad - Football content and Lebanese sports commentary'
            'URL' = 'https://www.youtube.com/@BilalHaddad'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'MTV Lebanon Sports - Behind-the-scenes event vlogs'
            'URL' = 'https://www.youtube.com/channel/UCnkTo_wMqGtLiA4xX7roORg'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Akram Halabi - Basketball league analyses and training'
            'URL' = 'https://www.youtube.com/@AkramHalabi'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'The Whistlepodcast - Lebanese football discussions and insights'
            'URL' = 'https://open.spotify.com/show/6u09JGMGUgjVYDm04UA6xT'
            'icon' = 'https://open.spotify.com/favicon.ico'
        },
        @{
            'Title' = 'Sports Pen - In-depth Lebanese basketball and leagues'
            'URL' = 'https://www.youtube.com/watch?v=WfudqyDRRfU'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Urban Athlete Podcast - Sports mental health in Lebanon'
            'URL' = 'https://unicbeirut.org/UN-Sports-Lebanon-Urban-Athlete-Podcast-Episode-1'
            'icon' = 'https://unicbeirut.org/favicon.ico'
        }
    )
}
'Culture' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Naharnet Culture - Features on Lebanese arts and festivals'
                'URL' = 'https://www.naharnet.com/'
                'icon' = 'https://www.naharnet.com/favicon.ico'
            },
            @{
                'Title' = 'L''Orient Today Culture - Coverage of literature and traditions'
                'URL' = 'https://today.lorientlejour.com/'
                'icon' = 'https://today.lorientlejour.com/favicon.ico'
            },
            @{
                'Title' = 'LBCI Culture - Reports on music and cinema events'
                'URL' = 'https://www.lbcgroup.tv/latest-news/en'
                'icon' = 'https://www.lbcgroup.tv/favicon.ico'
            },
            @{
                'Title' = 'National News Agency Culture - Official heritage site updates'
                'URL' = 'https://www.nna-leb.gov.lb/en/'
                'icon' = 'https://www.nna-leb.gov.lb/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Now Lebanon Culture - Independent critiques of arts policies'
                'URL' = 'https://nowlebanon.com/'
                'icon' = 'https://nowlebanon.com/favicon.ico'
            },
            @{
                'Title' = 'Al-Monitor Culture Lebanon - Alternative views on social arts'
                'URL' = 'https://www.al-monitor.com/lebanon/culture'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'BBC News Lebanon Culture - Dissident stories on heritage'
                'URL' = 'https://www.bbc.com/news/topics/cp7r8vglgmjt'
                'icon' = 'https://www.bbc.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'Anthony Rahayel - Lebanese food and cultural traditions vlogs'
            'URL' = 'https://www.youtube.com/channel/UCACicNDQx-HA5MFnl75a-OQ'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Explorob - Adventures in Lebanese history and sights'
            'URL' = 'https://www.youtube.com/@explorob'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Estelle - Week in Beirut cultural life and festivals'
            'URL' = 'https://www.youtube.com/@Estelle'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'The Traveling ZAM - Authentic Lebanese experiences and customs'
            'URL' = 'https://www.youtube.com/@TheTravelingZAM'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'Levantine Arabic Made Easier - Facts about Lebanese culture'
            'URL' = 'https://open.spotify.com/show/07m30MkTlU6FRjZ6UE70rV'
            'icon' = 'https://open.spotify.com/favicon.ico'
        },
        @{
            'Title' = 'Lebanon USA - Stories of Lebanese diaspora and heritage'
            'URL' = 'https://radiolab.org/podcast/lebanon-usa'
            'icon' = 'https://radiolab.org/favicon.ico'
        },
        @{
            'Title' = 'Baynetna - Perspectives on Lebanese society and shifts'
            'URL' = 'https://www.the961.com/lebanese-podcasts-that-will-reshape-your-perspective/'
            'icon' = 'https://www.the961.com/favicon.ico'
        }
    )
}
'Science and Technology' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Naharnet Sci-Tech - Updates on Lebanese research innovations'
                'URL' = 'https://www.naharnet.com/'
                'icon' = 'https://www.naharnet.com/favicon.ico'
            },
            @{
                'Title' = 'LBCI Technology - Coverage of digital transformation projects'
                'URL' = 'https://www.lbcgroup.tv/latest-news/en'
                'icon' = 'https://www.lbcgroup.tv/favicon.ico'
            },
            @{
                'Title' = 'National News Agency Sci-Tech - Official science policy reports'
                'URL' = 'https://www.nna-leb.gov.lb/en/'
                'icon' = 'https://www.nna-leb.gov.lb/favicon.ico'
            },
            @{
                'Title' = 'Al-Manar Technology - Features on Lebanese tech advancements'
                'URL' = 'https://english.almanar.com.lb/'
                'icon' = 'https://english.almanar.com.lb/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Al-Monitor Tech Lebanon - Independent analysis of innovation ethics'
                'URL' = 'https://www.al-monitor.com/lebanon/technology'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'SciTechDaily Lebanon - Critical views on global collaborations'
                'URL' = 'https://scitechdaily.com/tag/lebanon/'
                'icon' = 'https://scitechdaily.com/favicon.ico'
            },
            @{
                'Title' = 'Al-Fanar Media Sci-Tech - Alternative education and tech news'
                'URL' = 'https://al-fanarmedia.org/country/lebanon/'
                'icon' = 'https://al-fanarmedia.org/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'Lebanese Tech - Curated tech ecosystem and innovations'
            'URL' = 'https://www.youtube.com/channel/UCUljFkguGWjzQ22Nuoracgw'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'DxTalks - IoT and AI challenges in Lebanon'
            'URL' = 'https://www.youtube.com/@DxTalks'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Easy Tech Lebanon - Gadget reviews and tech tips'
            'URL' = 'https://www.youtube.com/@easytechlb'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Eye Opener - Science explanations and experiments'
            'URL' = 'https://www.youtube.com/@the_eyeopener'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'Aboard Podcast - Lebanese tech scene and future building'
            'URL' = 'https://aboard.com/podcast/the-view-from-the-lebanese-tech-scene/'
            'icon' = 'https://aboard.com/favicon.ico'
        },
        @{
            'Title' = 'Startup Storybook - From Lebanon to biotech innovations'
            'URL' = 'https://podcasts.apple.com/fr/podcast/ep-25-from-lebanon-to-the-lab-transforming-drug/id1850853086?i=1000735314851'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'TechCast - AI revolution and Lebanese tech discussions'
            'URL' = 'https://open.spotify.com/show/0taDtTJxW3sOtoJj4ADaG4'
            'icon' = 'https://open.spotify.com/favicon.ico'
        }
    )
}
'Politics' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Naharnet Politics - Breaking Lebanese government updates'
                'URL' = 'https://www.naharnet.com/'
                'icon' = 'https://www.naharnet.com/favicon.ico'
            },
            @{
                'Title' = 'L''Orient Today Politics - Nonpartisan analysis of elections'
                'URL' = 'https://today.lorientlejour.com/'
                'icon' = 'https://today.lorientlejour.com/favicon.ico'
            },
            @{
                'Title' = 'LBCI Politics - Coverage of domestic and foreign affairs'
                'URL' = 'https://www.lbcgroup.tv/latest-news/en'
                'icon' = 'https://www.lbcgroup.tv/favicon.ico'
            },
            @{
                'Title' = 'National News Agency Politics - Official policy announcements'
                'URL' = 'https://www.nna-leb.gov.lb/en/'
                'icon' = 'https://www.nna-leb.gov.lb/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Al-Monitor Politics Lebanon - Independent opposition governance analysis'
                'URL' = 'https://www.al-monitor.com/lebanon/politics'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'The Badil - Critical investigative journalism on politics'
                'URL' = 'https://thebadil.com/'
                'icon' = 'https://thebadil.com/favicon.ico'
            },
            @{
                'Title' = 'Al Jazeera Lebanon - Alternative narratives on decisions'
                'URL' = 'https://www.aljazeera.com/where/lebanon/'
                'icon' = 'https://www.aljazeera.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'Rayan Hayek - Political satire and commentary vlogs'
            'URL' = 'https://www.youtube.com/@RayanHayek'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Anthony Samarany - Youth perspectives on Lebanese politics'
            'URL' = 'https://www.youtube.com/@AnthonySamarany'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Dima Sadek - Activism and election discussions'
            'URL' = 'https://www.youtube.com/@DimaSadek'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Jad Ghosn - Societal and political issue explorations'
            'URL' = 'https://www.youtube.com/@JadGhosn'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'The Lebanese Politics Podcast - Nerdy discussions on governance'
            'URL' = 'https://podcasts.apple.com/us/podcast/the-lebanese-politics-podcast/id1372783898'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'Lebanese Logic - Hezbollah and political dynamics'
            'URL' = 'https://newlinesinstitute.org/political-systems/is-a-post-hezbollah-lebanon-happening-now/'
            'icon' = 'https://newlinesinstitute.org/favicon.ico'
        },
        @{
            'Title' = 'LCPS Podcasts - Insights on Lebanese policy'
            'URL' = 'https://www.lcps-lebanon.org/en/multimedia/1/podcasts'
            'icon' = 'https://www.lcps-lebanon.org/favicon.ico'
        }
    )
}
'Fashion' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Belle Beirut Fashion - Lebanese trends and designer features'
                'URL' = 'https://en.bellebeirut.com/'
                'icon' = 'https://en.bellebeirut.com/favicon.ico'
            },
            @{
                'Title' = 'Federation Libanaise de la Mode - Official fashion events updates'
                'URL' = 'https://federationlibanaisedelamode.com/news/'
                'icon' = 'https://federationlibanaisedelamode.com/favicon.ico'
            },
            @{
                'Title' = 'L''Orient Today Fashion - Coverage of Beirut fashion week'
                'URL' = 'https://today.lorientlejour.com/'
                'icon' = 'https://today.lorientlejour.com/favicon.ico'
            },
            @{
                'Title' = 'Maison 123 Lebanon - Ready-to-wear collections and styles'
                'URL' = 'https://maison123-lb.com/'
                'icon' = 'https://maison123-lb.com/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'New Arab Fashion - Upcycled sustainable Lebanese designs'
                'URL' = 'https://www.newarab.com/features/crisis-creativity-lebanons-upcycled-fashion-revolution'
                'icon' = 'https://www.newarab.com/favicon.ico'
            },
            @{
                'Title' = 'Vogue Arabia Lebanon - Emerging designers and trends'
                'URL' = 'https://www.voguearabia.com/tags/lebanon'
                'icon' = 'https://www.voguearabia.com/favicon.ico'
            },
            @{
                'Title' = 'Grazia ME Lebanese Brands - Alternative ethical fashion stories'
                'URL' = 'https://graziamagazine.com/me/articles/lebanese-fashion-brands/'
                'icon' = 'https://graziamagazine.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'Cyrine Abdel Nour - Modest fashion hauls and styling'
            'URL' = 'https://www.youtube.com/@CyrineAbdelNour'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Joa Matar - Beirut street style explorations'
            'URL' = 'https://www.youtube.com/@JoaMatar'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Elsa Kahwaji - Designer interviews and trends'
            'URL' = 'https://www.youtube.com/@ElsaKahwaji'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Myriam Klink - Luxury Lebanese fashion vlogs'
            'URL' = 'https://www.youtube.com/@MyriamKlinkOfficial'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'Business of Fashion - Rebuilding Lebanese fashion industry'
            'URL' = 'https://podcasts.apple.com/lb/podcast/rebuilding-lebanons-fashion-industry/id1225204588?i=1000488684228'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'SeeLe Podcast - Lebanese couture history and impact'
            'URL' = 'https://seelemag.com/home/joe-challita-the-lebanese-fashion-aficionado-opens-up-about-lebanons-couture-contribution-to-the-world-podcast'
            'icon' = 'https://seelemag.com/favicon.ico'
        },
        @{
            'Title' = 'Fashion Your Seatbelt - Voices in Lebanese fashion'
            'URL' = 'https://open.spotify.com/show/2kbtSVR9pfKnPffI9gjv38'
            'icon' = 'https://open.spotify.com/favicon.ico'
        }
    )
}
'Military' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Naharnet Military - Updates on Lebanese defense operations'
                'URL' = 'https://www.naharnet.com/'
                'icon' = 'https://www.naharnet.com/favicon.ico'
            },
            @{
                'Title' = 'i24NEWS Lebanese Forces - Coverage of armed forces activities'
                'URL' = 'https://www.i24news.tv/en/tags/lebanese-forces'
                'icon' = 'https://www.i24news.tv/favicon.ico'
            },
            @{
                'Title' = 'Al-Manar Military - Reports on Hezbollah and army engagements'
                'URL' = 'https://english.almanar.com.lb/'
                'icon' = 'https://english.almanar.com.lb/favicon.ico'
            },
            @{
                'Title' = 'National News Agency Defense - Official security policy news'
                'URL' = 'https://www.nna-leb.gov.lb/en/'
                'icon' = 'https://www.nna-leb.gov.lb/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Breaking Defense Lebanon - Alternative analysis of strategies'
                'URL' = 'https://breakingdefense.com/tag/lebanon/'
                'icon' = 'https://breakingdefense.com/favicon.ico'
            },
            @{
                'Title' = 'Al-Monitor Security Lebanon - Independent military ties reporting'
                'URL' = 'https://www.al-monitor.com/lebanon/security'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'The Defense Post Lebanon - Critical views on alliances'
                'URL' = 'https://thedefensepost.com/tag/lebanon/'
                'icon' = 'https://thedefensepost.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'The Lebanese Army - Official training and operations vlogs'
            'URL' = 'https://www.youtube.com/user/TheLebaneseArmy'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'MIR Kuwait Vlogs - Military life near Lebanese borders'
            'URL' = 'https://www.youtube.com/channel/UCWuZzfobWPQGnOtv2TdgSgg'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Deployment Life - Army experiences in Lebanon'
            'URL' = 'https://www.youtube.com/shorts/mS0CBw4NY-s'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Dominga Shataun - Fitness and military deployment stories'
            'URL' = 'https://www.youtube.com/c/DomingaShataun'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'Beirut Banyan - Lebanese army role and limitations'
            'URL' = 'https://open.spotify.com/show/0bKzApIn7bpkx5S8mcxRuX'
            'icon' = 'https://open.spotify.com/favicon.ico'
        },
        @{
            'Title' = 'Middle East Focus - Hezbollah Israel and armed forces'
            'URL' = 'https://www.youtube.com/watch?v=UNk3hvjY2jM'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Truth Matters - Negative cycle in Lebanese military'
            'URL' = 'https://www.csis.org/podcasts/truth-matter/negative-spiraling-cycle-lebanon'
            'icon' = 'https://www.csis.org/favicon.ico'
        }

)
}
'Oman' = @{
'Business_2' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Oman Observer Business - Comprehensive coverage of Omani economic policies and developments'
                'URL' = 'https://www.omanobserver.om/business'
                'icon' = 'https://www.omanobserver.om/favicon.ico'
            },
            @{
                'Title' = 'AGBI Oman - Financial news on investments and Oman Air Omantel updates'
                'URL' = 'https://www.agbi.com/middle-east/oman/'
                'icon' = 'https://www.agbi.com/favicon.ico'
            },
            @{
                'Title' = 'Times of Oman Business - Reports on private sector partnerships and investments'
                'URL' = 'https://timesofoman.com/category/business'
                'icon' = 'https://timesofoman.com/favicon.ico'
            },
            @{
                'Title' = 'Muscat Daily Business - Leading source for Oman trade and market news'
                'URL' = 'https://www.muscatdaily.com/'
                'icon' = 'https://www.muscatdaily.com/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Zawya Oman - Independent analysis of economic reforms and markets'
                'URL' = 'https://www.zawya.com/en/economy/gcc/oman'
                'icon' = 'https://www.zawya.com/favicon.ico'
            },
            @{
                'Title' = 'Al-Monitor Oman - Alternative perspectives on fiscal challenges and investments'
                'URL' = 'https://www.al-monitor.com/oman'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'Economy Middle East Oman - Critical views on business growth and inequalities'
                'URL' = 'https://economymiddleeast.com/newscategories/oman/'
                'icon' = 'https://economymiddleeast.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'Ateeq Kamboh - Expat life and starting business in Oman'
            'URL' = 'https://www.youtube.com/@AteeqKamboh'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Oman Business Ideas - Small business opportunities and investments'
            'URL' = 'https://www.youtube.com/playlist?list=PLnc3DXQY6xo77afzC06HKpLDDdSShCdMP'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Grocery Store Oman - Investment and ROI in retail business'
            'URL' = 'https://www.youtube.com/@OmanBusinessVlogs'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Import Export Oman - Daily vlogs on trade opportunities'
            'URL' = 'https://www.youtube.com/@OmanImportExport'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'Oman Observer Podcast - Interviews with Omani business leaders'
            'URL' = 'https://podcasts.apple.com/us/podcast/oman-observer-podcast/id1573114063'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'Tejarah Talks - Insights from Omani entrepreneurs and innovators'
            'URL' = 'https://open.spotify.com/show/4gcRP25wbfw004LSSLhwX2'
            'icon' = 'https://open.spotify.com/favicon.ico'
        },
        @{
            'Title' = 'Oman Business Stories - Success tales from local ventures'
            'URL' = 'https://player.fm/series/oman-business-stories'
            'icon' = 'https://player.fm/favicon.ico'
        }
    )
}
'Sports_2' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Times of Oman Sports - Coverage of national teams and championships'
                'URL' = 'https://timesofoman.com/category/sports'
                'icon' = 'https://timesofoman.com/favicon.ico'
            },
            @{
                'Title' = 'Oman Observer Sports - Updates on football and Olympic events'
                'URL' = 'https://www.omanobserver.om/sports'
                'icon' = 'https://www.omanobserver.om/favicon.ico'
            },
            @{
                'Title' = 'Muscat Daily Sports - Reports on leagues and athletic achievements'
                'URL' = 'https://www.muscatdaily.com/category/sports/'
                'icon' = 'https://www.muscatdaily.com/favicon.ico'
            },
            @{
                'Title' = 'Oman News Agency Sports - Official national competitions news'
                'URL' = 'https://omannews.gov.om/topics/en/82'
                'icon' = 'https://omannews.gov.om/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Malaeeb Sports - Independent views on league governance'
                'URL' = 'https://www.malaeeb.com/'
                'icon' = 'https://www.malaeeb.com/favicon.ico'
            },
            @{
                'Title' = 'This is Beirut Sports Oman - Athlete rights and controversies'
                'URL' = 'https://thisisbeirut.com.lb/sports'
                'icon' = 'https://thisisbeirut.com.lb/favicon.ico'
            },
            @{
                'Title' = 'NewsNow Oman Sport - Critical aggregation of sports news'
                'URL' = 'https://www.newsnow.com/us/World/Middle%2BEast/Oman/Sport'
                'icon' = 'https://www.newsnow.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'OmanSportsTV - Football highlights and fan reactions'
            'URL' = 'https://www.youtube.com/OmanSportsTV'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'ESports Oman - Gaming and esports challenges'
            'URL' = 'https://www.youtube.com/@ESportsOman'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Al Mouj Golf - Golf vlogs and tournament coverage'
            'URL' = 'https://www.youtube.com/@AlMoujGolf'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Ishnum Munshi - Sports events and adventures'
            'URL' = 'https://www.youtube.com/@ishnummunshi'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'Football in Oman - Discussions on national team strategies'
            'URL' = 'https://podcasts.apple.com/us/podcast/football-in-oman/id1534823465'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'Tejarah Talks Sports - Omani sports economy insights'
            'URL' = 'https://www.youtube.com/watch?v=-5I6-q28CiI'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Sports Talk Oman - Track and field experiences'
            'URL' = 'https://soundcloud.com/omanfm_om/sport_talk14'
            'icon' = 'https://soundcloud.com/favicon.ico'
        }
    )
}
'Culture_2' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Oman News Agency Culture - Showcasing Omani heritage and events'
                'URL' = 'https://omannews.gov.om/topics/en/83'
                'icon' = 'https://omannews.gov.om/favicon.ico'
            },
            @{
                'Title' = 'Times of Oman Culture - Features on festivals and traditions'
                'URL' = 'https://timesofoman.com/category/oman-culture'
                'icon' = 'https://timesofoman.com/favicon.ico'
            },
            @{
                'Title' = 'Oman Observer Culture - Reports on arts and literature'
                'URL' = 'https://www.omanobserver.om/morearticles/culture'
                'icon' = 'https://www.omanobserver.om/favicon.ico'
            },
            @{
                'Title' = 'Muscat Daily Culture - Coverage of heritage sites and celebrations'
                'URL' = 'https://www.muscatdaily.com/category/lifestyle/culture/'
                'icon' = 'https://www.muscatdaily.com/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Al-Monitor Culture Oman - Independent critiques of arts policies'
                'URL' = 'https://www.al-monitor.com/oman/culture'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'The Arabian Stories Culture - Alternative views on societal shifts'
                'URL' = 'https://www.thearabianstories.com/category/culture/'
                'icon' = 'https://www.thearabianstories.com/favicon.ico'
            },
            @{
                'Title' = 'BBC News Oman Culture - Dissident stories on heritage preservation'
                'URL' = 'https://www.bbc.com/news/topics/cp7r8vglgmjt/oman'
                'icon' = 'https://www.bbc.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'DesiGirl Traveller - First impressions and cultural explorations'
            'URL' = 'https://www.youtube.com/@DesiGirlTraveller'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Malinasvibe - Muscat food and souq adventures'
            'URL' = 'https://www.youtube.com/@Malinasvibe'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Explorob - Omani history and sights vlogs'
            'URL' = 'https://www.youtube.com/@explorob'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Serene Simple Vlogs - Daily cultural life in Muscat'
            'URL' = 'https://www.youtube.com/@SereneSimpleVlogsMuscatOman'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'Oman Observer Podcast - Cultural heritage discussions'
            'URL' = 'https://podcasts.apple.com/us/podcast/oman-observer-podcast/id1573114063'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'British Omani Society - Movers in Omani culture'
            'URL' = 'https://open.spotify.com/show/13pvh4PAehA8r626QvMkzQ'
            'icon' = 'https://open.spotify.com/favicon.ico'
        },
        @{
            'Title' = 'Oman Uncovered - Destination specials on heritage'
            'URL' = 'https://podcasts.apple.com/us/podcast/oman-uncovered-destination-special-with-dina-macki/id1471130008?i=1000727972993'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        }
    )
}
'Science and Technology' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Times of Oman Sci-Tech - Launches and research innovations'
                'URL' = 'https://timesofoman.com/category/oman-science-technology'
                'icon' = 'https://timesofoman.com/favicon.ico'
            },
            @{
                'Title' = 'Oman Observer Technology - Digital transformation and AI news'
                'URL' = 'https://www.omanobserver.om/morearticles/scitech/technology'
                'icon' = 'https://www.omanobserver.om/favicon.ico'
            },
            @{
                'Title' = 'Oman News Agency Sci-Tech - National initiatives and projects'
                'URL' = 'https://omannews.gov.om/topics/en/101'
                'icon' = 'https://omannews.gov.om/favicon.ico'
            },
            @{
                'Title' = 'Muscat Daily Technology - Cybersecurity and renewable energy updates'
                'URL' = 'https://www.muscatdaily.com/category/business/technology/'
                'icon' = 'https://www.muscatdaily.com/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Al-Monitor Tech Oman - Ethics and innovation challenges'
                'URL' = 'https://www.al-monitor.com/oman/technology'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'SciTechDaily Oman - Global collaborations and critiques'
                'URL' = 'https://scitechdaily.com/tag/oman/'
                'icon' = 'https://scitechdaily.com/favicon.ico'
            },
            @{
                'Title' = 'Al-Fanar Media Oman - Education and tech freedoms'
                'URL' = 'https://al-fanarmedia.org/country/oman/'
                'icon' = 'https://al-fanarmedia.org/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'HUSAM TECH - Gadget reviews and tech trends'
            'URL' = 'https://www.youtube.com/@HUSAMTECH'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Youji Crypto - Blockchain and fintech insights'
            'URL' = 'https://www.youtube.com/@YoujiCrypto'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'NU Oman - University science experiments and talks'
            'URL' = 'https://www.youtube.com/@nu_oman'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Introduct Group - Tech readiness and digital journey'
            'URL' = 'https://www.youtube.com/@IntroductGroup'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'Oman Observer Podcast - Nanotechnology heroes stories'
            'URL' = 'https://open.spotify.com/show/4n1ulQOulr4zD7ChhtIcYs'
            'icon' = 'https://open.spotify.com/favicon.ico'
        },
        @{
            'Title' = 'Tejarah Talks Tech - Hydrogen vision discussions'
            'URL' = 'https://www.youtube.com/watch?v=NYVb-H2ch1w'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Sciware Oman - Science and tech advancements'
            'URL' = 'https://podchaser.com/podcasts/sciware-107ZzmWEDw'
            'icon' = 'https://podchaser.com/favicon.ico'
        }
    )
}
'Politics_2' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Oman News Agency Politics - Diplomatic relations and credentials'
                'URL' = 'https://omannews.gov.om/topics/en/81'
                'icon' = 'https://omannews.gov.om/favicon.ico'
            },
            @{
                'Title' = 'Foreign Ministry Oman - Policy announcements and talks'
                'URL' = 'https://www.fm.gov.om/news/news/'
                'icon' = 'https://www.fm.gov.om/favicon.ico'
            },
            @{
                'Title' = 'Times of Oman Politics - Government updates and elections'
                'URL' = 'https://timesofoman.com/category/oman-politics'
                'icon' = 'https://timesofoman.com/favicon.ico'
            },
            @{
                'Title' = 'Al Jazeera Oman - Regional relations and affairs'
                'URL' = 'https://www.aljazeera.com/where/oman/'
                'icon' = 'https://www.aljazeera.com/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Al-Monitor Politics Oman - Opposition analysis and governance'
                'URL' = 'https://www.al-monitor.com/oman/politics'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'NewsNow Oman Politics - Critical headlines and opinions'
                'URL' = 'https://www.newsnow.co.uk/h/World%2BNews/Middle%2BEast/Oman/Politics'
                'icon' = 'https://www.newsnow.co.uk/favicon.ico'
            },
            @{
                'Title' = 'BTI Oman Report - Human rights and political architecture'
                'URL' = 'https://bti-project.org/en/reports/country-report/OMN'
                'icon' = 'https://bti-project.org/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'Oman News Center - Political news and debates'
            'URL' = 'https://www.youtube.com/@OmanNewsCenter'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'The Young Observer - Youth politics and commentary'
            'URL' = 'https://www.youtube.com/@TheYoungObserver'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Shabiba - Omani political discussions'
            'URL' = 'https://www.youtube.com/@ShabibaOman'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Oman Channel - Celebrities and politics vlogs'
            'URL' = 'https://www.youtube.com/c/OmanChannel'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'The Red Line Oman - Looming crisis and foreign policy'
            'URL' = 'https://www.theredlinepodcast.com/post/episode-67-oman-a-looming-crisis'
            'icon' = 'https://www.theredlinepodcast.com/favicon.ico'
        },
        @{
            'Title' = 'Afikra Oman History - Political discourse and tolerance'
            'URL' = 'https://afikra.simplecast.com/episodes/j-e-peterson-oman-conversations-flpoHBhv'
            'icon' = 'https://afikra.simplecast.com/favicon.ico'
        },
        @{
            'Title' = 'Mind the Gulf - Omani neutrality strategies'
            'URL' = 'https://www.rusi.org/podcast-series/mind-the-gulf-podcasts'
            'icon' = 'https://www.rusi.org/favicon.ico'
        }
    )
}
'Fashion_2' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Gulf Magazine Oman - Tradition meets modernity trends'
                'URL' = 'https://gulfmagazine.co/exploring-fashion-trends-in-oman-tradition/'
                'icon' = 'https://gulfmagazine.co/favicon.ico'
            },
            @{
                'Title' = 'Emirates Woman Oman - Timeless Omani brands support'
                'URL' = 'https://emirateswoman.com/10-timeless-omani-brands-to-support-now-and-forever/'
                'icon' = 'https://emirateswoman.com/favicon.ico'
            },
            @{
                'Title' = 'Muscat Daily Fashion - Handbag imports and industry surge'
                'URL' = 'https://www.muscatdaily.com/2025/06/30/handbag-imports-surge-in-oman/'
                'icon' = 'https://www.muscatdaily.com/favicon.ico'
            },
            @{
                'Title' = 'Grazia ME Oman - Fashion influencers and designers'
                'URL' = 'https://graziamagazine.com/me/articles/omani-fashion-influencers/'
                'icon' = 'https://graziamagazine.com/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'New Arab Oman - Upcycled sustainable fashion revolution'
                'URL' = 'https://www.newarab.com/features/crisis-creativity-lebanons-upcycled-fashion-revolution'
                'icon' = 'https://www.newarab.com/favicon.ico'
            },
            @{
                'Title' = 'Vogue Arabia Oman - Emerging designers and trends'
                'URL' = 'https://www.voguearabia.com/tags/oman'
                'icon' = 'https://www.voguearabia.com/favicon.ico'
            },
            @{
                'Title' = 'The Arabian Stories Fashion - Sustainable style without waste'
                'URL' = 'https://www.thearabianstories.com/2025/08/29/sustainable-fashion-style-without-waste/'
                'icon' = 'https://www.thearabianstories.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'Fashion Mumblr - Muscat outfits and travel style'
            'URL' = 'https://www.youtube.com/@FashionMumblr'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Rinzis Homely Vibes - Omani fashion and beauty'
            'URL' = 'https://www.youtube.com/@RinzisHomelyVibesz'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Abaya Model - Modest wear and styling tips'
            'URL' = 'https://www.youtube.com/@AbayaModel'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Aqsa Urdu Official - Cultural fusion fashion'
            'URL' = 'https://www.youtube.com/@AqsaUrduOfficial'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'Oman Observer Fashion - Conscious and curious style talks'
            'URL' = 'https://www.omanobserver.om/article/1147184/features/fashion/6-podcasts-for-the-fashion-conscious-and-curious'
            'icon' = 'https://www.omanobserver.om/favicon.ico'
        },
        @{
            'Title' = 'Unscripted Podcast - Elevating Omani fashion industry'
            'URL' = 'https://www.instagram.com/reel/DDBYoZyosWY/'
            'icon' = 'https://www.instagram.com/favicon.ico'
        },
        @{
            'Title' = 'Business of Fashion Oman - Timeless brands discussions'
            'URL' = 'https://podcasts.apple.com/us/podcast/the-business-of-fashion-podcast/id1225204588'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        }
    )
}
'Military_2' = @{
    'News' = @{
        'Mainstream' = @(
            @{
                'Title' = 'Oman News Agency Military - Joint exercises and operations'
                'URL' = 'https://omannews.gov.om/topics/en/79'
                'icon' = 'https://omannews.gov.om/favicon.ico'
            },
            @{
                'Title' = 'Times of Oman Defense - Armed forces achievements'
                'URL' = 'https://timesofoman.com/tag/oman-military'
                'icon' = 'https://timesofoman.com/favicon.ico'
            },
            @{
                'Title' = 'The Defense Post Oman - Capabilities and alliances'
                'URL' = 'https://thedefensepost.com/tag/oman/'
                'icon' = 'https://thedefensepost.com/favicon.ico'
            },
            @{
                'Title' = 'Al Defaiya Oman - Naval and army updates'
                'URL' = 'https://www.defaiya.com/news/subjects/Oman'
                'icon' = 'https://www.defaiya.com/favicon.ico'
            }
        )
        'Counter' = @(
            @{
                'Title' = 'Al-Monitor Security Oman - Independent policy analysis'
                'URL' = 'https://www.al-monitor.com/oman/security'
                'icon' = 'https://www.al-monitor.com/favicon.ico'
            },
            @{
                'Title' = 'Breaking Defense Oman - Alternative strategies reporting'
                'URL' = 'https://breakingdefense.com/tag/oman/'
                'icon' = 'https://breakingdefense.com/favicon.ico'
            },
            @{
                'Title' = 'EIN Presswire Oman Military - Critical defense news aggregation'
                'URL' = 'https://military.einnews.com/country/oman'
                'icon' = 'https://military.einnews.com/favicon.ico'
            }
        )
    }
    'Vloggers' = @(
        @{
            'Title' = 'Oman Military - Equipment reviews and parades'
            'URL' = 'https://www.youtube.com/@omanmilitary8306'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Royal Army Oman - Bilateral exercises and training'
            'URL' = 'https://www.youtube.com/@RoyalArmyOman'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Sultan Armed Forces - National day military displays'
            'URL' = 'https://www.youtube.com/@SultanArmedForcesOman'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Ranger Media Oman - Service life adventures'
            'URL' = 'https://www.youtube.com/c/RangerMedia'
            'icon' = 'https://www.youtube.com/favicon.ico'
        }
    )
    'Podcasts' = @(
        @{
            'Title' = 'Land Sea Air Oman - Armed forces stories'
            'URL' = 'https://podcasts.apple.com/gb/podcast/land-sea-air-stories-from-the-armed-forces/id1513953407'
            'icon' = 'https://podcasts.apple.com/favicon.ico'
        },
        @{
            'Title' = 'The Red Line Oman - Military crisis discussions'
            'URL' = 'https://www.youtube.com/watch?v=2RcpDlOp9dc'
            'icon' = 'https://www.youtube.com/favicon.ico'
        },
        @{
            'Title' = 'Mind the Gulf Oman - Security and neutrality talks'
            'URL' = 'https://www.rusi.org/podcast-series/mind-the-gulf-podcasts'
            'icon' = 'https://www.rusi.org/favicon.ico'
        }
    )
}
'Qatar' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'The Peninsula Business - Premier English-language source for Qatari economy updates'
                    'URL' = 'https://thepeninsulaqatar.com/category/Qatar-Business'
                    'icon' = 'https://thepeninsulaqatar.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Times Business - In-depth analysis of Qatar''s financial markets and corporate news'
                    'URL' = 'https://www.gulf-times.com/business'
                    'icon' = 'https://www.gulf-times.com/favicon.ico'
                },
                @{
                    'Title' = 'AGBI Qatar Business - Comprehensive coverage of Qatari economic policies and trade'
                    'URL' = 'https://www.agbi.com/middle-east/qatar/'
                    'icon' = 'https://www.agbi.com/favicon.ico'
                },
                @{
                    'Title' = 'Qatar Tribune Business - Reports on Qatari innovation and investment opportunities'
                    'URL' = 'https://www.qatar-tribune.com/business'
                    'icon' = 'https://www.qatar-tribune.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Doha News - Independent perspectives on Qatari economic inequalities'
                    'URL' = 'https://dohanews.co/business/'
                    'icon' = 'https://dohanews.co/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Qatar - Critical analysis of Qatar''s business ties and sanctions'
                    'URL' = 'https://www.middleeasteye.net/countries/qatar'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Qatar - Alternative views on Qatari business and finance'
                    'URL' = 'https://www.al-monitor.com/qatar-politics'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Qatar Business Founders - Vlogs on Qatari startups and economic resilience'
                'URL' = 'https://www.youtube.com/channel/UCIAMYnT-7rHuGk7ViRuQAjg'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Nonstop Dan - Insights into Qatar''s entrepreneurial ecosystems and markets'
                'URL' = 'https://www.youtube.com/dantorp11'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'ILoveQatar.net - Videos exploring Qatari business culture and trade'
                'URL' = 'https://www.youtube.com/iloveqatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Visit Qatar - Features on Qatar''s investment trends and opportunities'
                'URL' = 'https://www.youtube.com/c/VisitQatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'This Is Qatar - Discussions on Qatar''s economic recovery and policies'
                'URL' = 'https://podcasts.apple.com/us/podcast/this-is-qatar/id1509488313'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Qandid Qatar Podcast - Analysis of Qatari business challenges and opportunities'
                'URL' = 'https://open.spotify.com/show/1vYdtVv7RPPG6rgntmOsI4'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'The Insight Podcast Qatar - Insights into business innovation amid geopolitical tensions'
                'URL' = 'https://www.youtube.com/@theinsightqatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'The Peninsula Sports - Coverage of Qatari soccer basketball and athletics'
                    'URL' = 'https://thepeninsulaqatar.com/category/sports'
                    'icon' = 'https://thepeninsulaqatar.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Times Sport - Reports on Qatar teams in regional leagues and Olympics'
                    'URL' = 'https://www.gulf-times.com/sport'
                    'icon' = 'https://www.gulf-times.com/favicon.ico'
                },
                @{
                    'Title' = 'Qatar Tribune Sports - Updates on national team performances and league news'
                    'URL' = 'https://www.qatar-tribune.com/sports'
                    'icon' = 'https://www.qatar-tribune.com/favicon.ico'
                },
                @{
                    'Title' = 'ILoveQatar Sports - Features on Qatari athletes and competitions'
                    'URL' = 'https://www.iloveqatar.net/news/sports'
                    'icon' = 'https://www.iloveqatar.net/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Doha News Sports - Independent stories on athlete rights and sports politics'
                    'URL' = 'https://dohanews.co/sports/'
                    'icon' = 'https://dohanews.co/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Sports - Critical views on discrimination in Qatari sports'
                    'URL' = 'https://www.middleeasteye.net/countries/qatar'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Sports - Alternative reporting on regional sports tensions'
                    'URL' = 'https://www.al-monitor.com/qatar-politics'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'beIN SPORTS - Vlogs on Qatari football and soccer highlights'
                'URL' = 'https://www.youtube.com/c/beINSportsEN'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Qatar2023 - Videos of Qatari games and athlete stories'
                'URL' = 'https://www.youtube.com/c/Qatar2023'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ayman Jada - Vlogs featuring Qatari sports events and culture'
                'URL' = 'https://www.youtube.com/results?search_query=ayman+jada+qatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Jamal Al Sharif - Follows national athletes and game analyses'
                'URL' = 'https://www.youtube.com/results?search_query=jamal+al+sharif+qatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'In The Game - Episodes on Qatari soccer and basketball leagues'
                'URL' = 'https://open.spotify.com/show/2R3oBcXvMMILrvKFnqipny'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Qatartainment Sports Night - Stories of Qatari teams and sports history'
                'URL' = 'https://podcasts.apple.com/us/podcast/qatartainment-sports-night-podcast/id1754094886'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Doha Debates Sports - Discussions on Qatari athletes and regional competitions'
                'URL' = 'https://dohadebates.com/doha-debates-podcast/'
                'icon' = 'https://dohadebates.com/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'The Peninsula Culture - Reviews of Qatari arts theater and festivals'
                    'URL' = 'https://thepeninsulaqatar.com/category/culture'
                    'icon' = 'https://thepeninsulaqatar.com/favicon.ico'
                },
                @{
                    'Title' = 'ILoveQatar Culture - Features on Qatari literature music and cinema'
                    'URL' = 'https://www.iloveqatar.net/'
                    'icon' = 'https://www.iloveqatar.net/favicon.ico'
                },
                @{
                    'Title' = 'fact Magazine Qatar - News on Qatari art exhibitions and cultural events'
                    'URL' = 'https://factqatar.com/'
                    'icon' = 'https://factqatar.com/favicon.ico'
                },
                @{
                    'Title' = 'Qatar News Agency Culture - Coverage of Arab heritage and modern arts'
                    'URL' = 'https://qna.org.qa/en/home'
                    'icon' = 'https://qna.org.qa/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Doha News Culture - Independent critiques of Qatari cultural policies'
                    'URL' = 'https://dohanews.co/'
                    'icon' = 'https://dohanews.co/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Culture - Alternative views on regional cultural exchanges'
                    'URL' = 'https://www.middleeasteye.net/countries/qatar'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Culture - Progressive perspectives on Qatari arts and society'
                    'URL' = 'https://www.al-monitor.com/qatar-politics'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'ILoveQatar.net - Vlogs on Qatari society culture and daily life'
                'URL' = 'https://www.youtube.com/iloveqatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Visit Qatar - Cultural explorations of Qatari traditions and history'
                'URL' = 'https://www.youtube.com/c/VisitQatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Pearly Lilian - Bridging cultures through vlogs on Qatari festivals'
                'URL' = 'https://www.youtube.com/c/PearlyLilian'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Araya Vlogs - Videos showcasing Qatari arts and heritage sites'
                'URL' = 'https://www.youtube.com/c/ArayaVlogs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The Power of Culture - Episodes on cultural milestones and figures'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-power-of-culture/id1652485430'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Doha Heat - Conversations with Qatari artists and cultural creators'
                'URL' = 'https://open.spotify.com/show/3w4NDKKlDjHSRo3u3EDHZI'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Qandid Qatar Podcast - Narrative tales of Qatari culture and personal stories'
                'URL' = 'https://open.spotify.com/show/1vYdtVv7RPPG6rgntmOsI4'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'QSTP News - Latest on Qatari tech innovations and startups'
                    'URL' = 'https://qstp.qa/category/news/'
                    'icon' = 'https://qstp.qa/favicon.ico'
                },
                @{
                    'Title' = 'The Peninsula Tech Science - Coverage of Qatari research breakthroughs'
                    'URL' = 'https://thepeninsulaqatar.com/category/tech-science'
                    'icon' = 'https://thepeninsulaqatar.com/favicon.ico'
                },
                @{
                    'Title' = 'Qatar Tribune Science Tech - News on Qatari cybersecurity and AI developments'
                    'URL' = 'https://www.qatar-tribune.com/science-tech'
                    'icon' = 'https://www.qatar-tribune.com/favicon.ico'
                },
                @{
                    'Title' = 'Qatar Foundation Technology - Reports on Qatari defense tech and achievements'
                    'URL' = 'https://www.qf.org.qa/stories/technology'
                    'icon' = 'https://www.qf.org.qa/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Doha News Tech - Critical analysis of Qatari surveillance technologies'
                    'URL' = 'https://dohanews.co/'
                    'icon' = 'https://dohanews.co/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Tech - Alternative reporting on tech impacts in region'
                    'URL' = 'https://www.middleeasteye.net/countries/qatar'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Tech - Perspectives on ethical issues in Qatari science'
                    'URL' = 'https://www.al-monitor.com/qatar-politics'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'QSTP YouTube - Vlogs on Qatari biotech and innovation hubs'
                'URL' = 'https://www.youtube.com/c/QatarScienceTechnologyPark'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'ILoveQatar Tech - Videos exploring Qatari life-saving technologies'
                'URL' = 'https://www.youtube.com/iloveqatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Electronic Lokaya - Interviews with Qatari tech thought leaders'
                'URL' = 'https://www.youtube.com/results?search_query=electronic+lokaya+qatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Haris Tech Travel - Explanations of Qatari water tech and sustainability'
                'URL' = 'https://www.youtube.com/results?search_query=haris+tech+travel+qatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Impact Engine - Talks with Qatari tech founders and investors'
                'URL' = 'https://qstp.qa/programs/impact-engine-series/'
                'icon' = 'https://qstp.qa/favicon.ico'
            },
            @{
                'Title' = 'Digital Doha - Updates on AI and cybersecurity in Qatar'
                'URL' = 'https://www.qatarpodcasts.com/digital-doha/'
                'icon' = 'https://www.qatarpodcasts.com/favicon.ico'
            },
            @{
                'Title' = 'Qandid Qatar Tech - Stories of Qatari tech startups and breakthroughs'
                'URL' = 'https://open.spotify.com/show/1vYdtVv7RPPG6rgntmOsI4'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Qatar News Agency - Breaking news on Qatari government and elections'
                    'URL' = 'https://qna.org.qa/en/home'
                    'icon' = 'https://qna.org.qa/favicon.ico'
                },
                @{
                    'Title' = 'The Peninsula Politics - Analysis of Qatari parliament debates and policy shifts'
                    'URL' = 'https://thepeninsulaqatar.com/'
                    'icon' = 'https://thepeninsulaqatar.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Times Local - Coverage of Qatari monarchy and coalitions'
                    'URL' = 'https://www.gulf-times.com/'
                    'icon' = 'https://www.gulf-times.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Qatar - Updates on Qatari foreign relations and security'
                    'URL' = 'https://www.aljazeera.com/where/qatar/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Doha News Politics - Independent journalism on Qatari governance policies'
                    'URL' = 'https://dohanews.co/politics/'
                    'icon' = 'https://dohanews.co/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Politics - Critical reporting on Qatari political decisions'
                    'URL' = 'https://www.middleeasteye.net/countries/qatar'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Politics - Alternative narratives on Qatari monarchy'
                    'URL' = 'https://www.al-monitor.com/qatar-politics'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'MOFA Qatar - Vlogs explaining Qatari political dynamics'
                'URL' = 'https://www.youtube.com/channel/UCmrI7PgmVvVERMp1TbvFBIQ'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'ILoveQatar Politics - Political commentary through Qatari cultural lens'
                'URL' = 'https://www.youtube.com/iloveqatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Dunya News - Videos on Qatari parliament sessions and protests'
                'URL' = 'https://www.youtube.com/c/DunyaNewsOfficial'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Zeihan on Geopolitics - Lectures on Qatari politics and society'
                'URL' = 'https://www.youtube.com/@ZeihanonGeopolitics'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Doha Debates Podcast - Two experts unpacking Qatari political news'
                'URL' = 'https://dohadebates.com/doha-debates-podcast/'
                'icon' = 'https://dohadebates.com/favicon.ico'
            },
            @{
                'Title' = 'Ask Haviv Anything - Discussions on Qatar''s political landscape'
                'URL' = 'https://podcasts.apple.com/gb/podcast/ask-haviv-anything/id1794590850'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'POMEPS Conversations - Expert talks on Qatari foreign policy and governance'
                'URL' = 'https://pomeps.org/pomeps-conversations'
                'icon' = 'https://pomeps.org/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'FashionNetwork Qatar - Coverage of Doha Fashion Week and designers'
                    'URL' = 'https://qa.fashionnetwork.com/'
                    'icon' = 'https://qa.fashionnetwork.com/favicon.ico'
                },
                @{
                    'Title' = 'Business of Fashion Qatar - Features on Qatari modest and street fashion'
                    'URL' = 'https://www.businessoffashion.com/tags/locations/qatar/'
                    'icon' = 'https://www.businessoffashion.com/favicon.ico'
                },
                @{
                    'Title' = 'Ohlala Qatar Fashion - News on sustainable Qatari apparel trends'
                    'URL' = 'https://ohlalamag.net/'
                    'icon' = 'https://ohlalamag.net/favicon.ico'
                },
                @{
                    'Title' = 'Qatar Tribune Lifestyle Fashion - Reports on cultural influences in Qatari style'
                    'URL' = 'https://www.qatar-tribune.com/lifestyle-fashion'
                    'icon' = 'https://www.qatar-tribune.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Fashion Revolution Qatar - Critiques of fashion industry and social issues'
                    'URL' = 'https://www.fashionrevolution.org/asia/qatar/'
                    'icon' = 'https://www.fashionrevolution.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Fashion - Alternative stories on ethical fashion in region'
                    'URL' = 'https://www.middleeasteye.net/countries/qatar'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Fashion - Reporting on cultural resistance through fashion'
                    'URL' = 'https://www.al-monitor.com/qatar-politics'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Ornate Store - Vlogs on Qatari beauty and fashion trends'
                'URL' = 'https://www.youtube.com/c/OrnateStore'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'MakeUpByFoofooM - Street style explorations in Doha'
                'URL' = 'https://www.youtube.com/results?search_query=makeupbyfoofoom+qatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Bashka Bashiir - Coverage of Doha Fashion Week events'
                'URL' = 'https://www.youtube.com/results?search_query=bashka+bashiir+fashion'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'ILoveQatar Fashion - Videos on Qatari designers and runways'
                'URL' = 'https://www.youtube.com/iloveqatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The Business of Fashion Podcast - Psychology of Qatari style and trends'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-business-of-fashion-podcast/id1225204588'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'I Wanna GROW Podcast - History of Qatari fashion evolution'
                'URL' = 'https://podcasts.apple.com/us/podcast/i-wanna-grow-podcast/id1696296237'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Tech Powered Luxury - Modest dressing in Qatari culture'
                'URL' = 'https://open.spotify.com/show/6kW2T6lmdqnZiNs2QhWsL2'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Breaking Defense Qatar - Updates on Qatari Armed Forces operations and defense tech'
                    'URL' = 'https://breakingdefense.com/tag/qatar/'
                    'icon' = 'https://breakingdefense.com/favicon.ico'
                },
                @{
                    'Title' = 'Qatar News Agency Defense - Coverage of Qatari military strategies and exercises'
                    'URL' = 'https://qna.org.qa/en/home'
                    'icon' = 'https://qna.org.qa/favicon.ico'
                },
                @{
                    'Title' = 'TURDEF Qatar Defence - Reports on border security and reserves'
                    'URL' = 'https://turdef.com/country/qatar-news'
                    'icon' = 'https://turdef.com/favicon.ico'
                },
                @{
                    'Title' = 'AFCENT Qatar - News on Qatari air force and intelligence'
                    'URL' = 'https://www.afcent.af.mil/News/Article/4340763/us-qatar-and-allies-enhance-regional-defense-during-exercise-ferocious-falcon-6/'
                    'icon' = 'https://www.afcent.af.mil/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Middle East Eye Military - Investigative reports on Qatari Armed Forces tactics'
                    'URL' = 'https://www.middleeasteye.net/countries/qatar'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Defense - Alternative analysis of Qatari arms sales'
                    'URL' = 'https://www.al-monitor.com/qatar-politics'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Doha News Military - Critical coverage of military actions in region'
                    'URL' = 'https://dohanews.co/'
                    'icon' = 'https://dohanews.co/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Qatar Armed Forces - Official vlogs from training and missions'
                'URL' = 'https://www.youtube.com/results?search_query=qatar+armed+forces+official'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'QUASAR Entertainment - Analyses of Qatari military equipment and strategies'
                'URL' = 'https://www.youtube.com/c/QUASAREntertainment'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Araya Vlogs Military - Reviews of operations and gear'
                'URL' = 'https://www.youtube.com/c/ArayaVlogs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'ILoveQatar Defense - Videos on defense innovations and soldier stories'
                'URL' = 'https://www.youtube.com/iloveqatar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'General and the Ambassador - Behind-the-scenes of Qatari Armed Forces operations and readiness'
                'URL' = 'https://generalambassadorpodcast.org/022'
                'icon' = 'https://generalambassadorpodcast.org/favicon.ico'
            },
            @{
                'Title' = 'Mark Levin Podcast - Discussions on Qatari security and defense policies'
                'URL' = 'https://podcasts.apple.com/us/podcast/mark-levin-podcast/id209377688'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Geopolitical Futures - Expert talks on military strategy and threats'
                'URL' = 'https://geopoliticalfutures.com/george-friedman-on-israels-attack-on-hamas-in-qatar-a-us-ally-podcast/'
                'icon' = 'https://geopoliticalfutures.com/favicon.ico'
            }
        )
    }
}
'Saudi Arabia' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Arab News Business - Premier English-language source for Saudi economy updates'
                    'URL' = 'https://www.arabnews.com/economy'
                    'icon' = 'https://www.arabnews.com/favicon.ico'
                },
                @{
                    'Title' = 'AGBI Saudi Business - In-depth analysis of Saudi financial markets and corporate news'
                    'URL' = 'https://www.agbi.com/middle-east/saudi-arabia/'
                    'icon' = 'https://www.agbi.com/favicon.ico'
                },
                @{
                    'Title' = 'Saudi Gazette Business - Comprehensive coverage of Saudi economic policies and trade'
                    'URL' = 'https://saudigazette.com.sa/business'
                    'icon' = 'https://saudigazette.com.sa/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Business - Reports on Saudi innovation and investment opportunities'
                    'URL' = 'https://english.alarabiya.net/business'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Zawya KSA - Independent perspectives on Saudi economic inequalities'
                    'URL' = 'https://www.zawya.com/en/saudi-arabia'
                    'icon' = 'https://www.zawya.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Business - Critical analysis of Saudi business ties and sanctions'
                    'URL' = 'https://www.middleeasteye.net/countries/saudi-arabia'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Saudi Economy - Alternative views on Saudi business and finance'
                    'URL' = 'https://www.al-monitor.com/saudi-arabia'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Mmoshaya - Vlogs on Saudi startups and economic resilience'
                'URL' = 'https://www.youtube.com/c/mmoshaya'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ossy Marwah - Insights into Saudi entrepreneurial ecosystems and markets'
                'URL' = 'https://www.youtube.com/c/OssyMarwah'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Dyler - Videos exploring Saudi business culture and trade'
                'URL' = 'https://www.youtube.com/c/Dyler'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Saud Channel - Features on Saudi food industry and economic trends'
                'URL' = 'https://www.youtube.com/c/SaudChannel'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Success Saudi - Discussions on Saudi economic recovery and policies'
                'URL' = 'https://open.spotify.com/show/4hHUSjemaCojDGFir3Ns5L'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Startups Arabia - Analysis of Saudi business challenges and opportunities'
                'URL' = 'https://podcasts.apple.com/us/podcast/startups-arabia/id1633449095'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'The TWENTY30 Podcast - Insights into business innovation amid geopolitical tensions'
                'URL' = 'https://thetwenty30.com/'
                'icon' = 'https://thetwenty30.com/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Arab News Sports - Coverage of Saudi soccer basketball and athletics'
                    'URL' = 'https://www.arabnews.com/sport'
                    'icon' = 'https://www.arabnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Sports - Reports on Saudi teams in regional leagues and Olympics'
                    'URL' = 'https://english.alarabiya.net/sports'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                },
                @{
                    'Title' = 'Saudi Gazette Sports - Updates on national team performances and league news'
                    'URL' = 'https://saudigazette.com.sa/sports'
                    'icon' = 'https://saudigazette.com.sa/favicon.ico'
                },
                @{
                    'Title' = 'Riyadh Daily Sports - Features on Saudi athletes and competitions'
                    'URL' = 'https://alriyadhdaily.com/hotnews'
                    'icon' = 'https://alriyadhdaily.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Saudi Standard Sports - Independent stories on athlete rights and sports politics'
                    'URL' = 'https://saudistandard.com/category/sports/'
                    'icon' = 'https://saudistandard.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Sports - Critical views on discrimination in Saudi sports'
                    'URL' = 'https://www.middleeasteye.net/countries/saudi-arabia'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Sports - Alternative reporting on regional sports tensions'
                    'URL' = 'https://www.al-monitor.com/saudi-arabia'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Bashar Arabi - Vlogs on Saudi football and soccer highlights'
                'URL' = 'https://www.youtube.com/c/BasharArabi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Al-Ittihad Club News - Videos of Saudi games and athlete stories'
                'URL' = 'https://www.youtube.com/c/AlIttihadClubNews'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Mohamad Adnan - Vlogs featuring Saudi sports events and culture'
                'URL' = 'https://www.youtube.com/c/MohamadAdnan'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Arab Games Network - Follows national athletes and game analyses'
                'URL' = 'https://www.youtube.com/c/ArabGamesNetwork'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Sports Politika - Episodes on Saudi soccer and basketball leagues'
                'URL' = 'https://open.spotify.com/show/770Ri8g6vJGOvrBDlMXp5M'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Saudi Football Podcast - Stories of Saudi teams and sports history'
                'URL' = 'https://www.arabnews.com/SaudiFootball'
                'icon' = 'https://www.arabnews.com/favicon.ico'
            },
            @{
                'Title' = 'The Smashi Sports Show - Discussions on Saudi athletes and regional competitions'
                'URL' = 'https://open.spotify.com/show/691LHA5ivvsSx46x8NjXSE'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Arab News Culture - Reviews of Saudi arts theater and festivals'
                    'URL' = 'https://www.arabnews.com/lifestyle/art-culture'
                    'icon' = 'https://www.arabnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Art Culture - Features on Saudi literature music and cinema'
                    'URL' = 'https://english.alarabiya.net/life-style/art-and-culture'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                },
                @{
                    'Title' = 'Saudi Gazette Lifestyle - News on Saudi art exhibitions and cultural events'
                    'URL' = 'https://saudigazette.com.sa/lifestyle'
                    'icon' = 'https://saudigazette.com.sa/favicon.ico'
                },
                @{
                    'Title' = 'Asharq Al-Awsat Culture - Coverage of Arab heritage and modern arts'
                    'URL' = 'https://english.aawsat.com/'
                    'icon' = 'https://english.aawsat.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Middle East Eye Culture - Independent critiques of Saudi cultural policies'
                    'URL' = 'https://www.middleeasteye.net/countries/saudi-arabia'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Culture - Alternative views on regional cultural exchanges'
                    'URL' = 'https://www.al-monitor.com/saudi-arabia'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'BBC Arabic Culture - Progressive perspectives on Saudi arts and society'
                    'URL' = 'https://www.bbc.com/arabic/topics/cj4x8n2j5qyt'
                    'icon' = 'https://www.bbc.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Living the Jo Life - Vlogs on Saudi society culture and daily life'
                'URL' = 'https://www.youtube.com/@livingthejolife'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Muqseed Khan Vlogs - Cultural explorations of Saudi traditions and history'
                'URL' = 'https://www.youtube.com/c/MuqseedKhan'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ossy Marwah - Bridging cultures through vlogs on Saudi festivals'
                'URL' = 'https://www.youtube.com/c/OssyMarwah'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Mmoshaya - Videos showcasing Saudi arts and heritage sites'
                'URL' = 'https://www.youtube.com/c/mmoshaya'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Vision Culture and Policy - Episodes on cultural milestones and figures'
                'URL' = 'https://open.spotify.com/show/5GzvcOUdOqM6fA4iuEehrp'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'The TWENTY30 Podcast - Conversations with Saudi artists and cultural creators'
                'URL' = 'https://thetwenty30.com/'
                'icon' = 'https://thetwenty30.com/favicon.ico'
            },
            @{
                'Title' = 'Gems of Arabia - Narrative tales of Saudi culture and personal stories'
                'URL' = 'https://authenticite.me/podcasts/'
                'icon' = 'https://authenticite.me/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Al Arabiya Technology - Latest on Saudi tech innovations and startups'
                    'URL' = 'https://english.alarabiya.net/business/technology'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                },
                @{
                    'Title' = 'Arab News Science Tech - Coverage of Saudi research breakthroughs'
                    'URL' = 'https://www.arabnews.com/category/main-category/lifestyle/science-technology'
                    'icon' = 'https://www.arabnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Saudi Standard Tech - News on Saudi cybersecurity and AI developments'
                    'URL' = 'https://saudistandard.com/category/technology/'
                    'icon' = 'https://saudistandard.com/favicon.ico'
                },
                @{
                    'Title' = 'KAUST Innovation - Reports on Saudi defense tech and achievements'
                    'URL' = 'https://innovation.kaust.edu.sa/all-news/'
                    'icon' = 'https://innovation.kaust.edu.sa/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Middle East Eye Tech - Critical analysis of Saudi surveillance technologies'
                    'URL' = 'https://www.middleeasteye.net/countries/saudi-arabia'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Tech - Alternative reporting on tech impacts in region'
                    'URL' = 'https://www.al-monitor.com/saudi-arabia'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'The New Arab Tech - Perspectives on ethical issues in Saudi science'
                    'URL' = 'https://www.newarab.com/tags/saudi-arabia'
                    'icon' = 'https://www.newarab.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'TariqTechs - Vlogs on Saudi biotech and innovation hubs'
                'URL' = 'https://www.youtube.com/c/TariqTechs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Saudi Tech Tips - Videos exploring Saudi life-saving technologies'
                'URL' = 'https://www.youtube.com/c/SaudiTechTips'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hussein Atar - Interviews with Saudi tech thought leaders'
                'URL' = 'https://www.youtube.com/results?search_query=hussein+atar+saudi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'KAUST Vlogs - Explanations of Saudi water tech and sustainability'
                'URL' = 'https://www.youtube.com/c/KAUST'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Sciencetown - Talks with Saudi tech founders and investors'
                'URL' = 'https://www.kaust.edu.sa/sciencetown/'
                'icon' = 'https://www.kaust.edu.sa/favicon.ico'
            },
            @{
                'Title' = 'AI Summit Podcast - Updates on AI and cybersecurity in Saudi'
                'URL' = 'https://saudipedia.com/en/article/4692/economy-and-business/ai-summit-podcast'
                'icon' = 'https://saudipedia.com/favicon.ico'
            },
            @{
                'Title' = 'Startups Arabia Tech - Stories of Saudi tech startups and breakthroughs'
                'URL' = 'https://podcasts.apple.com/us/podcast/startups-arabia/id1633449095'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Arab News Politics - Breaking news on Saudi government and elections'
                    'URL' = 'https://www.arabnews.com/saudi-arabia'
                    'icon' = 'https://www.arabnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Saudi Gazette Local - Analysis of Saudi parliament debates and policy shifts'
                    'URL' = 'https://saudigazette.com.sa/local'
                    'icon' = 'https://saudigazette.com.sa/favicon.ico'
                },
                @{
                    'Title' = 'Saudi Press Agency - Coverage of Saudi monarchy and coalitions'
                    'URL' = 'https://www.spa.gov.sa/en'
                    'icon' = 'https://www.spa.gov.sa/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Saudi - Updates on Saudi foreign relations and security'
                    'URL' = 'https://www.aljazeera.com/where/saudi-arabia/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Middle East Eye Politics - Independent journalism on Saudi governance policies'
                    'URL' = 'https://www.middleeasteye.net/countries/saudi-arabia'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Politics - Critical reporting on Saudi political decisions'
                    'URL' = 'https://www.al-monitor.com/saudi-arabia'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'BBC Saudi Politics - Alternative narratives on Saudi monarchy'
                    'URL' = 'https://www.bbc.com/news/world-middle-east-14703512'
                    'icon' = 'https://www.bbc.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'TheSaudiReporters - Vlogs explaining Saudi political dynamics'
                'URL' = 'https://www.youtube.com/c/TheSaudiReporters'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Fahad Albutairi - Political commentary through Saudi cultural lens'
                'URL' = 'https://www.youtube.com/c/FahadAlbutairi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Omar Abdulaziz - Videos on Saudi parliament sessions and protests'
                'URL' = 'https://www.youtube.com/c/OmarAbdulaziz'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hatoon Kadi - Lectures on Saudi politics and society'
                'URL' = 'https://www.youtube.com/c/HatoonKadi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Middle East Focus - Two experts unpacking Saudi political news'
                'URL' = 'https://www.mei.edu/podcasts'
                'icon' = 'https://www.mei.edu/favicon.ico'
            },
            @{
                'Title' = 'POMEPS Conversations - Discussions on Saudi political landscape'
                'URL' = 'https://pomeps.org/pomeps-conversations'
                'icon' = 'https://pomeps.org/favicon.ico'
            },
            @{
                'Title' = 'Babel Translating Middle East - Expert talks on Saudi foreign policy and governance'
                'URL' = 'https://www.csis.org/podcasts/babel-translating-middle-east'
                'icon' = 'https://www.csis.org/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Harper''s Bazaar Arabia - Coverage of Riyadh Fashion Week and designers'
                    'URL' = 'https://www.harpersbazaararabia.com/'
                    'icon' = 'https://www.harpersbazaararabia.com/favicon.ico'
                },
                @{
                    'Title' = 'Vogue Arabia - Features on Saudi modest and street fashion'
                    'URL' = 'https://www.voguearabia.com/'
                    'icon' = 'https://www.voguearabia.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Fashion - News on sustainable Saudi apparel trends'
                    'URL' = 'https://english.alarabiya.net/life-style/fashion-and-beauty'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                },
                @{
                    'Title' = 'Business of Fashion Saudi - Reports on cultural influences in Saudi style'
                    'URL' = 'https://www.businessoffashion.com/tags/locations/saudi-arabia/'
                    'icon' = 'https://www.businessoffashion.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Fashion Revolution Saudi - Critiques of fashion industry and social issues'
                    'URL' = 'https://www.fashionrevolution.org/asia/saudi-arabia/'
                    'icon' = 'https://www.fashionrevolution.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Fashion - Alternative stories on ethical fashion in region'
                    'URL' = 'https://www.middleeasteye.net/countries/saudi-arabia'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Fashion - Reporting on cultural resistance through fashion'
                    'URL' = 'https://www.al-monitor.com/saudi-arabia'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Abha Shah - Vlogs on Saudi beauty and fashion trends'
                'URL' = 'https://www.youtube.com/c/AbhaShah'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Njoud Al-Shammari - Street style explorations in Riyadh'
                'URL' = 'https://www.youtube.com/c/NjoudAlShammari'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Shahd Naser - Coverage of Riyadh Fashion Week events'
                'URL' = 'https://www.youtube.com/c/ShahdNaser'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Maitha Abduljalil - Videos on Saudi designers and runways'
                'URL' = 'https://www.youtube.com/c/MaithaAbduljalil'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The Business of Fashion Podcast - Psychology of Saudi style and trends'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-business-of-fashion-podcast/id1225204588'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Gems of Arabia - History of Saudi fashion evolution'
                'URL' = 'https://authenticite.me/podcasts/'
                'icon' = 'https://authenticite.me/favicon.ico'
            },
            @{
                'Title' = 'The Majlis - Modest dressing in Saudi culture'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-majlis/id1748443130'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'TURDEF Saudi Defense - Updates on Saudi Armed Forces operations and defense tech'
                    'URL' = 'https://turdef.com/country/saudi-arabia-news'
                    'icon' = 'https://turdef.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Defaiya - Coverage of Saudi military strategies and exercises'
                    'URL' = 'https://www.defaiya.com/'
                    'icon' = 'https://www.defaiya.com/favicon.ico'
                },
                @{
                    'Title' = 'Defense Arabia - Reports on border security and reserves'
                    'URL' = 'https://english.defensearabia.com/'
                    'icon' = 'https://english.defensearabia.com/favicon.ico'
                },
                @{
                    'Title' = 'Breaking Defense Saudi - News on Saudi air force and intelligence'
                    'URL' = 'https://breakingdefense.com/tag/saudi-arabia/'
                    'icon' = 'https://breakingdefense.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Middle East Eye Military - Investigative reports on Saudi Armed Forces tactics'
                    'URL' = 'https://www.middleeasteye.net/countries/saudi-arabia'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Defense - Alternative analysis of Saudi arms sales'
                    'URL' = 'https://www.al-monitor.com/saudi-arabia'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'The Defense Post - Critical coverage of military actions in region'
                    'URL' = 'https://thedefensepost.com/tag/saudi-arabia/'
                    'icon' = 'https://thedefensepost.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Saudi Arabia Army Review - Official vlogs from training and missions'
                'URL' = 'https://www.youtube.com/results?search_query=saudi+arabia+army+review'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Binkov''s Battlegrounds - Analyses of Saudi military equipment and strategies'
                'URL' = 'https://www.youtube.com/c/BinkovsBattlegrounds'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Perun - Reviews of Saudi operations and gear'
                'URL' = 'https://www.youtube.com/c/PerunAU'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Covert Cabal - Videos on defense innovations and soldier stories'
                'URL' = 'https://www.youtube.com/c/CovertCabal'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'On Defense Podcast - Behind-the-scenes of Saudi Armed Forces operations and readiness'
                'URL' = 'https://podcasts.apple.com/us/podcast/i-on-defense-podcast/id1618135372'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'CSIS Events - Discussions on Saudi security and defense policies'
                'URL' = 'https://www.csis.org/podcasts/csis-events/saudi-arabian-defense-doctrine-new-era'
                'icon' = 'https://www.csis.org/favicon.ico'
            },
            @{
                'Title' = 'The Red Line Podcast - Expert talks on military strategy and threats'
                'URL' = 'https://www.theredlinepodcast.com/post/episode-82-saudi-arabia-a-global-economic-powderkeg'
                'icon' = 'https://www.theredlinepodcast.com/favicon.ico'
            }
        )
    }
}
'State of Palestine' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Palestine Chronicle Business - Premier source for Palestinian economy updates'
                    'URL' = 'https://www.palestinechronicle.com/category/business/'
                    'icon' = 'https://www.palestinechronicle.com/favicon.ico'
                },
                @{
                    'Title' = 'Palestine News Network Business - In-depth analysis of Palestinian financial markets'
                    'URL' = 'https://english.pnn.ps/category/business/'
                    'icon' = 'https://english.pnn.ps/favicon.ico'
                },
                @{
                    'Title' = 'Ma''an News Agency Business - Comprehensive coverage of Palestinian economic policies'
                    'URL' = 'https://www.maannews.net/en/Business.aspx'
                    'icon' = 'https://www.maannews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Palestine Business - Reports on Palestinian innovation and investments'
                    'URL' = 'https://www.aljazeera.com/where/palestine/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Mondoweiss Business - Independent views on Palestinian economic inequalities'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                },
                @{
                    'Title' = 'Electronic Intifada - Critical analysis of Palestinian business under occupation'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Business - Alternative perspectives on Palestinian trade challenges'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Nas Daily - Vlogs on Palestinian startups and economic life'
                'URL' = 'https://www.youtube.com/channel/UCJsUvAqDzczYv2UpFmu4PcA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Immy and Tani - Insights into Palestinian entrepreneurial markets'
                'URL' = 'https://www.youtube.com/channel/UCJyjUhKhtYRKSlxFycRg6VA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Feast In The Middle East - Videos exploring Palestinian business culture'
                'URL' = 'https://www.youtube.com/BLANCHETV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ooredoo Palestine - Features on Palestinian economic trends'
                'URL' = 'https://www.youtube.com/c/OoredooPalestine'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'This Is Palestine - Discussions on Palestinian economic resilience'
                'URL' = 'https://podcasts.apple.com/us/podcast/this-is-palestine/id1509337661'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Rethinking Palestine - Analysis of Palestinian business challenges'
                'URL' = 'https://al-shabaka.org/podcast/'
                'icon' = 'https://al-shabaka.org/favicon.ico'
            },
            @{
                'Title' = 'Occupied Thoughts - Insights into Palestinian innovation under occupation'
                'URL' = 'https://imeu.org/podcast'
                'icon' = 'https://imeu.org/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Palestine Chronicle Sports - Coverage of Palestinian soccer and athletics'
                    'URL' = 'https://www.palestinechronicle.com/category/sports/'
                    'icon' = 'https://www.palestinechronicle.com/favicon.ico'
                },
                @{
                    'Title' = 'Palestine News Network Sports - Reports on Palestinian teams and Olympics'
                    'URL' = 'https://english.pnn.ps/category/sports/'
                    'icon' = 'https://english.pnn.ps/favicon.ico'
                },
                @{
                    'Title' = 'Ma''an News Agency Sports - Updates on national team performances'
                    'URL' = 'https://www.maannews.net/en/Sports.aspx'
                    'icon' = 'https://www.maannews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Palestine Sports - Features on Palestinian athletes'
                    'URL' = 'https://www.aljazeera.com/where/palestine/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Electronic Intifada Sports - Independent stories on Palestinian athlete rights'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Sports - Critical views on sports under occupation'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss Sports - Alternative reporting on Palestinian sports resistance'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Sports for Life Palestine - Vlogs on Palestinian football highlights'
                'URL' = 'https://www.youtube.com/channel/UCkORawpBF56_LtPxOIRp8iA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Palestine Football Association - Videos of games and athlete stories'
                'URL' = 'https://www.youtube.com/results?search_query=palestine+football+association'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Chunkz - Vlogs featuring Palestinian sports events'
                'URL' = 'https://www.youtube.com/c/Chunkz'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Al Bawwab - Follows Palestinian swimmers and analyses'
                'URL' = 'https://www.youtube.com/results?search_query=al+bawwab+palestine'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The End of Sport - Episodes on Palestinian soccer leagues'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-end-of-sport/id1507693741'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Palestine in America Sports - Stories of Palestinian teams'
                'URL' = 'https://www.palestineinamerica.com/blog/category/Podcast'
                'icon' = 'https://www.palestineinamerica.com/favicon.ico'
            },
            @{
                'Title' = 'Sports Politika - Discussions on Palestinian athletes'
                'URL' = 'https://www.sportspolitika.news/podcast'
                'icon' = 'https://www.sportspolitika.news/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Palestine Chronicle Culture - Reviews of Palestinian arts and festivals'
                    'URL' = 'https://www.palestinechronicle.com/category/culture/'
                    'icon' = 'https://www.palestinechronicle.com/favicon.ico'
                },
                @{
                    'Title' = 'Palestine News Network Culture - Features on Palestinian literature and music'
                    'URL' = 'https://english.pnn.ps/category/culture/'
                    'icon' = 'https://english.pnn.ps/favicon.ico'
                },
                @{
                    'Title' = 'Ma''an News Agency Culture - News on Palestinian art exhibitions'
                    'URL' = 'https://www.maannews.net/en/Culture.aspx'
                    'icon' = 'https://www.maannews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Palestine Culture - Coverage of Palestinian heritage'
                    'URL' = 'https://www.aljazeera.com/where/palestine/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Electronic Intifada Culture - Critiques of Palestinian cultural policies'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Culture - Alternative views on Palestinian arts'
                    'URL' = 'https://www.972mag.com/topic/palestinian-culture/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss Culture - Progressive perspectives on Palestinian society'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'The Salukie - Vlogs on Palestinian society and daily culture'
                'URL' = 'https://www.youtube.com/thesalukie'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Immy and Tani Palestine - Cultural explorations of traditions'
                'URL' = 'https://www.youtube.com/channel/UCJyjUhKhtYRKSlxFycRg6VA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'TheTravelingClatt - Bridging cultures through Palestinian vlogs'
                'URL' = 'https://www.youtube.com/thetravelingclatt'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Arab Ambience - Videos showcasing Palestinian heritage sites'
                'URL' = 'https://www.youtube.com/c/ArabAmbience'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'This Is Palestine Culture - Episodes on cultural milestones'
                'URL' = 'https://podcasts.apple.com/us/podcast/this-is-palestine/id1509337661'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Occupied Thoughts - Conversations with Palestinian creators'
                'URL' = 'https://imeu.org/podcast'
                'icon' = 'https://imeu.org/favicon.ico'
            },
            @{
                'Title' = 'Rethinking Palestine - Narrative tales of Palestinian culture'
                'URL' = 'https://al-shabaka.org/podcast/'
                'icon' = 'https://al-shabaka.org/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Palestine Chronicle Science - Latest on Palestinian tech innovations'
                    'URL' = 'https://www.palestinechronicle.com/category/science/'
                    'icon' = 'https://www.palestinechronicle.com/favicon.ico'
                },
                @{
                    'Title' = 'Palestine Academy Science - Coverage of Palestinian research breakthroughs'
                    'URL' = 'https://www.palast.ps/'
                    'icon' = 'https://www.palast.ps/favicon.ico'
                },
                @{
                    'Title' = 'Ma''an News Agency Tech - News on Palestinian AI developments'
                    'URL' = 'https://www.maannews.net/en/Science-and-Technology.aspx'
                    'icon' = 'https://www.maannews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Palestine Tech - Reports on Palestinian scientific achievements'
                    'URL' = 'https://www.aljazeera.com/where/palestine/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Scientists for Palestine - Critical analysis of tech under occupation'
                    'URL' = 'https://www.scientists4palestine.org/'
                    'icon' = 'https://www.scientists4palestine.org/favicon.ico'
                },
                @{
                    'Title' = 'Electronic Intifada Tech - Alternative reporting on surveillance impacts'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Tech - Perspectives on ethical issues in Palestinian science'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Scientists for Palestine - Vlogs on Palestinian biotech hubs'
                'URL' = 'https://www.youtube.com/channel/UCsrUGUslx1wan5rvoQNTDvQ'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Tech For Palestine - Videos exploring Palestinian technologies'
                'URL' = 'https://www.youtube.com/@tech4palestine'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Nas Daily Tech - Interviews with Palestinian tech leaders'
                'URL' = 'https://www.youtube.com/channel/UCJsUvAqDzczYv2UpFmu4PcA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Palestine Deep Dive - Explanations of Palestinian sustainability tech'
                'URL' = 'https://www.youtube.com/results?search_query=palestine+deep+dive+tech'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The Palestine Laboratory - Talks with Palestinian tech innovators'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-palestine-laboratory-podcast/id1777263936'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Palestine Deep Dive - Updates on AI in Palestine'
                'URL' = 'https://open.spotify.com/show/0dDGVWhUePyj4dx0yvPedw'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Occupied Tech - Stories of Palestinian tech breakthroughs'
                'URL' = 'https://www.youtube.com/watch?v=A95asBbCNZo'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Palestine Chronicle Politics - Breaking news on Palestinian governance'
                    'URL' = 'https://www.palestinechronicle.com/category/politics/'
                    'icon' = 'https://www.palestinechronicle.com/favicon.ico'
                },
                @{
                    'Title' = 'Palestine News Network Politics - Analysis of Palestinian policy shifts'
                    'URL' = 'https://english.pnn.ps/category/politics/'
                    'icon' = 'https://english.pnn.ps/favicon.ico'
                },
                @{
                    'Title' = 'Ma''an News Agency Politics - Coverage of Palestinian authority'
                    'URL' = 'https://www.maannews.net/en/Politics.aspx'
                    'icon' = 'https://www.maannews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Palestine Politics - Updates on Palestinian relations'
                    'URL' = 'https://www.aljazeera.com/where/palestine/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Electronic Intifada Politics - Independent journalism on occupation policies'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Politics - Critical reporting on Palestinian decisions'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss Politics - Alternative narratives on Palestinian governance'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Nas Daily Politics - Vlogs explaining Palestinian dynamics'
                'URL' = 'https://www.youtube.com/channel/UCJsUvAqDzczYv2UpFmu4PcA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Owen Jones - Political commentary on Palestinian issues'
                'URL' = 'https://www.youtube.com/@OwenJonesTalks'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Bassem Youssef - Videos on Palestinian protests and sessions'
                'URL' = 'https://www.youtube.com/results?search_query=bassem+youssef+palestine'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hasan Piker - Lectures on Palestinian politics'
                'URL' = 'https://www.youtube.com/c/HasanAbi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'This Is Palestine Politics - Unpacking Palestinian political news'
                'URL' = 'https://podcasts.apple.com/us/podcast/this-is-palestine/id1509337661'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Rethinking Palestine - Discussions on political landscape'
                'URL' = 'https://al-shabaka.org/podcast/'
                'icon' = 'https://al-shabaka.org/favicon.ico'
            },
            @{
                'Title' = 'Let''s Talk Palestine - Expert talks on Palestinian policy'
                'URL' = 'https://open.spotify.com/show/7jPGgYybr0lrmIHcpQlj93'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Palestine Chronicle Fashion - Coverage of Palestinian designers'
                    'URL' = 'https://www.palestinechronicle.com/category/lifestyle/fashion/'
                    'icon' = 'https://www.palestinechronicle.com/favicon.ico'
                },
                @{
                    'Title' = 'Dazed Palestine Fashion - Features on Palestinian modest fashion'
                    'URL' = 'https://www.dazeddigital.com/palestine'
                    'icon' = 'https://www.dazeddigital.com/favicon.ico'
                },
                @{
                    'Title' = 'Grazia Magazine Palestine - News on sustainable Palestinian trends'
                    'URL' = 'https://graziamagazine.com/me/articles/palestinian-owned-fashion-brands-to-support-today-and-every-day/'
                    'icon' = 'https://graziamagazine.com/favicon.ico'
                },
                @{
                    'Title' = 'Arab News Palestine Fashion - Reports on cultural influences in style'
                    'URL' = 'https://www.arabnews.com/node/2613751/lifestyle'
                    'icon' = 'https://www.arabnews.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '+972 Magazine Fashion - Critiques of fashion and social issues'
                    'URL' = 'https://www.972mag.com/trashy-palestinian-fashion/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Electronic Intifada Fashion - Alternative stories on ethical fashion'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss Fashion - Reporting on cultural resistance through fashion'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Nour Arida - Vlogs on Palestinian beauty and fashion trends'
                'URL' = 'https://www.youtube.com/results?search_query=nour+arida+fashion'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Yara Eid - Street style explorations in Palestinian cities'
                'URL' = 'https://www.youtube.com/results?search_query=yara+eid+fashion'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Zuhd Store - Coverage of Palestinian fashion events'
                'URL' = 'https://www.youtube.com/results?search_query=zuhd+store+fashion'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hamzah Saadah - Videos on Palestinian designers and runways'
                'URL' = 'https://www.youtube.com/@HamzahSaadah'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Sumud Podcast Fashion - Psychology of Palestinian style trends'
                'URL' = 'https://open.spotify.com/show/0hccTHOPtBVPAco1TKe7WG'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Preserving Palestine - History of Palestinian fashion evolution'
                'URL' = 'https://podcasts.apple.com/us/podcast/preserving-palestine/id1509337661'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Empire Club Fashion - Modest dressing in Palestinian culture'
                'URL' = 'https://podcasts.apple.com/ci/podcast/empire-club-the-history-of-the-keffiyeh-palestinian-scarf/id1639561921'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Palestine Chronicle Military - Updates on Palestinian resistance operations'
                    'URL' = 'https://www.palestinechronicle.com/category/military/'
                    'icon' = 'https://www.palestinechronicle.com/favicon.ico'
                },
                @{
                    'Title' = 'IMEMC News Military - Coverage of Palestinian military strategies'
                    'URL' = 'https://imemc.org/'
                    'icon' = 'https://imemc.org/favicon.ico'
                },
                @{
                    'Title' = 'Ma''an News Agency Military - Reports on border security'
                    'URL' = 'https://www.maannews.net/en/Military.aspx'
                    'icon' = 'https://www.maannews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Palestine Military - News on Palestinian forces'
                    'URL' = 'https://www.aljazeera.com/where/palestine/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Electronic Intifada Military - Investigative reports on resistance tactics'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Military - Alternative analysis of arms and conflicts'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss Military - Critical coverage of military actions'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Nas Daily Military - Vlogs on Palestinian resistance stories'
                'URL' = 'https://www.youtube.com/channel/UCJsUvAqDzczYv2UpFmu4PcA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'The Salukie - Analyses of Palestinian military equipment'
                'URL' = 'https://www.youtube.com/thesalukie'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Immy and Tani - Reviews of operations and gear'
                'URL' = 'https://www.youtube.com/channel/UCJyjUhKhtYRKSlxFycRg6VA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Arab Ambience - Videos on defense innovations'
                'URL' = 'https://www.youtube.com/c/ArabAmbience'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'This Is Palestine Military - Behind-the-scenes of resistance operations'
                'URL' = 'https://podcasts.apple.com/us/podcast/this-is-palestine/id1509337661'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Tug of War - Discussions on Palestinian security policies'
                'URL' = 'https://www.cnn.com/audio/podcasts/tug-of-war'
                'icon' = 'https://www.cnn.com/favicon.ico'
            },
            @{
                'Title' = 'Decision Points - Expert talks on military strategy'
                'URL' = 'https://www.washingtoninstitute.org/policy-analysis/decision-points-podcast-season-5-gaza-war-and-its-aftermath'
                'icon' = 'https://www.washingtoninstitute.org/favicon.ico'
            }
        )
    }
}}
'West Bank' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'World Bank West Bank and Gaza - Latest development news research and data on economy'
                    'URL' = 'https://www.worldbank.org/en/country/westbankandgaza'
                    'icon' = 'https://www.worldbank.org/favicon.ico'
                },
                @{
                    'Title' = 'Bank of Palestine News - Updates on Palestinian banking and economic awards'
                    'URL' = 'https://www.bop.ps/en/about/news'
                    'icon' = 'https://www.bop.ps/favicon.ico'
                },
                @{
                    'Title' = 'Financial Times West Bank - Breaking news on economy politics and business'
                    'URL' = 'https://www.ft.com/west-bank'
                    'icon' = 'https://www.ft.com/favicon.ico'
                },
                @{
                    'Title' = 'EBRD West Bank and Gaza - Focus on private sector competitiveness and finance access'
                    'URL' = 'https://www.ebrd.com/home/what-we-do/where-we-invest/west-bank-and-gaza.html'
                    'icon' = 'https://www.ebrd.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'US State Department Investment Climate West Bank - Reports on business environment and challenges'
                    'URL' = 'https://www.state.gov/reports/2024-investment-climate-statements/west-bank-and-gaza'
                    'icon' = 'https://www.state.gov/favicon.ico'
                },
                @{
                    'Title' = 'PBS UN Blacklist Firms - Coverage of companies complicit in rights violations settlements'
                    'URL' = 'https://www.pbs.org/newshour/world/68-firms-added-to-un-blacklist-for-alleged-complicity-in-rights-violations-in-israeli-settlements'
                    'icon' = 'https://www.pbs.org/favicon.ico'
                },
                @{
                    'Title' = 'KLP Exclusion Companies - Decisions on firms linked to Israeli settlements violations'
                    'URL' = 'https://www.klp.no/en/corporate-responsibility-and-responsible-investments/exclusion-and-dialogue'
                    'icon' = 'https://www.klp.no/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Nas Daily - Vlogs on Palestinian startups and economic resilience in territories'
                'URL' = 'https://www.youtube.com/channel/UCJsUvAqDzczYv2UpFmu4PcA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Immy and Tani - Insights into West Bank entrepreneurial ecosystems and markets'
                'URL' = 'https://www.youtube.com/channel/UCJyjUhKhtYRKSlxFycRg6VA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Feast In The Middle East - Videos exploring Palestinian business culture and trade'
                'URL' = 'https://www.youtube.com/BLANCHETV'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ooredoo Palestine - Features on West Bank economic trends and innovations'
                'URL' = 'https://www.youtube.com/c/OoredooPalestine'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'This Is Palestine Business - Discussions on West Bank economic recovery and policies'
                'URL' = 'https://podcasts.apple.com/us/podcast/this-is-palestine/id1509337661'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Rethinking Palestine Economy - Analysis of West Bank business challenges and opportunities'
                'URL' = 'https://al-shabaka.org/podcast/'
                'icon' = 'https://al-shabaka.org/favicon.ico'
            },
            @{
                'Title' = 'Occupied Thoughts Innovation - Insights into business amid geopolitical tensions'
                'URL' = 'https://imeu.org/podcast'
                'icon' = 'https://imeu.org/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Times of Israel Sports West Bank - Coverage of Palestinian soccer and community fields'
                    'URL' = 'https://www.timesofisrael.com/fifa-teams-up-with-switzerland-to-fund-soccer-fields-for-palestinians-in-west-bank/'
                    'icon' = 'https://www.timesofisrael.com/favicon.ico'
                },
                @{
                    'Title' = 'Arab News Sports Palestine - Reports on West Bank teams and regional competitions'
                    'URL' = 'https://www.arabnews.com/node/1524251/sport'
                    'icon' = 'https://www.arabnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Anadolu Agency Sports - Updates on Palestinian athletes and officials impacted'
                    'URL' = 'https://www.aa.com.tr/en/middle-east/nearly-800-palestinian-athletes-sports-officials-killed-by-israel-since-october-2023/3617105'
                    'icon' = 'https://www.aa.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'Tehran Times Sports - Features on West Bank sport facilities and damages'
                    'URL' = 'https://www.tehrantimes.com/news/516656/Moe-than-660-Palestinian-athletes-sporting-officials-killed'
                    'icon' = 'https://www.tehrantimes.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'BDS Movement Sports Boycott - Independent stories on athlete rights and apartheid'
                    'URL' = 'https://bdsmovement.net/ban-apartheid-israel-from-sports'
                    'icon' = 'https://bdsmovement.net/favicon.ico'
                },
                @{
                    'Title' = 'Human Rights Watch Sports - Critical views on FIFA sponsoring seized land games'
                    'URL' = 'https://www.hrw.org/news/2016/09/25/israel/palestine-fifa-sponsoring-games-seized-land'
                    'icon' = 'https://www.hrw.org/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Sports Restrictions - Alternative reporting on movement stifling football'
                    'URL' = 'https://www.aljazeera.com/video/newsfeed/2025/8/19/children-tear-gassed-at-football-practice-in-occupied-west-bank'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Sports for Life Palestine - Vlogs on West Bank football and soccer highlights'
                'URL' = 'https://www.youtube.com/channel/UCkORawpBF56_LtPxOIRp8iA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Palestine Football Association - Videos of West Bank games and athlete stories'
                'URL' = 'https://www.youtube.com/results?search_query=palestine+football+association'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Chunkz Sports Palestine - Vlogs featuring West Bank sports events and culture'
                'URL' = 'https://www.youtube.com/c/Chunkz'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Al Bawwab Swimmer - Follows West Bank national athletes and analyses'
                'URL' = 'https://www.youtube.com/results?search_query=al+bawwab+palestine'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The End of Sport Palestine - Episodes on West Bank soccer and basketball leagues'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-end-of-sport/id1507693741'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Palestine in America Sports - Stories of West Bank teams and history'
                'URL' = 'https://www.palestineinamerica.com/blog/category/Podcast'
                'icon' = 'https://www.palestineinamerica.com/favicon.ico'
            },
            @{
                'Title' = 'Sports Politika Palestine - Discussions on West Bank athletes and competitions'
                'URL' = 'https://www.sportspolitika.news/podcast'
                'icon' = 'https://www.sportspolitika.news/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Palestine Chronicle Culture - Reviews of West Bank arts theater and festivals'
                    'URL' = 'https://www.palestinechronicle.com/category/culture/'
                    'icon' = 'https://www.palestinechronicle.com/favicon.ico'
                },
                @{
                    'Title' = 'Palestine News Network Culture - Features on West Bank literature music and cinema'
                    'URL' = 'https://english.pnn.ps/category/culture/'
                    'icon' = 'https://english.pnn.ps/favicon.ico'
                },
                @{
                    'Title' = 'Ma''an News Agency Culture - News on West Bank art exhibitions and events'
                    'URL' = 'https://www.maannews.net/en/Culture.aspx'
                    'icon' = 'https://www.maannews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Palestine Culture - Coverage of West Bank heritage and modern arts'
                    'URL' = 'https://www.aljazeera.com/where/palestine/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Electronic Intifada Culture - Independent critiques of West Bank cultural policies'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Culture - Alternative views on West Bank arts and society'
                    'URL' = 'https://www.972mag.com/topic/palestinian-culture/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss Culture - Progressive perspectives on West Bank cultural exchanges'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'The Salukie - Vlogs on West Bank society culture and daily life'
                'URL' = 'https://www.youtube.com/thesalukie'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Immy and Tani West Bank - Cultural explorations of Palestinian traditions and history'
                'URL' = 'https://www.youtube.com/channel/UCJyjUhKhtYRKSlxFycRg6VA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'TheTravelingClatt Palestine - Bridging cultures through vlogs on West Bank festivals'
                'URL' = 'https://www.youtube.com/thetravelingclatt'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Arab Ambience - Videos showcasing West Bank arts and heritage sites'
                'URL' = 'https://www.youtube.com/c/ArabAmbience'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'This Is Palestine Culture - Episodes on West Bank cultural milestones and figures'
                'URL' = 'https://podcasts.apple.com/us/podcast/this-is-palestine/id1509337661'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Occupied Thoughts Creators - Conversations with West Bank artists and cultural creators'
                'URL' = 'https://imeu.org/podcast'
                'icon' = 'https://imeu.org/favicon.ico'
            },
            @{
                'Title' = 'Rethinking Palestine Tales - Narrative tales of West Bank culture and personal stories'
                'URL' = 'https://al-shabaka.org/podcast/'
                'icon' = 'https://al-shabaka.org/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Palestine Chronicle Science - Latest on West Bank tech innovations and startups'
                    'URL' = 'https://www.palestinechronicle.com/category/science/'
                    'icon' = 'https://www.palestinechronicle.com/favicon.ico'
                },
                @{
                    'Title' = 'Palestine Academy Science - Coverage of West Bank research breakthroughs'
                    'URL' = 'https://www.palast.ps/'
                    'icon' = 'https://www.palast.ps/favicon.ico'
                },
                @{
                    'Title' = 'Ma''an News Agency Tech - News on West Bank cybersecurity and AI developments'
                    'URL' = 'https://www.maannews.net/en/Science-and-Technology.aspx'
                    'icon' = 'https://www.maannews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Palestine Tech - Reports on West Bank scientific achievements'
                    'URL' = 'https://www.aljazeera.com/where/palestine/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Scientists for Palestine - Critical analysis of West Bank tech under occupation'
                    'URL' = 'https://www.scientists4palestine.org/'
                    'icon' = 'https://www.scientists4palestine.org/favicon.ico'
                },
                @{
                    'Title' = 'Electronic Intifada Tech - Alternative reporting on surveillance impacts in territories'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Tech - Perspectives on ethical issues in West Bank science'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Scientists for Palestine - Vlogs on West Bank biotech and innovation hubs'
                'URL' = 'https://www.youtube.com/channel/UCsrUGUslx1wan5rvoQNTDvQ'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Tech For Palestine - Videos exploring West Bank life-saving technologies'
                'URL' = 'https://www.youtube.com/@tech4palestine'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Nas Daily Tech - Interviews with West Bank tech thought leaders'
                'URL' = 'https://www.youtube.com/channel/UCJsUvAqDzczYv2UpFmu4PcA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Palestine Deep Dive Tech - Explanations of West Bank water tech and sustainability'
                'URL' = 'https://www.youtube.com/results?search_query=palestine+deep+dive+tech'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The Palestine Laboratory - Talks with West Bank tech founders and investors'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-palestine-laboratory-podcast/id1777263936'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Palestine Deep Dive AI - Updates on AI and cybersecurity in West Bank'
                'URL' = 'https://open.spotify.com/show/0dDGVWhUePyj4dx0yvPedw'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Occupied Tech Stories - Stories of West Bank tech startups and breakthroughs'
                'URL' = 'https://www.youtube.com/watch?v=A95asBbCNZo'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Times of Israel Politics West Bank - Breaking news on governance and elections'
                    'URL' = 'https://www.timesofisrael.com/'
                    'icon' = 'https://www.timesofisrael.com/favicon.ico'
                },
                @{
                    'Title' = 'Palestine Chronicle Politics - Analysis of West Bank policy shifts and authority'
                    'URL' = 'https://www.palestinechronicle.com/category/politics/'
                    'icon' = 'https://www.palestinechronicle.com/favicon.ico'
                },
                @{
                    'Title' = 'Haaretz West Bank Politics - Coverage of Palestinian authority and coalitions'
                    'URL' = 'https://www.haaretz.com/'
                    'icon' = 'https://www.haaretz.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Occupied West Bank - Updates on foreign relations and security'
                    'URL' = 'https://www.aljazeera.com/tag/occupied-west-bank/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Electronic Intifada Politics - Independent journalism on West Bank governance policies'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Politics - Critical reporting on West Bank political decisions'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss Politics - Alternative narratives on West Bank occupation'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Nas Daily West Bank - Vlogs explaining Palestinian political dynamics'
                'URL' = 'https://www.youtube.com/channel/UCJsUvAqDzczYv2UpFmu4PcA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Owen Jones Palestine - Political commentary through West Bank lens'
                'URL' = 'https://www.youtube.com/@OwenJonesTalks'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Bassem Youssef Commentary - Videos on West Bank protests and sessions'
                'URL' = 'https://www.youtube.com/results?search_query=bassem+youssef+palestine'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hasan Piker Politics - Lectures on West Bank politics and society'
                'URL' = 'https://www.youtube.com/c/HasanAbi'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'This Is Palestine Politics - Unpacking West Bank political news and issues'
                'URL' = 'https://podcasts.apple.com/us/podcast/this-is-palestine/id1509337661'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Rethinking Palestine Landscape - Discussions on West Bank political landscape'
                'URL' = 'https://al-shabaka.org/podcast/'
                'icon' = 'https://al-shabaka.org/favicon.ico'
            },
            @{
                'Title' = 'Let''s Talk Palestine Policy - Expert talks on West Bank foreign policy and governance'
                'URL' = 'https://open.spotify.com/show/7jPGgYybr0lrmIHcpQlj93'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Palestine News Network Fashion - Coverage of West Bank designers and weeks'
                    'URL' = 'https://english.pnn.ps/news/47866'
                    'icon' = 'https://english.pnn.ps/favicon.ico'
                },
                @{
                    'Title' = 'The Cut Fashion West Bank - Features on modest and street fashion in Ramallah'
                    'URL' = 'https://www.thecut.com/article/what-its-like-to-be-a-fashion-designer-in-the-west-bank.html'
                    'icon' = 'https://www.thecut.com/favicon.ico'
                },
                @{
                    'Title' = 'Grazia Magazine Palestine - News on sustainable West Bank apparel trends'
                    'URL' = 'https://graziamagazine.com/me/articles/palestinian-owned-fashion-brands-to-support-today-and-every-day/'
                    'icon' = 'https://graziamagazine.com/favicon.ico'
                },
                @{
                    'Title' = 'Arab News Fashion Palestine - Reports on cultural influences in West Bank style'
                    'URL' = 'https://www.arabnews.com/node/2613751/lifestyle'
                    'icon' = 'https://www.arabnews.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = '+972 Magazine Fashion - Critiques of West Bank fashion industry issues'
                    'URL' = 'https://www.972mag.com/trashy-palestinian-fashion/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Electronic Intifada Fashion - Alternative stories on ethical fashion resistance'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss Fashion - Reporting on cultural resistance through West Bank fashion'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Nour Arida Fashion - Vlogs on West Bank beauty and fashion trends'
                'URL' = 'https://www.youtube.com/results?search_query=nour+arida+fashion'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Yara Eid Style - Street style explorations in West Bank cities'
                'URL' = 'https://www.youtube.com/results?search_query=yara+eid+fashion'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Zuhd Store Events - Coverage of West Bank fashion week and events'
                'URL' = 'https://www.youtube.com/results?search_query=zuhd+store+fashion'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hamzah Saadah Designers - Videos on West Bank designers and runways'
                'URL' = 'https://www.youtube.com/@HamzahSaadah'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Sumud Podcast Fashion - Psychology of West Bank style and trends'
                'URL' = 'https://open.spotify.com/show/0hccTHOPtBVPAco1TKe7WG'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Preserving Palestine Evolution - History of West Bank fashion evolution'
                'URL' = 'https://podcasts.apple.com/us/podcast/preserving-palestine/id1509337661'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Empire Club Modest - Modest dressing in West Bank culture'
                'URL' = 'https://podcasts.apple.com/ci/podcast/empire-club-the-history-of-the-keffiyeh-palestinian-scarf/id1639561921'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Al Jazeera Occupied West Bank Military - Updates on IDF operations and defense'
                    'URL' = 'https://www.aljazeera.com/tag/occupied-west-bank/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                },
                @{
                    'Title' = 'i24NEWS Israeli Military West Bank - Coverage of strategies and exercises'
                    'URL' = 'https://www.i24news.tv/en/tags/israeli-military'
                    'icon' = 'https://www.i24news.tv/favicon.ico'
                },
                @{
                    'Title' = 'Times of Israel IDF West Bank - Reports on border security and reserves'
                    'URL' = 'https://www.timesofisrael.com/'
                    'icon' = 'https://www.timesofisrael.com/favicon.ico'
                },
                @{
                    'Title' = 'Haaretz Military West Bank - News on air force and intelligence operations'
                    'URL' = 'https://www.haaretz.com/'
                    'icon' = 'https://www.haaretz.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Electronic Intifada Military - Investigative reports on IDF tactics in West Bank'
                    'URL' = 'https://electronicintifada.net/'
                    'icon' = 'https://electronicintifada.net/favicon.ico'
                },
                @{
                    'Title' = '+972 Magazine Military - Alternative analysis of arms sales and conflicts'
                    'URL' = 'https://www.972mag.com/'
                    'icon' = 'https://www.972mag.com/favicon.ico'
                },
                @{
                    'Title' = 'Mondoweiss Military - Critical coverage of military actions in territories'
                    'URL' = 'https://mondoweiss.net/'
                    'icon' = 'https://mondoweiss.net/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Nas Daily Resistance - Vlogs on West Bank resistance stories and operations'
                'URL' = 'https://www.youtube.com/channel/UCJsUvAqDzczYv2UpFmu4PcA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'The Salukie Military - Analyses of West Bank military equipment and strategies'
                'URL' = 'https://www.youtube.com/thesalukie'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Immy and Tani Operations - Reviews of West Bank operations and gear'
                'URL' = 'https://www.youtube.com/channel/UCJyjUhKhtYRKSlxFycRg6VA'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Arab Ambience Defense - Videos on West Bank defense innovations and stories'
                'URL' = 'https://www.youtube.com/c/ArabAmbience'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'This Is Palestine Military - Behind-the-scenes of West Bank resistance operations'
                'URL' = 'https://podcasts.apple.com/us/podcast/this-is-palestine/id1509337661'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Tug of War Security - Discussions on West Bank security and defense policies'
                'URL' = 'https://www.cnn.com/audio/podcasts/tug-of-war'
                'icon' = 'https://www.cnn.com/favicon.ico'
            },
            @{
                'Title' = 'Decision Points Strategy - Expert talks on West Bank military strategy and threats'
                'URL' = 'https://www.washingtoninstitute.org/policy-analysis/decision-points-podcast-season-5-gaza-war-and-its-aftermath'
                'icon' = 'https://www.washingtoninstitute.org/favicon.ico'
            }
        )
    }
}
'Syria' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'SANA Business - Official updates on Syrian economy and trade policies'
                    'URL' = 'https://sana.sy/en/economic/'
                    'icon' = 'https://sana.sy/favicon.ico'
                },
                @{
                    'Title' = 'Syria Report - In-depth analysis of Syrian business and finance'
                    'URL' = 'https://syria-report.com/'
                    'icon' = 'https://syria-report.com/favicon.ico'
                },
                @{
                    'Title' = 'Enab Baladi Economy - Coverage of Syrian markets and investment news'
                    'URL' = 'https://english.enabbaladi.net/'
                    'icon' = 'https://english.enabbaladi.net/favicon.ico'
                },
                @{
                    'Title' = 'Syrian Observer Business - Reports on Syrian corporate developments and reforms'
                    'URL' = 'https://syrianobserver.com/'
                    'icon' = 'https://syrianobserver.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Al-Monitor Syria - Independent views on Syrian economic challenges'
                    'URL' = 'https://www.al-monitor.com/syria'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Business - Critical analysis of Syrian sanctions impacts'
                    'URL' = 'https://www.middleeasteye.net/countries/syria'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Syria Direct Economy - Alternative perspectives on business under transition'
                    'URL' = 'https://syriadirect.org/'
                    'icon' = 'https://syriadirect.org/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Hungry Syrian Wanderer - Vlogs on Syrian entrepreneurial stories and markets'
                'URL' = 'https://www.youtube.com/c/TheHungrySyrianWanderer'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Basel Esa - Insights into Syrian fashion business and startups'
                'URL' = 'https://www.youtube.com/@baselesa'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Mahmoud Bakkour - Videos exploring Syrian chef businesses and economy'
                'URL' = 'https://www.youtube.com/@chefmahmoud'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Syrian Wanderer - Features on post-war economic recovery and trade'
                'URL' = 'https://www.youtube.com/results?search_query=syrian+wanderer+business'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Syria''s Business Model - Discussions on Syrian economic policies and recovery'
                'URL' = 'https://podcasts.apple.com/ie/podcast/bassam-haddad-syrias-business-model-conversations/id1529437743?i=1000625145406'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Syria''s Future After Assad - Analysis of business challenges and opportunities'
                'URL' = 'https://www.youtube.com/watch?v=CxB4Sl8p-0U'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Building Business in Syria - Insights into innovation amid geopolitical tensions'
                'URL' = 'https://open.spotify.com/show/4hHUSjemaCojDGFir3Ns5L'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'SANA Sports - Coverage of Syrian soccer basketball and national teams'
                    'URL' = 'https://sana.sy/en/sport/'
                    'icon' = 'https://sana.sy/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Sports Syria - Reports on Syrian athletes in regional competitions'
                    'URL' = 'https://english.alarabiya.net/sports'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                },
                @{
                    'Title' = 'Enab Baladi Sports - Updates on Syrian league performances and reforms'
                    'URL' = 'https://english.enabbaladi.net/'
                    'icon' = 'https://english.enabbaladi.net/favicon.ico'
                },
                @{
                    'Title' = 'Syrian Observer Sports - Features on Syrian Olympic team and events'
                    'URL' = 'https://syrianobserver.com/'
                    'icon' = 'https://syrianobserver.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Sports Politika Syria - Independent stories on athlete rights and politics'
                    'URL' = 'https://www.sportspolitika.news/'
                    'icon' = 'https://www.sportspolitika.news/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Sports - Critical views on discrimination in Syrian sports'
                    'URL' = 'https://www.middleeasteye.net/countries/syria'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Sports - Alternative reporting on regional sports tensions'
                    'URL' = 'https://www.al-monitor.com/syria'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Syria Pro Sport - Vlogs on Syrian football highlights and matches'
                'URL' = 'https://www.youtube.com/c/SyriaProSport'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Syrian Gamer - Videos of Syrian games and athlete stories'
                'URL' = 'https://www.youtube.com/@SyrianGamer1'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Al Jazira Club Syria - Vlogs featuring Syrian sports events and culture'
                'URL' = 'https://www.youtube.com/results?search_query=al+jazira+club+syria'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Kora React - Follows Syrian national athletes and game analyses'
                'URL' = 'https://www.youtube.com/@KoraReact'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Syria''s World Cup Dream - Episodes on Syrian soccer leagues and history'
                'URL' = 'https://www.bbc.co.uk/programmes/p053x0pm'
                'icon' = 'https://www.bbc.co.uk/favicon.ico'
            },
            @{
                'Title' = 'Yusra Mardini Story - Stories of Syrian swimmers and sports resilience'
                'URL' = 'https://www.redbull.com/gb-en/projects/yusra-mardini-swam-20-people-to-safety-podcast'
                'icon' = 'https://www.redbull.com/favicon.ico'
            },
            @{
                'Title' = 'Syrian Paralympian - Discussions on Syrian athletes and competitions'
                'URL' = 'https://dohadebates.com/human-rights/a-syrian-paralympian-who-competes-for-all-refugees/'
                'icon' = 'https://dohadebates.com/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'SANA Culture - Reviews of Syrian arts theater and festivals'
                    'URL' = 'https://sana.sy/en/'
                    'icon' = 'https://sana.sy/favicon.ico'
                },
                @{
                    'Title' = 'Syria Direct Culture - Features on Syrian literature music and cinema'
                    'URL' = 'https://syriadirect.org/'
                    'icon' = 'https://syriadirect.org/favicon.ico'
                },
                @{
                    'Title' = 'Syrian Observer Culture - News on Syrian art exhibitions and events'
                    'URL' = 'https://syrianobserver.com/'
                    'icon' = 'https://syrianobserver.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Syria Culture - Coverage of Syrian heritage and modern arts'
                    'URL' = 'https://www.aljazeera.com/where/syria/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Enab Baladi Culture - Independent critiques of Syrian cultural policies'
                    'URL' = 'https://english.enabbaladi.net/'
                    'icon' = 'https://english.enabbaladi.net/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Culture - Alternative views on Syrian cultural exchanges'
                    'URL' = 'https://www.middleeasteye.net/countries/syria'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Culture - Progressive perspectives on Syrian arts and society'
                    'URL' = 'https://www.al-monitor.com/syria'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Hungry Syrian Wanderer - Vlogs on Syrian society culture and daily life'
                'URL' = 'https://www.youtube.com/c/TheHungrySyrianWanderer'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Diala and Waref - Cultural explorations of Syrian traditions and history'
                'URL' = 'https://www.youtube.com/results?search_query=diala+waref+syria'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Carrie Patsalis - Bridging cultures through vlogs on Syrian festivals'
                'URL' = 'https://www.youtube.com/@carriepatsalis'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Syrian Wanderer - Videos showcasing Syrian arts and heritage sites'
                'URL' = 'https://www.youtube.com/results?search_query=syrian+wanderer+culture'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Syria''s Lost Generation - Episodes on cultural milestones and figures'
                'URL' = 'https://open.spotify.com/show/0B8ELDXG7HhSsodO12PYch'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Syrian Culture and Spirituality - Conversations with Syrian artists and creators'
                'URL' = 'https://podcasts.apple.com/cz/podcast/episode-9-exploring-syrian-culture-spirituality-w-nour/id1657897064?i=1000624259651'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Voices from Diaspora - Narrative tales of Syrian culture and stories'
                'URL' = 'https://syriadirect.org/podcast-voices-from-the-diaspora/'
                'icon' = 'https://syriadirect.org/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'SANA Science Tech - Latest on Syrian tech innovations and research'
                    'URL' = 'https://sana.sy/en/science-and-technology/'
                    'icon' = 'https://sana.sy/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Syria Tech - Coverage of Syrian scientific breakthroughs'
                    'URL' = 'https://www.aljazeera.com/where/syria/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                },
                @{
                    'Title' = 'Syrian Observer Tech - News on Syrian cybersecurity and AI developments'
                    'URL' = 'https://syrianobserver.com/'
                    'icon' = 'https://syrianobserver.com/favicon.ico'
                },
                @{
                    'Title' = 'Syria Direct Science - Reports on Syrian defense tech and achievements'
                    'URL' = 'https://syriadirect.org/'
                    'icon' = 'https://syriadirect.org/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Rest of World Syria - Critical analysis of Syrian surveillance technologies'
                    'URL' = 'https://restofworld.org/2025/syria-tech-leaders-digital-future/'
                    'icon' = 'https://restofworld.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Tech - Alternative reporting on tech impacts in Syria'
                    'URL' = 'https://www.middleeasteye.net/countries/syria'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Tech - Perspectives on ethical issues in Syrian science'
                    'URL' = 'https://www.al-monitor.com/syria'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Syrian Science Council - Vlogs on Syrian biotech and innovation hubs'
                'URL' = 'https://www.youtube.com/@Syriansciencecouncil'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Tech For Syria - Videos exploring Syrian life-saving technologies'
                'URL' = 'https://www.youtube.com/results?search_query=tech+for+syria'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Noor Shaker - Interviews with Syrian tech thought leaders'
                'URL' = 'https://www.youtube.com/results?search_query=noor+shaker+syria'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Fatima Abu Salem - Explanations of Syrian data science and sustainability'
                'URL' = 'https://www.youtube.com/results?search_query=fatima+abu+salem+syria'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Noor Shaker AI - Talks with Syrian tech founders and investors'
                'URL' = 'https://podcasts.apple.com/gb/podcast/noor-shaker-from-syria-to-ai-enabled-drug-discovery/id1554305438?i=1000554846790'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Science in Exile - Updates on AI and cybersecurity in Syria'
                'URL' = 'https://scienceinexile.org/podcasts'
                'icon' = 'https://scienceinexile.org/favicon.ico'
            },
            @{
                'Title' = 'Building Tech in Syria - Stories of Syrian tech startups and breakthroughs'
                'URL' = 'https://open.spotify.com/episode/6UVxOyR0BzgF7rT8zEzU0S'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'SANA Politics - Breaking news on Syrian government and transitions'
                    'URL' = 'https://sana.sy/en/'
                    'icon' = 'https://sana.sy/favicon.ico'
                },
                @{
                    'Title' = 'Syrian Observer Politics - Analysis of Syrian parliament and policies'
                    'URL' = 'https://syrianobserver.com/'
                    'icon' = 'https://syrianobserver.com/favicon.ico'
                },
                @{
                    'Title' = 'Enab Baladi Politics - Coverage of Syrian monarchy and coalitions'
                    'URL' = 'https://english.enabbaladi.net/'
                    'icon' = 'https://english.enabbaladi.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Syria Politics - Updates on Syrian foreign relations and security'
                    'URL' = 'https://www.aljazeera.com/where/syria/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Syria Direct Politics - Independent journalism on Syrian governance policies'
                    'URL' = 'https://syriadirect.org/'
                    'icon' = 'https://syriadirect.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Politics - Critical reporting on Syrian political decisions'
                    'URL' = 'https://www.middleeasteye.net/countries/syria'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Politics - Alternative narratives on Syrian transitions'
                    'URL' = 'https://www.al-monitor.com/syria'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Ahmed al-Sharaa - Vlogs explaining Syrian political dynamics'
                'URL' = 'https://www.youtube.com/results?search_query=ahmed+al+sharaa+syria'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Diala and Waref - Political commentary through Syrian cultural lens'
                'URL' = 'https://www.youtube.com/results?search_query=diala+waref+syria'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Carrie Patsalis Politics - Videos on Syrian parliament sessions and protests'
                'URL' = 'https://www.youtube.com/@carriepatsalis'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Bald and Bankrupt - Lectures on Syrian politics and society'
                'URL' = 'https://www.youtube.com/c/BaldandBankrupt'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'What''s Happening in Syria - Two experts unpacking Syrian political news'
                'URL' = 'https://www.npr.org/transcripts/1234145490'
                'icon' = 'https://www.npr.org/favicon.ico'
            },
            @{
                'Title' = 'Syria After Assad - Discussions on Syrian political landscape'
                'URL' = 'https://podcasts.apple.com/fr/podcast/syria-al-sharaa-and-the-future-of-the-middle-east/id1611374685?i=1000692307846'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'The Syria Trials - Expert talks on Syrian foreign policy and governance'
                'URL' = 'https://www.justiceinitiative.org/voices/a-podcast-gives-voice-to-syrians-searching-for-justice-in-europe'
                'icon' = 'https://www.justiceinitiative.org/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Enab Baladi Fashion - Coverage of Syrian designers and societal trends'
                    'URL' = 'https://english.enabbaladi.net/'
                    'icon' = 'https://english.enabbaladi.net/favicon.ico'
                },
                @{
                    'Title' = 'Zaman Alwsl Fashion - Features on Syrian modest and street fashion'
                    'URL' = 'https://en.zamanalwsl.net/'
                    'icon' = 'https://en.zamanalwsl.net/favicon.ico'
                },
                @{
                    'Title' = 'Syrian Observer Lifestyle - News on sustainable Syrian apparel trends'
                    'URL' = 'https://syrianobserver.com/'
                    'icon' = 'https://syrianobserver.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Fashion Syria - Reports on cultural influences in Syrian style'
                    'URL' = 'https://english.alarabiya.net/life-style/fashion-and-beauty'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Middle East Eye Fashion - Critiques of fashion industry and social issues'
                    'URL' = 'https://www.middleeasteye.net/countries/syria'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Fashion - Alternative stories on ethical fashion in Syria'
                    'URL' = 'https://www.al-monitor.com/syria'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Syria Direct Fashion - Reporting on cultural resistance through fashion'
                    'URL' = 'https://syriadirect.org/'
                    'icon' = 'https://syriadirect.org/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Sandy''s World - Vlogs on Syrian beauty and fashion trends'
                'URL' = 'https://www.youtube.com/@sandyhamami'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'VELA Scarves - Street style explorations in Syrian cities'
                'URL' = 'https://www.youtube.com/results?search_query=vela+scarves+syria'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Basel Esa Fashion - Coverage of Syrian fashion events and designers'
                'URL' = 'https://www.youtube.com/@baselesa'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Rami Al-Ali - Videos on Syrian couture and runways'
                'URL' = 'https://www.youtube.com/results?search_query=rami+al+ali+fashion'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'SheerLuxe Middle East - Psychology of Syrian style and trends'
                'URL' = 'https://sheerluxe.me/watch-listen/middle-east-podcast'
                'icon' = 'https://sheerluxe.me/favicon.ico'
            },
            @{
                'Title' = 'Lighthouse Conversations - History of Syrian fashion evolution'
                'URL' = 'https://podcasts.apple.com/au/podcast/the-lighthouse-conversations/id1487299655'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Momentum Syrian Fashion - Modest dressing in Syrian culture'
                'URL' = 'https://themomentumpodcast.com/2024/07/22/sophia-cohen/'
                'icon' = 'https://themomentumpodcast.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Syrian Observer Military - Updates on Syrian Armed Forces operations'
                    'URL' = 'https://syrianobserver.com/'
                    'icon' = 'https://syrianobserver.com/favicon.ico'
                },
                @{
                    'Title' = 'North Press Agency Defense - Coverage of Syrian military strategies'
                    'URL' = 'https://npasyria.com/en/'
                    'icon' = 'https://npasyria.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Syria Military - Reports on border security and reserves'
                    'URL' = 'https://www.aljazeera.com/where/syria/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                },
                @{
                    'Title' = 'SANA Defense - News on Syrian air force and intelligence'
                    'URL' = 'https://sana.sy/en/'
                    'icon' = 'https://sana.sy/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Enab Baladi Military - Investigative reports on Syrian tactics'
                    'URL' = 'https://english.enabbaladi.net/'
                    'icon' = 'https://english.enabbaladi.net/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Military - Alternative analysis of Syrian arms sales'
                    'URL' = 'https://www.middleeasteye.net/countries/syria'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Military - Critical coverage of military actions in Syria'
                    'URL' = 'https://www.al-monitor.com/syria'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Syrian Army Review - Official vlogs from Syrian training and missions'
                'URL' = 'https://www.youtube.com/results?search_query=syrian+army+review'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Farhan al-Khouli - Analyses of Syrian military equipment and strategies'
                'URL' = 'https://www.youtube.com/results?search_query=farhan+al+khouli+syria'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Binkov''s Battlegrounds - Reviews of Syrian operations and gear'
                'URL' = 'https://www.youtube.com/c/BinkovsBattlegrounds'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'YPG Syria - Videos on defense innovations and soldier stories'
                'URL' = 'https://www.youtube.com/results?search_query=ypg+syria+vlogs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Syrian Civil War Podcast - Behind-the-scenes of Syrian operations and readiness'
                'URL' = 'https://podcasts.apple.com/us/podcast/syrian-civil-war-podcast/id1132725111'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'After Assad Military - Discussions on Syrian security and defense policies'
                'URL' = 'https://www.youtube.com/watch?v=7EpQovuvNk0'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Truth of the Matter - Expert talks on Syrian military strategy and threats'
                'URL' = 'https://www.csis.org/podcasts/truth-matter/piecing-together-what-happened-syria'
                'icon' = 'https://www.csis.org/favicon.ico'
            }
        )
    }
}
'Turkey' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Hurriyet Daily News Business - Premier English-language source for Turkish economy updates'
                    'URL' = 'https://www.hurriyetdailynews.com/business'
                    'icon' = 'https://www.hurriyetdailynews.com/favicon.ico'
                },
                @{
                    'Title' = 'Daily Sabah Economy - In-depth analysis of Turkey''s financial markets and corporate news'
                    'URL' = 'https://www.dailysabah.com/business'
                    'icon' = 'https://www.dailysabah.com/favicon.ico'
                },
                @{
                    'Title' = 'Anadolu Agency Business - Comprehensive coverage of Turkish economic policies and trade'
                    'URL' = 'https://www.aa.com.tr/en/economy'
                    'icon' = 'https://www.aa.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'TRT World Business - Reports on Turkish innovation and investment opportunities'
                    'URL' = 'https://www.trtworld.com/business'
                    'icon' = 'https://www.trtworld.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Bianet Economy - Independent perspectives on Turkish economic inequalities'
                    'URL' = 'https://bianet.org/english/economy'
                    'icon' = 'https://bianet.org/favicon.ico'
                },
                @{
                    'Title' = 'T24 English Business - Critical analysis of Turkey''s business ties and sanctions'
                    'URL' = 'https://t24.com.tr/en'
                    'icon' = 'https://t24.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'Duvar English Economy - Alternative views on Turkish business and finance'
                    'URL' = 'https://www.duvarenglish.com/'
                    'icon' = 'https://www.duvarenglish.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Invest in Turkey - Vlogs on Turkish startups and economic resilience'
                'URL' = 'https://www.youtube.com/c/InvestinTurkey'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Turkish Business Network - Insights into Turkey''s entrepreneurial ecosystems and markets'
                'URL' = 'https://www.youtube.com/@TurkishBusinessNetwork'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Eren Egemen - Videos exploring Turkish business culture and trade'
                'URL' = 'https://www.youtube.com/@ereneegemen'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ankara Entrepreneurs - Features on Turkey''s food industry and economic trends'
                'URL' = 'https://www.youtube.com/results?search_query=ankara+entrepreneurs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Turkey Business Podcast - Discussions on Turkey''s economic recovery and policies'
                'URL' = 'https://open.spotify.com/show/5zL2mK7pQfG8jR9kL3M4nO'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Istanbul Insights - Analysis of Turkish business challenges and opportunities'
                'URL' = 'https://podcasts.apple.com/us/podcast/istanbul-insights/id1600000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Emerging Markets Turkey - Insights into business innovation amid geopolitical tensions'
                'URL' = 'https://www.bloomberg.com/podcasts/series/emerging-markets'
                'icon' = 'https://www.bloomberg.com/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Hurriyet Daily News Sports - Coverage of Turkish soccer basketball and athletics'
                    'URL' = 'https://www.hurriyetdailynews.com/sports'
                    'icon' = 'https://www.hurriyetdailynews.com/favicon.ico'
                },
                @{
                    'Title' = 'Daily Sabah Sports - Reports on Turkish teams in EuroLeague and Olympics'
                    'URL' = 'https://www.dailysabah.com/sports'
                    'icon' = 'https://www.dailysabah.com/favicon.ico'
                },
                @{
                    'Title' = 'Anadolu Agency Sports - Updates on Galatasaray and national team performances'
                    'URL' = 'https://www.aa.com.tr/en/sports'
                    'icon' = 'https://www.aa.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'TRT World Sports - Features on Turkish athletes and league news'
                    'URL' = 'https://www.trtworld.com/sports'
                    'icon' = 'https://www.trtworld.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Bianet Sports - Independent stories on athlete rights and sports politics'
                    'URL' = 'https://bianet.org/english/sports'
                    'icon' = 'https://bianet.org/favicon.ico'
                },
                @{
                    'Title' = 'T24 Sports - Critical views on discrimination in Turkish sports'
                    'URL' = 'https://t24.com.tr/en/sports'
                    'icon' = 'https://t24.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'Duvar English Sports - Alternative reporting on regional sports tensions'
                    'URL' = 'https://www.duvarenglish.com/sports'
                    'icon' = 'https://www.duvarenglish.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Turkish Football - Vlogs on Turkish basketball and soccer highlights'
                'URL' = 'https://www.youtube.com/c/TurkishFootball'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'BeIN Sports Turkey - Videos of Super Lig games and athlete stories'
                'URL' = 'https://www.youtube.com/c/BeINSPORTSTurkey'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Istanbul Sports Fan - Vlogs featuring Turkish sports events and culture'
                'URL' = 'https://www.youtube.com/results?search_query=istanbul+sports+fan'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Fenerbahce Official - Follows Turkish athletes worldwide and game analyses'
                'URL' = 'https://www.youtube.com/c/Fenerbahce'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Turkish Football Podcast - Episodes on Turkish soccer and basketball leagues'
                'URL' = 'https://podcasts.apple.com/us/podcast/turkish-football-podcast/id1450000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Super Lig Stories - Stories of Turkish teams and sports history'
                'URL' = 'https://open.spotify.com/show/1aB2c3D4E5F6G7H8I9J0K'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Anatolian Athletes - Discussions on Turkish athletes and regional competitions'
                'URL' = 'https://www.trtworld.com/podcasts/anatolian-athletes'
                'icon' = 'https://www.trtworld.com/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Hurriyet Daily News Culture - Reviews of Turkish arts theater and festivals'
                    'URL' = 'https://www.hurriyetdailynews.com/culture'
                    'icon' = 'https://www.hurriyetdailynews.com/favicon.ico'
                },
                @{
                    'Title' = 'Daily Sabah Culture - Features on Turkish literature music and cinema'
                    'URL' = 'https://www.dailysabah.com/culture'
                    'icon' = 'https://www.dailysabah.com/favicon.ico'
                },
                @{
                    'Title' = 'Anadolu Agency Culture - News on Turkish art exhibitions and cultural events'
                    'URL' = 'https://www.aa.com.tr/en/culture'
                    'icon' = 'https://www.aa.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'TRT World Culture - Coverage of Ottoman heritage and modern arts'
                    'URL' = 'https://www.trtworld.com/culture'
                    'icon' = 'https://www.trtworld.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Bianet Culture - Independent critiques of Turkish cultural policies'
                    'URL' = 'https://bianet.org/english/culture'
                    'icon' = 'https://bianet.org/favicon.ico'
                },
                @{
                    'Title' = 'T24 Culture - Alternative views on regional cultural exchanges'
                    'URL' = 'https://t24.com.tr/en/culture'
                    'icon' = 'https://t24.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'Duvar English Culture - Progressive perspectives on Turkish arts and society'
                    'URL' = 'https://www.duvarenglish.com/culture'
                    'icon' = 'https://www.duvarenglish.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Istanbul Vlogs - Vlogs on Turkish society culture and daily life'
                'URL' = 'https://www.youtube.com/c/IstanbulVlogs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Turkish Tea Time - Cultural explorations of Turkish traditions and history'
                'URL' = 'https://www.youtube.com/@TurkishTeaTime'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Anatolia Adventures - Bridging cultures through vlogs on Turkish festivals'
                'URL' = 'https://www.youtube.com/c/AnatoliaAdventures'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Cappadocia Explorer - Videos showcasing Turkish arts and heritage sites'
                'URL' = 'https://www.youtube.com/results?search_query=cappadocia+explorer'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Turkish Tales - Episodes on cultural milestones and figures'
                'URL' = 'https://podcasts.apple.com/us/podcast/turkish-tales/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Ottoman Echoes - Conversations with Turkish artists and cultural creators'
                'URL' = 'https://open.spotify.com/show/2bC3dE4fG5hI6jK7lM8nO'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Ankara Stories - Narrative tales of Turkish culture and personal stories'
                'URL' = 'https://www.trtworld.com/podcasts/ankara-stories'
                'icon' = 'https://www.trtworld.com/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Hurriyet Daily News Tech - Latest on Turkish tech innovations and startups'
                    'URL' = 'https://www.hurriyetdailynews.com/technology'
                    'icon' = 'https://www.hurriyetdailynews.com/favicon.ico'
                },
                @{
                    'Title' = 'Daily Sabah Tech - Coverage of Turkish research breakthroughs'
                    'URL' = 'https://www.dailysabah.com/technology'
                    'icon' = 'https://www.dailysabah.com/favicon.ico'
                },
                @{
                    'Title' = 'Anadolu Agency Tech - News on Turkish cybersecurity and AI developments'
                    'URL' = 'https://www.aa.com.tr/en/technology'
                    'icon' = 'https://www.aa.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'TRT World Tech - Reports on Turkish defense tech and scientific achievements'
                    'URL' = 'https://www.trtworld.com/technology'
                    'icon' = 'https://www.trtworld.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Bianet Tech - Critical analysis of Turkish surveillance technologies'
                    'URL' = 'https://bianet.org/english/technology'
                    'icon' = 'https://bianet.org/favicon.ico'
                },
                @{
                    'Title' = 'T24 Tech - Alternative reporting on tech impacts in region'
                    'URL' = 'https://t24.com.tr/en/technology'
                    'icon' = 'https://t24.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'Duvar English Tech - Perspectives on ethical issues in Turkish science'
                    'URL' = 'https://www.duvarenglish.com/technology'
                    'icon' = 'https://www.duvarenglish.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Tech Istanbul - Vlogs on Turkish biotech and innovation hubs'
                'URL' = 'https://www.youtube.com/c/TechIstanbul'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ankara Tech Talks - Videos exploring Turkish life-saving technologies'
                'URL' = 'https://www.youtube.com/@AnkaraTechTalks'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Turkish Innovators - Interviews with Turkish tech thought leaders'
                'URL' = 'https://www.youtube.com/results?search_query=turkish+innovators'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Izmir Startups - Explanations of Turkish water tech and sustainability'
                'URL' = 'https://www.youtube.com/c/IzmirStartups'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Turkey Tech Talks - Talks with Turkish tech founders and investors'
                'URL' = 'https://podcasts.apple.com/us/podcast/turkey-tech-talks/id1600000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Anatolian AI - Updates on AI and cybersecurity in Turkey'
                'URL' = 'https://open.spotify.com/show/3cD4eF5gH6iJ7kL8mN9oP'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Istanbul Innovation - Stories of Turkish tech startups and breakthroughs'
                'URL' = 'https://www.trtworld.com/podcasts/istanbul-innovation'
                'icon' = 'https://www.trtworld.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Hurriyet Daily News Politics - Breaking news on Turkish government and elections'
                    'URL' = 'https://www.hurriyetdailynews.com/politics'
                    'icon' = 'https://www.hurriyetdailynews.com/favicon.ico'
                },
                @{
                    'Title' = 'Daily Sabah Politics - Analysis of Turkish parliament debates and policy shifts'
                    'URL' = 'https://www.dailysabah.com/politics'
                    'icon' = 'https://www.dailysabah.com/favicon.ico'
                },
                @{
                    'Title' = 'Anadolu Agency Politics - Coverage of Erdogan administration and coalitions'
                    'URL' = 'https://www.aa.com.tr/en/politics'
                    'icon' = 'https://www.aa.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'TRT World Politics - Updates on Turkish foreign relations and security'
                    'URL' = 'https://www.trtworld.com/politics'
                    'icon' = 'https://www.trtworld.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Bianet Politics - Independent journalism on Turkish governance policies'
                    'URL' = 'https://bianet.org/english/politics'
                    'icon' = 'https://bianet.org/favicon.ico'
                },
                @{
                    'Title' = 'T24 Politics - Critical reporting on Turkish political decisions'
                    'URL' = 'https://t24.com.tr/en/politics'
                    'icon' = 'https://t24.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'Duvar English Politics - Alternative narratives on Turkish governance'
                    'URL' = 'https://www.duvarenglish.com/politics'
                    'icon' = 'https://www.duvarenglish.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Turkish Politics Now - Vlogs explaining Turkish political dynamics'
                'URL' = 'https://www.youtube.com/c/TurkishPoliticsNow'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ankara Insider - Political commentary through Turkish cultural lens'
                'URL' = 'https://www.youtube.com/@AnkaraInsider'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Istanbul Debates - Videos on Turkish parliament sessions and protests'
                'URL' = 'https://www.youtube.com/results?search_query=istanbul+debates'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Erdogan Watch - Lectures on Turkish politics and society'
                'URL' = 'https://www.youtube.com/c/ErdoganWatch'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Turkey Untangled - Two journalists unpacking Turkish political news'
                'URL' = 'https://podcasts.apple.com/us/podcast/turkey-untangled/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Anatolian Politics - Discussions on Turkey''s political landscape'
                'URL' = 'https://open.spotify.com/show/4dE5fG6hI7jK8lM9nO0pQ'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Istanbul Policy Forum - Expert talks on Turkish foreign policy and governance'
                'URL' = 'https://www.trtworld.com/podcasts/istanbul-policy-forum'
                'icon' = 'https://www.trtworld.com/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Hurriyet Daily News Fashion - Coverage of Istanbul Fashion Week and designers'
                    'URL' = 'https://www.hurriyetdailynews.com/fashion'
                    'icon' = 'https://www.hurriyetdailynews.com/favicon.ico'
                },
                @{
                    'Title' = 'Daily Sabah Lifestyle - Features on Turkish modest and street fashion'
                    'URL' = 'https://www.dailysabah.com/lifestyle/fashion'
                    'icon' = 'https://www.dailysabah.com/favicon.ico'
                },
                @{
                    'Title' = 'Anadolu Agency Fashion - News on sustainable Turkish apparel trends'
                    'URL' = 'https://www.aa.com.tr/en/lifestyle/fashion'
                    'icon' = 'https://www.aa.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'TRT World Fashion - Reports on cultural influences in Turkish style'
                    'URL' = 'https://www.trtworld.com/lifestyle/fashion'
                    'icon' = 'https://www.trtworld.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Bianet Fashion - Critiques of fashion industry and social issues'
                    'URL' = 'https://bianet.org/english/lifestyle'
                    'icon' = 'https://bianet.org/favicon.ico'
                },
                @{
                    'Title' = 'T24 Fashion - Alternative stories on ethical fashion in region'
                    'URL' = 'https://t24.com.tr/en/lifestyle'
                    'icon' = 'https://t24.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'Duvar English Fashion - Reporting on cultural resistance through fashion'
                    'URL' = 'https://www.duvarenglish.com/lifestyle'
                    'icon' = 'https://www.duvarenglish.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Turkish Fashionista - Vlogs on Turkish beauty and fashion trends'
                'URL' = 'https://www.youtube.com/c/TurkishFashionista'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Istanbul Street Style - Street style explorations in Istanbul'
                'URL' = 'https://www.youtube.com/@IstanbulStreetStyle'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Moda Istanbul - Coverage of Istanbul Fashion Week events'
                'URL' = 'https://www.youtube.com/c/ModaIstanbul'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ankara Couture - Videos on Turkish designers and runways'
                'URL' = 'https://www.youtube.com/results?search_query=ankara+couture'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Turkish Threads - Psychology of Turkish style and trends'
                'URL' = 'https://podcasts.apple.com/us/podcast/turkish-threads/id1600000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Ottoman Fashion Files - History of Turkish fashion evolution'
                'URL' = 'https://open.spotify.com/show/5eF6gH7iJ8kL9mN0oP1qR'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Anatolian Attire - Modest dressing in Turkish culture'
                'URL' = 'https://www.trtworld.com/podcasts/anatolian-attire'
                'icon' = 'https://www.trtworld.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Hurriyet Daily News Defense - Updates on Turkish Armed Forces operations and tech'
                    'URL' = 'https://www.hurriyetdailynews.com/defense'
                    'icon' = 'https://www.hurriyetdailynews.com/favicon.ico'
                },
                @{
                    'Title' = 'Daily Sabah Military - Coverage of Turkish military strategies and exercises'
                    'URL' = 'https://www.dailysabah.com/defense'
                    'icon' = 'https://www.dailysabah.com/favicon.ico'
                },
                @{
                    'Title' = 'Anadolu Agency Defense - Reports on border security and reserves'
                    'URL' = 'https://www.aa.com.tr/en/defense'
                    'icon' = 'https://www.aa.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'TRT World Defense - News on Turkish air force and intelligence'
                    'URL' = 'https://www.trtworld.com/defense'
                    'icon' = 'https://www.trtworld.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Bianet Military - Investigative reports on Turkish Armed Forces tactics'
                    'URL' = 'https://bianet.org/english/defense'
                    'icon' = 'https://bianet.org/favicon.ico'
                },
                @{
                    'Title' = 'T24 Military - Alternative analysis of Turkish arms sales'
                    'URL' = 'https://t24.com.tr/en/defense'
                    'icon' = 'https://t24.com.tr/favicon.ico'
                },
                @{
                    'Title' = 'Duvar English Military - Critical coverage of military actions in region'
                    'URL' = 'https://www.duvarenglish.com/defense'
                    'icon' = 'https://www.duvarenglish.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Turkish Army Official - Official vlogs from training and missions'
                'URL' = 'https://www.youtube.com/c/TurkishArmedForces'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Defense Turkey - Analyses of Turkish military equipment and strategies'
                'URL' = 'https://www.youtube.com/c/DefenseTurkey'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ankara Military Review - Reviews of Turkish operations and gear'
                'URL' = 'https://www.youtube.com/@AnkaraMilitaryReview'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Istanbul Defense - Videos on defense innovations and soldier stories'
                'URL' = 'https://www.youtube.com/results?search_query=istanbul+defense'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Turkish Defense Review - Behind-the-scenes of Turkish Armed Forces operations'
                'URL' = 'https://podcasts.apple.com/us/podcast/turkish-defense-review/id1600000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Anatolian Security - Discussions on Turkish security and defense policies'
                'URL' = 'https://open.spotify.com/show/6fG7hI8jK9lM0nO1pQ2rS'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Istanbul Military Forum - Expert talks on military strategy and threats'
                'URL' = 'https://www.trtworld.com/podcasts/istanbul-military-forum'
                'icon' = 'https://www.trtworld.com/favicon.ico'
            }
        )
    }
}
'United Arab Emirates' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Arabian Business - Premier English-language source for UAE business and economy updates'
                    'URL' = 'https://www.arabianbusiness.com/'
                    'icon' = 'https://www.arabianbusiness.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf Business - In-depth analysis of UAE''s financial markets and corporate news'
                    'URL' = 'https://gulfbusiness.com/'
                    'icon' = 'https://gulfbusiness.com/favicon.ico'
                },
                @{
                    'Title' = 'MEED - Comprehensive coverage of UAE economic policies and trade'
                    'URL' = 'https://www.meed.com/'
                    'icon' = 'https://www.meed.com/favicon.ico'
                },
                @{
                    'Title' = 'Khaleej Times Business - Reports on UAE innovation and investment opportunities'
                    'URL' = 'https://www.khaleejtimes.com/business'
                    'icon' = 'https://www.khaleejtimes.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Zawya - Independent perspectives on UAE economic inequalities'
                    'URL' = 'https://www.zawya.com/'
                    'icon' = 'https://www.zawya.com/favicon.ico'
                },
                @{
                    'Title' = 'Trade Arabia - Critical analysis of UAE''s business ties and sanctions'
                    'URL' = 'https://www.tradearabia.com/'
                    'icon' = 'https://www.tradearabia.com/favicon.ico'
                },
                @{
                    'Title' = 'GCC Business News - Alternative views on UAE business and finance'
                    'URL' = 'https://www.gccbusinessnews.com/'
                    'icon' = 'https://www.gccbusinessnews.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Faisal Al Bannai - Vlogs on UAE startups and economic resilience'
                'URL' = 'https://www.youtube.com/@faisalalbannai'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Anas Bukhash - Insights into UAE''s entrepreneurial ecosystems and markets'
                'URL' = 'https://www.youtube.com/@anasbukhash'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Eisa Alhabib - Videos exploring UAE business culture and trade'
                'URL' = 'https://www.youtube.com/@eisaalhabib'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ziad AboShaar - Features on UAE''s food industry and economic trends'
                'URL' = 'https://www.youtube.com/@ziadaboshaar'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Bitesize Business Breakfast - Discussions on UAE''s economic recovery and policies'
                'URL' = 'https://podcasts.apple.com/us/podcast/bitesize-business-breakfast-podcast/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Dubai Stars - Analysis of UAE business challenges and opportunities'
                'URL' = 'https://open.spotify.com/show/0Z8b4v4lWEyqqfR0mQbT7T'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Smashi Business Show - Insights into business innovation amid geopolitical tensions'
                'URL' = 'https://www.jpost.com/podcasts/smashi-business-show'
                'icon' = 'https://www.jpost.com/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Khaleej Times Sports - Coverage of UAE soccer basketball and athletics'
                    'URL' = 'https://www.khaleejtimes.com/sports'
                    'icon' = 'https://www.khaleejtimes.com/favicon.ico'
                },
                @{
                    'Title' = 'The National Sports - Reports on UAE teams in regional leagues and Olympics'
                    'URL' = 'https://www.thenationalnews.com/sport/'
                    'icon' = 'https://www.thenationalnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf News Sports - Updates on national team performances and league news'
                    'URL' = 'https://gulfnews.com/sport'
                    'icon' = 'https://gulfnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Sport360 - Features on UAE athletes and competitions'
                    'URL' = 'https://sport360.com/'
                    'icon' = 'https://sport360.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'BDS Movement Sports - Independent stories on athlete rights and sports politics'
                    'URL' = 'https://bdsmovement.net/ban-apartheid-israel-from-sports'
                    'icon' = 'https://bdsmovement.net/favicon.ico'
                },
                @{
                    'Title' = 'Human Rights Watch Sports - Critical views on discrimination in UAE sports'
                    'URL' = 'https://www.hrw.org/news/2016/09/25/israel/palestine-fifa-sponsoring-games-seized-land'
                    'icon' = 'https://www.hrw.org/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Sports - Alternative reporting on regional sports tensions'
                    'URL' = 'https://www.aljazeera.com/sports/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Hashim Attili - Vlogs on UAE football and soccer highlights'
                'URL' = 'https://www.youtube.com/@hashimattili'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Mo Vlogs Sports - Videos of UAE games and athlete stories'
                'URL' = 'https://www.youtube.com/c/MoVlogs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Dr George John - Vlogs featuring UAE sports events and culture'
                'URL' = 'https://www.youtube.com/@drgeorgejohn'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Usman Time World - Follows national athletes and game analyses'
                'URL' = 'https://www.youtube.com/@usmantimeworld'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The Mettleset Podcast - Episodes on UAE soccer and basketball leagues'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-mettleset-podcast/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Smashi Sports Show - Stories of UAE teams and sports history'
                'URL' = 'https://open.spotify.com/show/691LHA5ivvsSx46x8NjXSE'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Kitch and Neeil TSB - Discussions on UAE athletes and regional competitions'
                'URL' = 'https://www.trtworld.com/podcasts/kitch-and-neeil'
                'icon' = 'https://www.trtworld.com/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'The National Arts Culture - Reviews of UAE arts theater and festivals'
                    'URL' = 'https://www.thenationalnews.com/arts-culture/'
                    'icon' = 'https://www.thenationalnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf News Arts Culture - Features on UAE literature music and cinema'
                    'URL' = 'https://gulfnews.com/entertainment/arts-culture'
                    'icon' = 'https://gulfnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Khaleej Times Arts - News on UAE art exhibitions and cultural events'
                    'URL' = 'https://www.khaleejtimes.com/lifestyle/arts'
                    'icon' = 'https://www.khaleejtimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Culture - Coverage of Arab heritage and modern arts'
                    'URL' = 'https://english.alarabiya.net/life-style/art-and-culture'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Al-Monitor Culture - Independent critiques of UAE cultural policies'
                    'URL' = 'https://www.al-monitor.com/'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Culture - Alternative views on regional cultural exchanges'
                    'URL' = 'https://www.middleeasteye.net/countries/uae'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'BBC Arabic Culture - Progressive perspectives on UAE arts and society'
                    'URL' = 'https://www.bbc.com/arabic/topics/cj4x8n2j5qyt'
                    'icon' = 'https://www.bbc.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Mo Vlogs - Vlogs on UAE society culture and daily life'
                'URL' = 'https://www.youtube.com/c/MoVlogs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Joe Hattab - Cultural explorations of UAE traditions and history'
                'URL' = 'https://www.youtube.com/c/JoeHattab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Noor Stars - Bridging cultures through vlogs on UAE festivals'
                'URL' = 'https://www.youtube.com/c/NoorStars'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Visit Dubai - Videos showcasing UAE arts and heritage sites'
                'URL' = 'https://www.youtube.com/c/VisitDubai'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Afternoons with Helen Farmer - Episodes on cultural milestones and figures'
                'URL' = 'https://podcasts.apple.com/us/podcast/afternoons-with-helen-farmer/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Karak with Mahreen - Conversations with UAE artists and cultural creators'
                'URL' = 'https://open.spotify.com/show/3w4NDKKlDjHSRo3u3EDHZI'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'The Culture Counter - Narrative tales of UAE culture and personal stories'
                'URL' = 'https://www.trtworld.com/podcasts/the-culture-counter'
                'icon' = 'https://www.trtworld.com/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'The Brew Science Tech - Latest on UAE tech innovations and startups'
                    'URL' = 'https://thebrewnews.com/category/science-technology/'
                    'icon' = 'https://thebrewnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Arabiya Technology - Coverage of UAE research breakthroughs'
                    'URL' = 'https://english.alarabiya.net/business/technology'
                    'icon' = 'https://english.alarabiya.net/favicon.ico'
                },
                @{
                    'Title' = 'Tech News ME - News on UAE cybersecurity and AI developments'
                    'URL' = 'https://technewsme.com/'
                    'icon' = 'https://technewsme.com/favicon.ico'
                },
                @{
                    'Title' = 'TII News - Reports on UAE defense tech and scientific achievements'
                    'URL' = 'https://www.tii.ae/news'
                    'icon' = 'https://www.tii.ae/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Rest of World UAE - Critical analysis of UAE surveillance technologies'
                    'URL' = 'https://restofworld.org/2025/syria-tech-leaders-digital-future/'
                    'icon' = 'https://restofworld.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Tech - Alternative reporting on tech impacts in region'
                    'URL' = 'https://www.middleeasteye.net/countries/uae'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Tech - Perspectives on ethical issues in UAE science'
                    'URL' = 'https://www.al-monitor.com/uae'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'TAQATOUAE - Vlogs on UAE biotech and innovation hubs'
                'URL' = 'https://www.youtube.com/@TAQATOUAE'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'The Adly - Videos exploring UAE life-saving technologies'
                'URL' = 'https://www.youtube.com/@The_Adly'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Techxyz - Interviews with UAE tech thought leaders'
                'URL' = 'https://www.youtube.com/@Techxyz'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Conversations with Loulou - Explanations of UAE water tech and sustainability'
                'URL' = 'https://www.youtube.com/@ConversationswithLoulou'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'UAE Tech Podcast - Talks with UAE tech founders and investors'
                'URL' = 'https://podcasts.apple.com/jo/podcast/uae-tech-podcast/id1441955455'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'OPEN Tech Talks - Updates on AI and cybersecurity in UAE'
                'URL' = 'https://open.spotify.com/show/4hHUSjemaCojDGFir3Ns5L'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Space UAE - Stories of UAE tech startups and breakthroughs'
                'URL' = 'https://www.sitelogicmarketing.com/podcast-uaespace/'
                'icon' = 'https://www.sitelogicmarketing.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Khaleej Times - Breaking news on UAE government and elections'
                    'URL' = 'https://www.khaleejtimes.com/'
                    'icon' = 'https://www.khaleejtimes.com/favicon.ico'
                },
                @{
                    'Title' = 'The National Politics - Analysis of UAE parliament debates and policy shifts'
                    'URL' = 'https://www.thenationalnews.com/politics/'
                    'icon' = 'https://www.thenationalnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Gulf News - Coverage of UAE monarchy and coalitions'
                    'URL' = 'https://gulfnews.com/'
                    'icon' = 'https://gulfnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera UAE - Updates on UAE foreign relations and security'
                    'URL' = 'https://www.aljazeera.com/where/united-arab-emirates/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Al-Monitor UAE - Independent journalism on UAE governance policies'
                    'URL' = 'https://www.al-monitor.com/uae'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye UAE - Critical reporting on UAE political decisions'
                    'URL' = 'https://www.middleeasteye.net/countries/uae'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'BBC UAE Politics - Alternative narratives on UAE monarchy'
                    'URL' = 'https://www.bbc.com/news/world-middle-east-14704229'
                    'icon' = 'https://www.bbc.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Amjad Taha - Vlogs explaining UAE political dynamics'
                'URL' = 'https://www.youtube.com/@amjadt25'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Mo Vlogs Politics - Political commentary through UAE cultural lens'
                'URL' = 'https://www.youtube.com/c/MoVlogs'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Noor Stars Commentary - Videos on UAE parliament sessions and protests'
                'URL' = 'https://www.youtube.com/c/NoorStars'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Joe Hattab Lectures - Lectures on UAE politics and society'
                'URL' = 'https://www.youtube.com/c/JoeHattab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'The Rest Is Politics - Two experts unpacking UAE political news'
                'URL' = 'https://podcasts.apple.com/us/podcast/the-rest-is-politics/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Middle East Focus - Discussions on UAE''s political landscape'
                'URL' = 'https://www.mei.edu/podcasts'
                'icon' = 'https://www.mei.edu/favicon.ico'
            },
            @{
                'Title' = 'Babel Translating Middle East - Expert talks on UAE foreign policy and governance'
                'URL' = 'https://www.csis.org/podcasts/babel-translating-middle-east'
                'icon' = 'https://www.csis.org/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Vogue Arabia - Coverage of Dubai Fashion Week and designers'
                    'URL' = 'https://www.voguearabia.com/'
                    'icon' = 'https://www.voguearabia.com/favicon.ico'
                },
                @{
                    'Title' = 'Harper''s Bazaar Arabia - Features on UAE modest and street fashion'
                    'URL' = 'https://www.harpersbazaararabia.com/'
                    'icon' = 'https://www.harpersbazaararabia.com/favicon.ico'
                },
                @{
                    'Title' = 'GQ Middle East - News on sustainable UAE apparel trends'
                    'URL' = 'https://www.gqmiddleeast.com/'
                    'icon' = 'https://www.gqmiddleeast.com/favicon.ico'
                },
                @{
                    'Title' = 'Savoir Flair - Reports on cultural influences in UAE style'
                    'URL' = 'https://www.savoirflair.com/'
                    'icon' = 'https://www.savoirflair.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Fashion Revolution UAE - Critiques of fashion industry and social issues'
                    'URL' = 'https://www.fashionrevolution.org/asia/united-arab-emirates/'
                    'icon' = 'https://www.fashionrevolution.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Fashion - Alternative stories on ethical fashion in region'
                    'URL' = 'https://www.middleeasteye.net/countries/uae'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Fashion - Reporting on cultural resistance through fashion'
                    'URL' = 'https://www.al-monitor.com/uae'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Joelle Mardinian - Vlogs on UAE beauty and fashion trends'
                'URL' = 'https://www.youtube.com/c/JoelleMardinian'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Noor Stars Fashion - Street style explorations in Dubai'
                'URL' = 'https://www.youtube.com/c/NoorStars'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Narin Amara - Coverage of Dubai Fashion Week events'
                'URL' = 'https://www.youtube.com/@narinamara'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Rawan Bin Hussain - Videos on UAE designers and runways'
                'URL' = 'https://www.youtube.com/@rawanbinhussain'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Dubai Fashion News - Psychology of UAE style and trends'
                'URL' = 'https://podcasts.apple.com/us/podcast/dubai-fashion-news-podcast/id1186342224'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'The Above the Clouds - History of UAE fashion evolution'
                'URL' = 'https://open.spotify.com/show/1Od1qoAFMUedA8zhXARhHC'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Authenticite - Modest dressing in UAE culture'
                'URL' = 'https://authenticite.me/podcasts/'
                'icon' = 'https://authenticite.me/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Breaking Defense UAE - Updates on UAE Armed Forces operations and defense tech'
                    'URL' = 'https://breakingdefense.com/tag/uae/'
                    'icon' = 'https://breakingdefense.com/favicon.ico'
                },
                @{
                    'Title' = 'Defense Arabia - Coverage of UAE military strategies and exercises'
                    'URL' = 'https://english.defensearabia.com/'
                    'icon' = 'https://english.defensearabia.com/favicon.ico'
                },
                @{
                    'Title' = 'The Defense Post UAE - Reports on border security and reserves'
                    'URL' = 'https://thedefensepost.com/tag/uae/'
                    'icon' = 'https://thedefensepost.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Defaiya - News on UAE air force and intelligence'
                    'URL' = 'https://www.defaiya.com/'
                    'icon' = 'https://www.defaiya.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'TURDEF UAE - Investigative reports on UAE Armed Forces tactics'
                    'URL' = 'https://turdef.com/country/united-arab-emirates-news'
                    'icon' = 'https://turdef.com/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Military - Alternative analysis of UAE arms sales'
                    'URL' = 'https://www.middleeasteye.net/countries/uae'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Military - Critical coverage of military actions in region'
                    'URL' = 'https://www.al-monitor.com/uae'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'UAE Armed Forces - Official vlogs from UAE training and missions'
                'URL' = 'https://www.youtube.com/user/UAEArmedForces'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Binkov''s Battlegrounds - Analyses of UAE military equipment and strategies'
                'URL' = 'https://www.youtube.com/c/BinkovsBattlegrounds'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Perun - Reviews of UAE operations and gear'
                'URL' = 'https://www.youtube.com/c/PerunAU'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Covert Cabal - Videos on defense innovations and soldier stories'
                'URL' = 'https://www.youtube.com/c/CovertCabal'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Voices from DARPA - Behind-the-scenes of UAE Armed Forces operations and readiness'
                'URL' = 'https://podcasts.apple.com/us/podcast/voices-from-darpa/id1500000000'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'National Defense Magazine - Discussions on UAE security and defense policies'
                'URL' = 'https://www.nationaldefensemagazine.org/podcasts'
                'icon' = 'https://www.nationaldefensemagazine.org/favicon.ico'
            },
            @{
                'Title' = 'Defense One - Expert talks on military strategy and threats'
                'URL' = 'https://www.defenseone.com/podcasts'
                'icon' = 'https://www.defenseone.com/favicon.ico'
            }
        )
    }
}
'Yemen' = @{
    'Business' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'SABA Yemen News Agency - Official updates on Yemeni economy and trade developments'
                    'URL' = 'https://www.saba.ye/en'
                    'icon' = 'https://www.saba.ye/favicon.ico'
                },
                @{
                    'Title' = 'Al-Thawra Net Business - Coverage of Yemeni financial markets and corporate reforms'
                    'URL' = 'https://en.althawranews.net/'
                    'icon' = 'https://en.althawranews.net/favicon.ico'
                },
                @{
                    'Title' = 'Yemen Post Business - Reports on Yemeni investment opportunities and economic policies'
                    'URL' = 'http://www.yemenpost.net/BusinessMain.htm'
                    'icon' = 'http://www.yemenpost.net/favicon.ico'
                },
                @{
                    'Title' = 'Sanaa Center Yemen Review - Analysis of Yemeni business amid humanitarian challenges'
                    'URL' = 'https://sanaacenter.org/the-yemen-review'
                    'icon' = 'https://sanaacenter.org/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Hodhod Yemen News - Independent perspectives on Yemeni economic inequalities'
                    'URL' = 'https://hodhodyemennews.net/'
                    'icon' = 'https://hodhodyemennews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Yemen Business - Critical views on sanctions and trade disruptions'
                    'URL' = 'https://www.al-monitor.com/yemen'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                },
                @{
                    'Title' = 'The New Arab Yemen Economy - Alternative analysis of war-torn business landscapes'
                    'URL' = 'https://www.newarab.com/tags/yemen'
                    'icon' = 'https://www.newarab.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Yemen Vlogs - Insights into Yemeni startups and entrepreneurial resilience'
                'URL' = 'https://www.youtube.com/playlist?list=PLHjHLXTydFWClDpp2BTWep8Ghs9Bq7wab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Sweet Yemen Project - Videos on Yemeni chocolate business and innovation'
                'URL' = 'https://www.youtube.com/watch?v=iRM8wkdQuk8'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Reem Al-Akwa Business Yemen - Features on local markets and economic trends'
                'URL' = 'https://www.youtube.com/results?search_query=reem+al+akwa+business+yemen'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hassan Al-Kharraz Tech Yemen - Explorations of Yemeni trade and commerce culture'
                'URL' = 'https://www.youtube.com/results?search_query=hassan+al+kharraz+tech+yemen'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Radio Davos Yemen Business - Discussions on operating amid conflict and recovery'
                'URL' = 'https://www.weforum.org/podcasts/radio-davos/episodes/yemen-business-war-hsa-tetrapak/'
                'icon' = 'https://www.weforum.org/favicon.ico'
            },
            @{
                'Title' = 'BBC Business Daily Yemen - Analysis of wartime trade and economic challenges'
                'URL' = 'https://www.bbc.com/audio/play/w3csw8db'
                'icon' = 'https://www.bbc.com/favicon.ico'
            },
            @{
                'Title' = 'What''s Unsaid Yemen Economy - Insights into profit and peace prevention factors'
                'URL' = 'https://www.thenewhumanitarian.org/podcast/whats-unsaid/2023/10/12/whats-unsaid-how-profit-preventing-peace-yemen'
                'icon' = 'https://www.thenewhumanitarian.org/favicon.ico'
            }
        )
    }
    'Sports' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Yemen Monitor Sports - Coverage of Yemeni soccer basketball and athletics events'
                    'URL' = 'https://www.yemenmonitor.com/en/sports'
                    'icon' = 'https://www.yemenmonitor.com/favicon.ico'
                },
                @{
                    'Title' = 'Yemen Sport News - Reports on national teams and regional league performances'
                    'URL' = 'https://www.youtube.com/@yemensportsnews2619'
                    'icon' = 'https://www.youtube.com/favicon.ico'
                },
                @{
                    'Title' = 'FOX Sports Yemen Team - Updates on Yemeni soccer and Olympic participations'
                    'URL' = 'https://www.foxsports.com/soccer/yemen-men-team'
                    'icon' = 'https://www.foxsports.com/favicon.ico'
                },
                @{
                    'Title' = 'South24 Yemen Sports - Features on southern Yemeni athletes and competitions'
                    'URL' = 'https://south24.net/news/newse.php?nid=3216'
                    'icon' = 'https://south24.net/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'BDS Movement Sports Yemen - Independent stories on athlete rights and boycotts'
                    'URL' = 'https://bdsmovement.net/ban-apartheid-israel-from-sports'
                    'icon' = 'https://bdsmovement.net/favicon.ico'
                },
                @{
                    'Title' = 'Human Rights Watch Yemen Sports - Critical views on conflict impacts on games'
                    'URL' = 'https://www.hrw.org/news/2016/09/25/israel/palestine-fifa-sponsoring-games-seized-land'
                    'icon' = 'https://www.hrw.org/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Yemen Sports - Alternative reporting on war-torn athletic tensions'
                    'URL' = 'https://www.aljazeera.com/sports/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Yemen Sport News Channel - Vlogs on Yemeni football and soccer highlights'
                'URL' = 'https://www.youtube.com/@yemensportsnews2619'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ahdat Events Sports - Videos of Yemeni games and athlete stories'
                'URL' = 'https://www.youtube.com/results?search_query=ahdat+events+sports+yemen'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Abdulnasser Wasel - Vlogs featuring Yemeni sports events and culture'
                'URL' = 'https://www.youtube.com/results?search_query=abdulnasser+wasel'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Timkoora7 Yemen Sports - Follows national athletes and game analyses'
                'URL' = 'https://www.youtube.com/results?search_query=timkoora7+yemen'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Indo Sport Yemen - Episodes on Yemeni soccer and basketball leagues'
                'URL' = 'https://podcasts.apple.com/ie/podcast/indo-sport/id1770324019'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Desert Dreams Soccer Yemen - Stories of Yemeni teams and sports history'
                'URL' = 'https://open.spotify.com/episode/1Xq7udgX0yEI8AourkVwAu'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Yemen''s Cinderella Story - Discussions on Yemeni athletes and competitions'
                'URL' = 'https://www.youtube.com/watch?v=OvreZMywTO4'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
    }
    'Culture' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'SABA Yemen Culture - Reviews of Yemeni arts theater and festivals'
                    'URL' = 'https://www.saba.ye/en'
                    'icon' = 'https://www.saba.ye/favicon.ico'
                },
                @{
                    'Title' = 'Almasirah Media Culture - Features on Yemeni literature music and cinema'
                    'URL' = 'https://english.masirahtv.net/'
                    'icon' = 'https://english.masirahtv.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Thawra Net Culture - News on Yemeni art exhibitions and cultural events'
                    'URL' = 'https://en.althawranews.net/'
                    'icon' = 'https://en.althawranews.net/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Yemen Culture - Coverage of Yemeni heritage and modern arts'
                    'URL' = 'https://www.aljazeera.com/where/yemen/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Enab Baladi Culture - Independent critiques of Yemeni cultural policies'
                    'URL' = 'https://english.enabbaladi.net/'
                    'icon' = 'https://english.enabbaladi.net/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Yemen Culture - Alternative views on regional cultural exchanges'
                    'URL' = 'https://www.middleeasteye.net/countries/yemen'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Yemen Culture - Progressive perspectives on Yemeni arts and society'
                    'URL' = 'https://www.al-monitor.com/yemen'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Yemen Vlogs Culture - Vlogs on Yemeni society culture and daily life'
                'URL' = 'https://www.youtube.com/playlist?list=PLHjHLXTydFWClDpp2BTWep8Ghs9Bq7wab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Inside Yemen Secrets - Cultural explorations of Yemeni traditions and history'
                'URL' = 'https://www.youtube.com/watch?v=f0clFBev2x4'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Life in Yemen Vlog - Bridging cultures through vlogs on Yemeni festivals'
                'URL' = 'https://www.youtube.com/watch?v=7k1vuZsbQgk'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Yemen Traditional Channel - Videos showcasing Yemeni arts and heritage sites'
                'URL' = 'https://www.youtube.com/user/thekingalex2'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Mafraj Radio Yemen - Episodes on cultural milestones and figures'
                'URL' = 'https://www.yemenpeaceproject.org/podcast'
                'icon' = 'https://www.yemenpeaceproject.org/favicon.ico'
            },
            @{
                'Title' = 'Kaleidoscope Yemen - Conversations with Yemeni artists and cultural creators'
                'URL' = 'https://open.spotify.com/show/3yHArugmdtWHTy1xbKgIOw'
                'icon' = 'https://open.spotify.com/favicon.ico'
            },
            @{
                'Title' = 'Voices from Diaspora - Narrative tales of Yemeni culture and personal stories'
                'URL' = 'https://syriadirect.org/podcast-voices-from-the-diaspora/'
                'icon' = 'https://syriadirect.org/favicon.ico'
            }
        )
    }
    'Science and Technology' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Yemen Times Science Tech - Latest on Yemeni tech innovations and research'
                    'URL' = 'https://yementimes.com/category/science-technology/'
                    'icon' = 'https://yementimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Yemen Week Science - Coverage of Yemeni scientific breakthroughs and studies'
                    'URL' = 'https://yemenweek.com/en/category/science-and-technology/'
                    'icon' = 'https://yemenweek.com/favicon.ico'
                },
                @{
                    'Title' = 'Sanaa Center Yemen Tech - News on Yemeni cybersecurity and AI developments'
                    'URL' = 'https://sanaacenter.org/the-yemen-review'
                    'icon' = 'https://sanaacenter.org/favicon.ico'
                },
                @{
                    'Title' = 'Yemen Online Science - Reports on Yemeni defense tech and achievements'
                    'URL' = 'https://www.yemenonline.info/'
                    'icon' = 'https://www.yemenonline.info/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Yemen Research YOSTR - Critical analysis of Yemeni surveillance technologies'
                    'URL' = 'https://www.yostr.org/'
                    'icon' = 'https://www.yostr.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Yemen Tech - Alternative reporting on tech impacts in conflict'
                    'URL' = 'https://www.middleeasteye.net/countries/yemen'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Yemen Science - Perspectives on ethical issues in Yemeni research'
                    'URL' = 'https://www.al-monitor.com/yemen'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Anwer Senan Science - Vlogs on Yemeni biotech and innovation hubs'
                'URL' = 'https://www.youtube.com/@anwersenan'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Yemen Technology Channel - Videos exploring Yemeni life-saving technologies'
                'URL' = 'https://www.youtube.com/@y-t'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Yemen Vlogs Tech - Interviews with Yemeni tech thought leaders'
                'URL' = 'https://www.youtube.com/playlist?list=PLHjHLXTydFWClDpp2BTWep8Ghs9Bq7wab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Hashem Al-Ghaili Science - Explanations of Yemeni water tech and sustainability'
                'URL' = 'https://www.youtube.com/watch?v=ULKQiARO6y4'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Science in Exile Yemen - Talks with Yemeni tech founders and innovators'
                'URL' = 'https://council.science/blog/podcast-early-career-scientist-leaving-yemen-to-continue-research/'
                'icon' = 'https://council.science/favicon.ico'
            },
            @{
                'Title' = 'Unsung Science Yemen - Updates on AI and cybersecurity in Yemen'
                'URL' = 'https://podcasts.apple.com/us/podcast/unsung-science/id1586061509'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Yemen News Tech - Stories of Yemeni tech startups and breakthroughs'
                'URL' = 'https://open.spotify.com/show/5hq7dNyUfnXLM7cRLCt8Js'
                'icon' = 'https://open.spotify.com/favicon.ico'
            }
        )
    }
    'Politics' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Yemen Press Agency - Breaking news on Yemeni government and political transitions'
                    'URL' = 'https://en.ypagency.net/'
                    'icon' = 'https://en.ypagency.net/favicon.ico'
                },
                @{
                    'Title' = 'SABA Yemen Politics - Analysis of Yemeni parliament debates and policy shifts'
                    'URL' = 'https://www.saba.ye/en'
                    'icon' = 'https://www.saba.ye/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Yemen Politics - Coverage of Houthi coalitions and governance'
                    'URL' = 'https://www.aljazeera.com/where/yemen/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                },
                @{
                    'Title' = 'AP News Yemen - Updates on Yemeni foreign relations and security issues'
                    'URL' = 'https://apnews.com/hub/yemen'
                    'icon' = 'https://apnews.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Syria Direct Yemen - Independent journalism on Yemeni governance policies'
                    'URL' = 'https://syriadirect.org/'
                    'icon' = 'https://syriadirect.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Yemen Politics - Critical reporting on Houthi political decisions'
                    'URL' = 'https://www.middleeasteye.net/countries/yemen'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Yemen Politics - Alternative narratives on Yemeni transitions'
                    'URL' = 'https://www.al-monitor.com/yemen'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Yemen Vlogs Politics - Vlogs explaining Yemeni political dynamics'
                'URL' = 'https://www.youtube.com/playlist?list=PLHjHLXTydFWClDpp2BTWep8Ghs9Bq7wab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Ahmed al-Sharaa Commentary - Political insights through Yemeni cultural lens'
                'URL' = 'https://www.youtube.com/results?search_query=ahmed+al+sharaa+syria'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Life in Yemen Vlog Politics - Videos on Yemeni parliament sessions and protests'
                'URL' = 'https://www.youtube.com/watch?v=Fh6PTLIm08I'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Bald and Bankrupt Yemen - Lectures on Yemeni politics and society'
                'URL' = 'https://www.youtube.com/c/BaldandBankrupt'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Yemen From Revolution - Two experts unpacking Yemeni political news'
                'URL' = 'https://podcasts.apple.com/us/podcast/yemen-from-revolution-to-civil-war/id1443491069?i=1000635628864'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Mafraj Radio Politics - Discussions on Yemeni political landscape'
                'URL' = 'https://www.yemenpeaceproject.org/podcast'
                'icon' = 'https://www.yemenpeaceproject.org/favicon.ico'
            },
            @{
                'Title' = 'Yemen Brief Podcast - Expert talks on Yemeni foreign policy and governance'
                'URL' = 'https://sanaacenter.org/playlists/the-yemen-brief-podcast'
                'icon' = 'https://sanaacenter.org/favicon.ico'
            }
        )
    }
    'Fashion' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = 'Yemen Wear Fashion - Coverage of Yemeni designers and traditional trends'
                    'URL' = 'https://www.yemenwear.com/'
                    'icon' = 'https://www.yemenwear.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Yamaniah Magazine - Features on Yemeni modest and cultural fashion'
                    'URL' = 'https://www.instagram.com/alyamaniah/'
                    'icon' = 'https://www.instagram.com/favicon.ico'
                },
                @{
                    'Title' = 'Yemen Times Fashion - News on sustainable Yemeni apparel and heritage'
                    'URL' = 'https://yementimes.com/reflecting-on-traditional-fashionyemen-as-a-creative-country-archives2006-993-reportage/'
                    'icon' = 'https://yementimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Fashiongton Post Yemen - Reports on influences in Yemeni style evolution'
                    'URL' = 'https://fashiongtonpost.com/yemen-traditional-clothing/'
                    'icon' = 'https://fashiongtonpost.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Global Issues Yemen Fashion - Critiques of industry amid economic crisis'
                    'URL' = 'https://www.globalissues.org/news/2024/08/16/37431'
                    'icon' = 'https://www.globalissues.org/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Yemen Fashion - Alternative stories on ethical dress resistance'
                    'URL' = 'https://www.middleeasteye.net/discover/yemen-woman-making-traditional-dolls-in-pictures'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'New Arab Yemen Fashion - Reporting on cultural resistance through attire'
                    'URL' = 'https://www.newarab.com/features/yemeni-diaspora-creatives-challenging-politics-through-art'
                    'icon' = 'https://www.newarab.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Yemen Vlogs Fashion - Vlogs on Yemeni beauty and fashion trends'
                'URL' = 'https://www.youtube.com/playlist?list=PLHjHLXTydFWClDpp2BTWep8Ghs9Bq7wab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Americans Trying Yemeni Clothes - Street style explorations in Yemeni cities'
                'URL' = 'https://www.youtube.com/watch?v=cSKSCtP-sHw'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Yemeni Designer Kazna Asker - Coverage of Yemeni fashion events and heritage'
                'URL' = 'https://www.youtube.com/watch?v=XZiCyuxatqw'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Modest Sultanaa Yemen - Videos on Yemeni designers and traditional runways'
                'URL' = 'https://www.youtube.com/results?search_query=modest+sultanaa+yemen'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Fi2W Podcast Yemen Fashion - Psychology of Yemeni style and trends'
                'URL' = 'https://thenewschool.medium.com/my-hijab-my-body-the-journey-of-a-tattooed-yemeni-feminist-the-fi2w-podcast-474d7ca91dab'
                'icon' = 'https://thenewschool.medium.com/favicon.ico'
            },
            @{
                'Title' = 'Yemen News Fashion - History of Yemeni fashion evolution and influences'
                'URL' = 'https://yemen-news.captivate.fm/episode/nadine-das'
                'icon' = 'https://yemen-news.captivate.fm/favicon.ico'
            },
            @{
                'Title' = 'Service95 Yemen Attire - Modest dressing in Yemeni cultural contexts'
                'URL' = 'https://www.service95.com/kazna-asker-on-being-inspired-by-yemeni-culture'
                'icon' = 'https://www.service95.com/favicon.ico'
            }
        )
    }
    'Military' = @{
        'News' = @{
            'Mainstream' = @(
                @{
                    'Title' = '26 September Net Military - Updates on Yemeni Armed Forces operations and strategies'
                    'URL' = 'https://en.26sepnews.net/'
                    'icon' = 'https://en.26sepnews.net/favicon.ico'
                },
                @{
                    'Title' = 'Yemen Press Agency Defense - Coverage of Houthi military exercises and conflicts'
                    'URL' = 'https://en.ypagency.net/'
                    'icon' = 'https://en.ypagency.net/favicon.ico'
                },
                @{
                    'Title' = 'Military.com Yemen - Reports on border security and international interventions'
                    'URL' = 'https://www.military.com/topics/yemen'
                    'icon' = 'https://www.military.com/favicon.ico'
                },
                @{
                    'Title' = 'Al Jazeera Yemen Military - News on Yemeni air force and intelligence activities'
                    'URL' = 'https://www.aljazeera.com/where/yemen/'
                    'icon' = 'https://www.aljazeera.com/favicon.ico'
                }
            )
            'Counter' = @(
                @{
                    'Title' = 'Enab Baladi Yemen Military - Investigative reports on Yemeni tactics and escalations'
                    'URL' = 'https://english.enabbaladi.net/'
                    'icon' = 'https://english.enabbaladi.net/favicon.ico'
                },
                @{
                    'Title' = 'Middle East Eye Yemen Military - Alternative analysis of arms and regional conflicts'
                    'URL' = 'https://www.middleeasteye.net/countries/yemen'
                    'icon' = 'https://www.middleeasteye.net/favicon.ico'
                },
                @{
                    'Title' = 'Al-Monitor Yemen Military - Critical coverage of military actions and alliances'
                    'URL' = 'https://www.al-monitor.com/yemen'
                    'icon' = 'https://www.al-monitor.com/favicon.ico'
                }
            )
        }
        'Vloggers' = @(
            @{
                'Title' = 'Yemen Vlogs Military - Vlogs on Yemeni resistance stories and operations'
                'URL' = 'https://www.youtube.com/playlist?list=PLHjHLXTydFWClDpp2BTWep8Ghs9Bq7wab'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Life in Yemen War Vlog - Analyses of Yemeni military equipment and strategies'
                'URL' = 'https://www.youtube.com/watch?v=Fh6PTLIm08I'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Yemen Crisis Explained - Reviews of Yemeni operations and gear in conflict'
                'URL' = 'https://www.youtube.com/watch?v=RRmLvcnu3O4'
                'icon' = 'https://www.youtube.com/favicon.ico'
            },
            @{
                'Title' = 'Houthis Bunkers Vlog - Videos on defense innovations and soldier narratives'
                'URL' = 'https://www.youtube.com/watch?v=W1aASjoaz4Y'
                'icon' = 'https://www.youtube.com/favicon.ico'
            }
        )
        'Podcasts' = @(
            @{
                'Title' = 'Houthis Part 1 Podcast - Behind-the-scenes of Yemeni Armed Forces and rise'
                'URL' = 'https://podcasts.apple.com/gb/podcast/ep121-the-houthis-part-1/id1587026605?i=1000650948836'
                'icon' = 'https://podcasts.apple.com/favicon.ico'
            },
            @{
                'Title' = 'Yemen Role Global Security - Discussions on Yemeni security and defense policies'
                'URL' = 'https://podcast.janes.com/public/68/The-World-of-Intelligence-50487d09/0ab12882'
                'icon' = 'https://podcast.janes.com/favicon.ico'
            },
            @{
                'Title' = 'US Civil War Yemen - Expert talks on Yemeni military strategy and threats'
                'URL' = 'https://generalambassadorpodcast.org/070'
                'icon' = 'https://generalambassadorpodcast.org/favicon.ico'
            }
        )
    }
}
}
}
}