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

#   Grok:
#   Business - https://grok.com/share/c2hhcmQtNA_44531d45-4b8c-4571-9566-04be6b67e6c6
#   Africa - https://grok.com/share/c2hhcmQtNA_93c57c86-01a4-4481-a27b-7423175ba8d4
#   Asia - https://grok.com/share/c2hhcmQtNA_5e9b1cb0-0f40-41ac-bca1-4a207e8a1a38
#   Europe - https://grok.com/share/c2hhcmQtNA_bfc2c811-476e-4f74-a6c7-36668d3e28f7
#

@{
    'News' = @{
        'General News' = @(
            @{
                'Title' = 'Google News'
                'URL' = 'https://news.google.com/home?hl=en-US&gl=US&ceid=US:en'
                'Icon' = 'https://news.google.com/favicon.ico'
            },
            @{
                'Title' = 'CNN'
                'URL' = 'https://www.cnn.com/'
                'Icon' = 'https://www.cnn.com/favicon.ico'
            },
            @{
                'Title' = 'Fox News'
                'URL' = 'https://www.foxnews.com/'
                'Icon' = 'https://www.foxnews.com/favicon.ico'
            },
            @{
                'Title' = 'The New York Times'
                'URL' = 'https://www.nytimes.com/'
                'Icon' = 'https://www.nytimes.com/favicon.ico'
            },
            @{
                'Title' = 'BBC News'
                'URL' = 'https://www.bbc.com/news'
                'Icon' = 'https://www.bbc.com/favicon.ico'
            },
            @{
                'Title' = 'Reuters'
                'URL' = 'https://www.reuters.com/'
                'Icon' = 'https://www.reuters.com/favicon.ico'
            },
            @{
                'Title' = 'The Washington Post'
                'URL' = 'https://www.washingtonpost.com/'
                'Icon' = 'https://www.washingtonpost.com/favicon.ico'
            },
            @{
                'Title' = 'National Review'
                'URL' = 'https://www.nationalreview.com/'
                'Icon' = 'https://www.nationalreview.com/favicon.ico'
            },
            @{
                'Title' = 'The Washington Times'
                'URL' = 'https://www.washingtontimes.com/'
                'Icon' = 'https://www.washingtontimes.com/favicon.ico'
            },
            @{
                'Title' = 'MSNBC'
                'URL' = 'https://www.msnbc.com/'
                'Icon' = 'https://www.msnbc.com/favicon.ico'
            },
            @{
                'Title' = 'HuffPost'
                'URL' = 'https://www.huffpost.com/'
                'Icon' = 'https://www.huffpost.com/favicon.ico'
            },
            @{
                'Title' = 'Reason'
                'URL' = 'https://reason.com/'
                'Icon' = 'https://reason.com/favicon.ico'
            },
            @{
                'Title' = 'Cato Institute'
                'URL' = 'https://www.cato.org/'
                'Icon' = 'https://www.cato.org/favicon.ico'
            }
        )
        'Fringe News' = @(
            @{
                'Title' = 'What Really Happened'
                'URL' = 'https://whatreallyhappened.com/NEW/'
                'Icon' = 'https://whatreallyhappened.com/favicon.ico'
            },
            @{
                'Title' = 'Aether Pirates of the Matterium!'
                'URL' = 'https://clifhigh.substack.com/'
                'Icon' = 'https://clifhigh.substack.com/favicon.ico'
            },
            @{
                'Title' = 'Before Its News'
                'URL' = 'https://beforeitsnews.com/'
                'Icon' = 'https://beforeitsnews.com/favicon.ico'
            },
            @{
                'Title' = 'Alternet'
                'URL' = 'https://www.alternet.org/'
                'Icon' = 'https://www.alternet.org/favicon.ico'
            },
            @{
                'Title' = 'Common Dreams'
                'URL' = 'https://www.commondreams.org/'
                'Icon' = 'https://www.commondreams.org/favicon.ico'
            },
            @{
                'Title' = 'Truthout'
                'URL' = 'https://truthout.org/'
                'Icon' = 'https://truthout.org/favicon.ico'
            },
            @{
                'Title' = 'Mother Jones'
                'URL' = 'https://www.motherjones.com/'
                'Icon' = 'https://www.motherjones.com/favicon.ico'
            },
            @{
                'Title' = 'Daily Kos'
                'URL' = 'https://www.dailykos.com/'
                'Icon' = 'https://www.dailykos.com/favicon.ico'
            },
            @{
                'Title' = 'Infowars'
                'URL' = 'https://www.infowars.com/'
                'Icon' = 'https://www.infowars.com/favicon.ico'
            }
        )
        'Sports' = @{
            'Major Mens Leagues' = @(
                @{
                    'Title' = 'ESPN'
                    'URL' = 'https://www.espn.com/'
                    'Icon' = 'https://www.espn.com/favicon.ico'
                },
                @{
                    'Title' = 'CBS Sports'
                    'URL' = 'https://www.cbssports.com/'
                    'Icon' = 'https://www.cbssports.com/favicon.ico'
                },
                @{
                    'Title' = 'Sports Illustrated'
                    'URL' = 'https://www.si.com/'
                    'Icon' = 'https://www.si.com/favicon.ico'
                },
                @{
                    'Title' = 'Bleacher Report'
                    'URL' = 'https://bleacherreport.com/'
                    'Icon' = 'https://bleacherreport.com/favicon.ico'
                },
                @{
                    'Title' = 'The Athletic'
                    'URL' = 'https://www.nytimes.com/athletic/'
                    'Icon' = 'https://www.nytimes.com/athletic/favicon.ico'
                },
                @{
                    'Title' = 'Yahoo Sports'
                    'URL' = 'https://sports.yahoo.com/'
                    'Icon' = 'https://sports.yahoo.com/favicon.ico'
                }
            )
            'Mens College Sports' = @(
                @{
                    'Title' = 'CBS Sports College Football'
                    'URL' = 'https://www.cbssports.com/college-football/'
                    'Icon' = 'https://www.cbssports.com/favicon.ico'
                },
                @{
                    'Title' = 'NCAA Football'
                    'URL' = 'https://www.ncaa.com/sports/football/fbs'
                    'Icon' = 'https://www.ncaa.com/favicon.ico'
                },
                @{
                    'Title' = 'FOX Sports College Basketball'
                    'URL' = 'https://www.foxsports.com/college-basketball'
                    'Icon' = 'https://www.foxsports.com/favicon.ico'
                },
                @{
                    'Title' = '247Sports'
                    'URL' = 'https://247sports.com/'
                    'Icon' = 'https://247sports.com/favicon.ico'
                },
                @{
                    'Title' = 'Rivals'
                    'URL' = 'https://www.rivals.com/'
                    'Icon' = 'https://www.rivals.com/favicon.ico'
                }
            )
            'Notable Womens Sports' = @(
                @{
                    'Title' = 'Just Women''s Sports'
                    'URL' = 'https://justwomenssports.com/'
                    'Icon' = 'https://justwomenssports.com/favicon.ico'
                },
                @{
                    'Title' = 'The GIST'
                    'URL' = 'https://thegistsports.com/'
                    'Icon' = 'https://thegistsports.com/favicon.ico'
                },
                @{
                    'Title' = 'USA TODAY Women''s Sports'
                    'URL' = 'https://www.usatoday.com/womens-sports'
                    'Icon' = 'https://www.usatoday.com/favicon.ico'
                },
                @{
                    'Title' = 'WNBA'
                    'URL' = 'https://www.wnba.com/'
                    'Icon' = 'https://www.wnba.com/favicon.ico'
                },
                @{
                    'Title' = 'Women''s Sports Foundation'
                    'URL' = 'https://www.womenssportsfoundation.org/'
                    'Icon' = 'https://www.womenssportsfoundation.org/favicon.ico'
                }
            )
            'Womens College Sports' = @(
                @{
                    'Title' = 'SB Nation Women''s Sports'
                    'URL' = 'https://www.sbnation.com/womens-sports'
                    'Icon' = 'https://www.sbnation.com/favicon.ico'
                },
                @{
                    'Title' = 'NCAA Women''s Sports'
                    'URL' = 'https://www.ncaa.com/sports'
                    'Icon' = 'https://www.ncaa.com/favicon.ico'
                },
                @{
                    'Title' = 'Just Women''s Sports College'
                    'URL' = 'https://justwomenssports.com/category/college/'
                    'Icon' = 'https://justwomenssports.com/favicon.ico'
                }
            )
        }
        'Business News' = @{
            'Retail' = @{
                'Vloggers' = @(
                    @{
                        'Title' = 'Shopify'
                        'URL' = 'https://www.youtube.com/c/shopify'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Wholesale Ted'
                        'URL' = 'https://www.youtube.com/channel/UCC8wczy7734jKPhiR2UkS9A'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Oberlo'
                        'URL' = 'https://www.youtube.com/c/oberlo'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Neil Patel'
                        'URL' = 'https://www.youtube.com/neilpatel'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    }
                )
                'Luxury' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Emma Chamberlain'
                            'URL' = 'https://www.youtube.com/c/EmmaChamberlain'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Mikayla Nogueira'
                            'URL' = 'https://www.youtube.com/c/MikaylaNogueira'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Safiya Nygaard'
                            'URL' = 'https://www.youtube.com/user/safiyanygaard'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Remi Bader'
                            'URL' = 'https://www.youtube.com/c/RemiBader'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Luxury Daily'
                            'URL' = 'https://www.luxurydaily.com/'
                            'Icon' = 'https://www.luxurydaily.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Robb Report'
                            'URL' = 'https://robbreport.com/'
                            'Icon' = 'https://robbreport.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Luxury Insider'
                            'URL' = 'https://www.luxuryinsider.com/'
                            'Icon' = 'https://www.luxuryinsider.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Pursuitist'
                            'URL' = 'https://pursuitist.com/'
                            'Icon' = 'https://pursuitist.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Luxury Travel Magazine'
                            'URL' = 'https://www.luxurytravelmagazine.com/'
                            'Icon' = 'https://www.luxurytravelmagazine.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Luxe Insider'
                            'URL' = 'https://theluxurytravelexpert.com/'
                            'Icon' = 'https://theluxurytravelexpert.com/favicon.ico'
                        }
                    )
                }
                'Department Stores' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Retail MBA'
                            'URL' = 'https://www.youtube.com/c/RetailMBA'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Dan Lok'
                            'URL' = 'https://www.youtube.com/c/DanLok'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Andy Elliott'
                            'URL' = 'https://www.youtube.com/c/AndyElliott'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'eBay'
                            'URL' = 'https://www.youtube.com/user/ebay'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Chain Store Age'
                            'URL' = 'https://chainstoreage.com/'
                            'Icon' = 'https://chainstoreage.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Retail News.AI'
                            'URL' = 'https://retailnews.ai/'
                            'Icon' = 'https://retailnews.ai/favicon.ico'
                        },
                        @{
                            'Title' = 'Stores Magazine'
                            'URL' = 'https://www.stores.org/'
                            'Icon' = 'https://www.stores.org/favicon.ico'
                        },
                        @{
                            'Title' = 'Retail Customer Experience'
                            'URL' = 'https://www.retailcustomerexperience.com/'
                            'Icon' = 'https://www.retailcustomerexperience.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Retail TouchPoints'
                            'URL' = 'https://www.retailtouchpoints.com/'
                            'Icon' = 'https://www.retailtouchpoints.com/favicon.ico'
                        },
                        @{
                            'Title' = 'RIS News'
                            'URL' = 'https://risnews.com/'
                            'Icon' = 'https://risnews.com/favicon.ico'
                        }
                    )
                }
                'Electronics' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'ElectroBOOM'
                            'URL' = 'https://www.youtube.com/c/Electroboom'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'bigclivedotcom'
                            'URL' = 'https://www.youtube.com/user/bigclivedotcom'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'GreatScott!'
                            'URL' = 'https://www.youtube.com/c/greatscottlab'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Adafruit Industries'
                            'URL' = 'https://www.youtube.com/user/adafruit'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'WIRED'
                            'URL' = 'https://www.wired.com/'
                            'Icon' = 'https://www.wired.com/favicon.ico'
                        },
                        @{
                            'Title' = 'CNET'
                            'URL' = 'https://www.cnet.com/'
                            'Icon' = 'https://www.cnet.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Engadget'
                            'URL' = 'https://www.engadget.com/'
                            'Icon' = 'https://www.engadget.com/favicon.ico'
                        },
                        @{
                            'Title' = 'RetailWire'
                            'URL' = 'https://retailwire.com/'
                            'Icon' = 'https://retailwire.com/favicon.ico'
                        },
                        @{
                            'Title' = 'PCMag'
                            'URL' = 'https://www.pcmag.com/'
                            'Icon' = 'https://www.pcmag.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Twice'
                            'URL' = 'https://www.twice.com/'
                            'Icon' = 'https://www.twice.com/favicon.ico'
                        }
                    )
                }
                'Fashion' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Jose Zuniga'
                            'URL' = 'https://www.youtube.com/c/JoseZuniga'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Patricia Bright'
                            'URL' = 'https://www.youtube.com/c/PatriciaBright'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Loey Lane'
                            'URL' = 'https://www.youtube.com/c/LoeyLane'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Amber Scholl'
                            'URL' = 'https://www.youtube.com/c/AmberScholl'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Vogue'
                            'URL' = 'https://www.vogue.com/'
                            'Icon' = 'https://www.vogue.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Business of Fashion'
                            'URL' = 'https://www.businessoffashion.com/'
                            'Icon' = 'https://www.businessoffashion.com/favicon.ico'
                        },
                        @{
                            'Title' = 'WWD'
                            'URL' = 'https://wwd.com/'
                            'Icon' = 'https://wwd.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Fashion Dive'
                            'URL' = 'https://www.fashiondive.com/'
                            'Icon' = 'https://www.fashiondive.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Glossy'
                            'URL' = 'https://www.glossy.co/'
                            'Icon' = 'https://www.glossy.co/favicon.ico'
                        },
                        @{
                            'Title' = 'Who What Wear'
                            'URL' = 'https://www.whowhatwear.com/'
                            'Icon' = 'https://www.whowhatwear.com/favicon.ico'
                        }
                    )
                }
                'Grocery' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Joshua Schall'
                            'URL' = 'https://www.youtube.com/c/JoshuaSchall'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Startup CPG'
                            'URL' = 'https://www.youtube.com/c/StartupCPG'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Tim Forrest Consulting'
                            'URL' = 'https://www.youtube.com/c/TimForrestConsulting'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Acosta'
                            'URL' = 'https://www.youtube.com/c/AcostaSales'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Grocery Dive'
                            'URL' = 'https://www.grocerydive.com/'
                            'Icon' = 'https://www.grocerydive.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Supermarket News'
                            'URL' = 'https://www.supermarketnews.com/'
                            'Icon' = 'https://www.supermarketnews.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Progressive Grocer'
                            'URL' = 'https://progressivegrocer.com/'
                            'Icon' = 'https://progressivegrocer.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Canadian Grocer'
                            'URL' = 'https://canadiangrocer.com/'
                            'Icon' = 'https://canadiangrocer.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Shelby Report'
                            'URL' = 'https://www.theshelbyreport.com/'
                            'Icon' = 'https://www.theshelbyreport.com/favicon.ico'
                        }
                    )
                }
                'E-commerce' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Shopify'
                            'URL' = 'https://www.youtube.com/c/shopify'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'BigCommerce'
                            'URL' = 'https://www.youtube.com/c/BigCommerce'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'HubSpot Marketing'
                            'URL' = 'https://www.youtube.com/c/HubSpot'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'WooCommerce'
                            'URL' = 'https://www.youtube.com/c/WooCommerce'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Retail Dive'
                            'URL' = 'https://www.retaildive.com/'
                            'Icon' = 'https://www.retaildive.com/favicon.ico'
                        },
                        @{
                            'Title' = 'NRF'
                            'URL' = 'https://nrf.com/'
                            'Icon' = 'https://nrf.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Retail Gazette'
                            'URL' = 'https://www.retailgazette.co.uk/'
                            'Icon' = 'https://www.retailgazette.co.uk/favicon.ico'
                        },
                        @{
                            'Title' = 'Retail Insider'
                            'URL' = 'https://retail-insider.com/'
                            'Icon' = 'https://retail-insider.com/favicon.ico'
                        },
                        @{
                            'Title' = 'EcommerceBytes'
                            'URL' = 'https://www.ecommercebytes.com/'
                            'Icon' = 'https://www.ecommercebytes.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Retail Brew'
                            'URL' = 'https://www.retailbrew.com/'
                            'Icon' = 'https://www.retailbrew.com/favicon.ico'
                        }
                    )
                }
            }
            'Manufacturing' = @{
                'Vloggers' = @(
                    @{
                        'Title' = 'Manufacturing News Network'
                        'URL' = 'https://www.youtube.com/channel/UCUqct-mYEmRYtnvlTa4ifbQ'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Noria'
                        'URL' = 'https://www.youtube.com/channel/UCDu0_27OKsKhKdCNIjQi9kg'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    },
                    @{
                        'Title' = 'U.S. Department of Labor'
                        'URL' = 'https://www.youtube.com/user/USDepartmentofLabor'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    },
                    @{
                        'Title' = 'The Manufacturer'
                        'URL' = 'https://www.youtube.com/c/Themanufacturer'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    }
                )
                'Aerospace' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Mentour Pilot'
                            'URL' = 'https://www.youtube.com/c/MentourPilot'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Captain Joe'
                            'URL' = 'https://www.youtube.com/c/CaptainJoe'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Sam Chui'
                            'URL' = 'https://www.youtube.com/c/SamChui'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'VASAviation'
                            'URL' = 'https://www.youtube.com/c/VASaviation'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Aerospace Manufacturing'
                            'URL' = 'https://www.aero-mag.com/'
                            'Icon' = 'https://www.aero-mag.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Aviation Week'
                            'URL' = 'https://aviationweek.com/'
                            'Icon' = 'https://aviationweek.com/favicon.ico'
                        },
                        @{
                            'Title' = 'AIAA Industry News'
                            'URL' = 'https://aiaa.org/news/industry-news'
                            'Icon' = 'https://aiaa.org/favicon.ico'
                        },
                        @{
                            'Title' = 'Defense News'
                            'URL' = 'https://www.defensenews.com/'
                            'Icon' = 'https://www.defensenews.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Breaking Defense'
                            'URL' = 'https://breakingdefense.com/'
                            'Icon' = 'https://breakingdefense.com/favicon.ico'
                        },
                        @{
                            'Title' = 'FlightGlobal'
                            'URL' = 'https://www.flightglobal.com/'
                            'Icon' = 'https://www.flightglobal.com/favicon.ico'
                        }
                    )
                }
                'Energy' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Will Prowse'
                            'URL' = 'https://www.youtube.com/c/WillProwse'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Engineering with Rosie'
                            'URL' = 'https://www.youtube.com/c/EngineeringwithRosie'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Just Have a Think'
                            'URL' = 'https://www.youtube.com/c/JustHaveaThink'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Clean Energy Reviews'
                            'URL' = 'https://www.youtube.com/c/CleanEnergyReviews'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Canary Media'
                            'URL' = 'https://www.canarymedia.com/'
                            'Icon' = 'https://www.canarymedia.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Utility Dive'
                            'URL' = 'https://www.utilitydive.com/'
                            'Icon' = 'https://www.utilitydive.com/favicon.ico'
                        },
                        @{
                            'Title' = 'EnergyNow'
                            'URL' = 'https://energynow.com/'
                            'Icon' = 'https://energynow.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Heatmap'
                            'URL' = 'https://heatmap.news/'
                            'Icon' = 'https://heatmap.news/favicon.ico'
                        },
                        @{
                            'Title' = 'E&E News'
                            'URL' = 'https://www.eenews.net/'
                            'Icon' = 'https://www.eenews.net/favicon.ico'
                        },
                        @{
                            'Title' = 'OilPrice.com'
                            'URL' = 'https://oilprice.com/'
                            'Icon' = 'https://oilprice.com/favicon.ico'
                        }
                    )
                }
                'Electronics' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'ElectroBOOM'
                            'URL' = 'https://www.youtube.com/c/Electroboom'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'bigclivedotcom'
                            'URL' = 'https://www.youtube.com/user/bigclivedotcom'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'GreatScott!'
                            'URL' = 'https://www.youtube.com/c/greatscottlab'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Adafruit Industries'
                            'URL' = 'https://www.youtube.com/user/adafruit'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'EE Times'
                            'URL' = 'https://www.eetimes.com/'
                            'Icon' = 'https://www.eetimes.com/favicon.ico'
                        },
                        @{
                            'Title' = 'SMT Today'
                            'URL' = 'https://smttoday.com/'
                            'Icon' = 'https://smttoday.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Electronics Weekly'
                            'URL' = 'https://www.electronicsweekly.com/news/business/manufacturing/'
                            'Icon' = 'https://www.electronicsweekly.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Manufacturing Dive'
                            'URL' = 'https://www.manufacturingdive.com/'
                            'Icon' = 'https://www.manufacturingdive.com/favicon.ico'
                        },
                        @{
                            'Title' = 'EDN'
                            'URL' = 'https://www.edn.com/'
                            'Icon' = 'https://www.edn.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Electronic Design'
                            'URL' = 'https://www.electronicdesign.com/'
                            'Icon' = 'https://www.electronicdesign.com/favicon.ico'
                        }
                    )
                }
                'Pharmaceuticals' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'AbrahamThePharmacist'
                            'URL' = 'https://www.youtube.com/c/AbrahamThePharmacist'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Hey Pharmacist'
                            'URL' = 'https://www.youtube.com/c/HeyPharmacist'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'CVS Pharmacy'
                            'URL' = 'https://www.youtube.com/user/CVSpharmacy'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Sun Pharma'
                            'URL' = 'https://www.youtube.com/c/SunPharma'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Fierce Pharma'
                            'URL' = 'https://www.fiercepharma.com/'
                            'Icon' = 'https://www.fiercepharma.com/favicon.ico'
                        },
                        @{
                            'Title' = 'PharmaVoice'
                            'URL' = 'https://www.pharmavoice.com/'
                            'Icon' = 'https://www.pharmavoice.com/favicon.ico'
                        },
                        @{
                            'Title' = 'BioPharma Dive'
                            'URL' = 'https://www.biopharmadive.com/'
                            'Icon' = 'https://www.biopharmadive.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Pharmaceutical Online'
                            'URL' = 'https://www.pharmaceuticalonline.com/'
                            'Icon' = 'https://www.pharmaceuticalonline.com/favicon.ico'
                        },
                        @{
                            'Title' = 'European Pharmaceutical Review'
                            'URL' = 'https://www.europeanpharmaceuticalreview.com/'
                            'Icon' = 'https://www.europeanpharmaceuticalreview.com/favicon.ico'
                        },
                        @{
                            'Title' = 'BioSpace'
                            'URL' = 'https://www.biospace.com/'
                            'Icon' = 'https://www.biospace.com/favicon.ico'
                        }
                    )
                }
                'Automotive' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Doug DeMuro'
                            'URL' = 'https://www.youtube.com/c/dougdemuro'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Jay Leno''s Garage'
                            'URL' = 'https://www.youtube.com/c/JayLenosGarage'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'MotorTrend'
                            'URL' = 'https://www.youtube.com/c/motortrend'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Hagerty'
                            'URL' = 'https://www.youtube.com/c/Hagerty'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Automotive News'
                            'URL' = 'https://www.autonews.com/'
                            'Icon' = 'https://www.autonews.com/favicon.ico'
                        },
                        @{
                            'Title' = 'WardsAuto'
                            'URL' = 'https://www.wardsauto.com/'
                            'Icon' = 'https://www.wardsauto.com/favicon.ico'
                        },
                        @{
                            'Title' = 'MotorTrend Auto News'
                            'URL' = 'https://www.motortrend.com/auto-news'
                            'Icon' = 'https://www.motortrend.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Automotive World'
                            'URL' = 'https://www.automotiveworld.com/'
                            'Icon' = 'https://www.automotiveworld.com/favicon.ico'
                        },
                        @{
                            'Title' = 'InsideEVs'
                            'URL' = 'https://insideevs.com/'
                            'Icon' = 'https://insideevs.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Jalopnik'
                            'URL' = 'https://jalopnik.com/'
                            'Icon' = 'https://jalopnik.com/favicon.ico'
                        }
                    )
                }
                'Consumer Goods' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Joshua Schall'
                            'URL' = 'https://www.youtube.com/c/JoshuaSchall'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Startup CPG'
                            'URL' = 'https://www.youtube.com/c/StartupCPG'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The FMCG Guys'
                            'URL' = 'https://www.youtube.com/c/TheFMCGGuy'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Dr. James Richardson'
                            'URL' = 'https://www.youtube.com/c/DrJamesRichardson'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Consumer Goods Technology'
                            'URL' = 'https://consumergoods.com/'
                            'Icon' = 'https://consumergoods.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Manufacturing Today'
                            'URL' = 'https://manufacturing-today.com/'
                            'Icon' = 'https://manufacturing-today.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Industry Today'
                            'URL' = 'https://industrytoday.com/'
                            'Icon' = 'https://industrytoday.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Food Dive'
                            'URL' = 'https://www.fooddive.com/'
                            'Icon' = 'https://www.fooddive.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Packaging World'
                            'URL' = 'https://www.packworld.com/'
                            'Icon' = 'https://www.packworld.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Shelby Report'
                            'URL' = 'https://www.theshelbyreport.com/'
                            'Icon' = 'https://www.theshelbyreport.com/favicon.ico'
                        }
                    )
                }
            }
            'Investments' = @{
                'Vloggers' = @(
                    @{
                        'Title' = 'Yahoo Finance'
                        'URL' = 'https://www.youtube.com/c/yahoofinance'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    },
                    @{
                        'Title' = 'WhiteBoard Finance'
                        'URL' = 'https://www.youtube.com/channel/UCL_v4tC26PvOFytV1_eEVSg'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    },
                    @{
                        'Title' = 'The Plain Bagel'
                        'URL' = 'https://www.youtube.com/theplainbagel'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Mark Tilbury'
                        'URL' = 'https://www.youtube.com/marktilbury'
                        'Icon' = 'https://www.youtube.com/favicon.ico'
                    }
                )
                'Real Estate' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'BiggerPockets'
                            'URL' = 'https://www.youtube.com/c/BiggerPockets'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Graham Stephan'
                            'URL' = 'https://www.youtube.com/c/GrahamStephan'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Ryan Serhant'
                            'URL' = 'https://www.youtube.com/c/RyanSerhant'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Meet Kevin'
                            'URL' = 'https://www.youtube.com/c/MeetKevin'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'HousingWire'
                            'URL' = 'https://www.housingwire.com/'
                            'Icon' = 'https://www.housingwire.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Realtor.com'
                            'URL' = 'https://www.realtor.com/'
                            'Icon' = 'https://www.realtor.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Inman'
                            'URL' = 'https://www.inman.com/'
                            'Icon' = 'https://www.inman.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Bisnow Commercial Real Estate News'
                            'URL' = 'https://www.bisnow.com/'
                            'Icon' = 'https://www.bisnow.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Real Deal'
                            'URL' = 'https://therealdeal.com/'
                            'Icon' = 'https://therealdeal.com/favicon.ico'
                        },
                        @{
                            'Title' = 'GlobeSt'
                            'URL' = 'https://www.globest.com/'
                            'Icon' = 'https://www.globest.com/favicon.ico'
                        }
                    )
                }
                'Alternative' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Financial Education'
                            'URL' = 'https://www.youtube.com/c/FinancialEducation'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'WhiteBoard Finance'
                            'URL' = 'https://www.youtube.com/c/WhiteBoardFinance'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Financial Diet'
                            'URL' = 'https://www.youtube.com/c/TheFinancialDiet'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Andrei Jikh'
                            'URL' = 'https://www.youtube.com/c/AndreiJikh'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Alternative Investment News - InvestmentNews'
                            'URL' = 'https://www.investmentnews.com/alternatives'
                            'Icon' = 'https://www.investmentnews.com/favicon.ico'
                        },
                        @{
                            'Title' = 'AltsWire'
                            'URL' = 'https://altswire.com/'
                            'Icon' = 'https://altswire.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Alternatives Watch'
                            'URL' = 'https://www.alternativeswatch.com/'
                            'Icon' = 'https://www.alternativeswatch.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Opalesque'
                            'URL' = 'https://www.opalesque.com/'
                            'Icon' = 'https://www.opalesque.com/favicon.ico'
                        },
                        @{
                            'Title' = 'CAIA Blog'
                            'URL' = 'https://caia.org/blog'
                            'Icon' = 'https://caia.org/favicon.ico'
                        },
                        @{
                            'Title' = 'Kubera Blog'
                            'URL' = 'https://www.kubera.com/blog'
                            'Icon' = 'https://www.kubera.com/favicon.ico'
                        }
                    )
                }
                'Stocks' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Sasha Evdakov'
                            'URL' = 'https://www.youtube.com/c/Tradersfly'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Plain Bagel'
                            'URL' = 'https://www.youtube.com/c/ThePlainBagel'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Swedish Investor'
                            'URL' = 'https://www.youtube.com/c/TheSwedishInvestor'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Rayner Teo'
                            'URL' = 'https://www.youtube.com/c/tradingwithrayner'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'MarketWatch'
                            'URL' = 'https://www.marketwatch.com/'
                            'Icon' = 'https://www.marketwatch.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Morningstar'
                            'URL' = 'https://www.morningstar.com/'
                            'Icon' = 'https://www.morningstar.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Investing.com'
                            'URL' = 'https://www.investing.com/'
                            'Icon' = 'https://www.investing.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Barron''s'
                            'URL' = 'https://www.barrons.com/'
                            'Icon' = 'https://www.barrons.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Wall Street Journal'
                            'URL' = 'https://www.wsj.com/'
                            'Icon' = 'https://www.wsj.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Benzinga'
                            'URL' = 'https://www.benzinga.com/'
                            'Icon' = 'https://www.benzinga.com/favicon.ico'
                        }
                    )
                }
                'Crypto' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Coin Bureau'
                            'URL' = 'https://www.youtube.com/c/CoinBureau'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Altcoin Daily'
                            'URL' = 'https://www.youtube.com/c/AltcoinDailyio'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Andreas Antonopoulos'
                            'URL' = 'https://www.youtube.com/c/aantonop'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Benjamin Cowen'
                            'URL' = 'https://www.youtube.com/c/BenjaminCowen'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'CoinDesk'
                            'URL' = 'https://www.coindesk.com/'
                            'Icon' = 'https://www.coindesk.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Block'
                            'URL' = 'https://www.theblock.co/'
                            'Icon' = 'https://www.theblock.co/favicon.ico'
                        },
                        @{
                            'Title' = 'U.Today'
                            'URL' = 'https://u.today/'
                            'Icon' = 'https://u.today/favicon.ico'
                        },
                        @{
                            'Title' = 'CoinGape'
                            'URL' = 'https://coingape.com/'
                            'Icon' = 'https://coingape.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Decrypt'
                            'URL' = 'https://decrypt.co/'
                            'Icon' = 'https://decrypt.co/favicon.ico'
                        },
                        @{
                            'Title' = 'Bankless'
                            'URL' = 'https://www.bankless.com/'
                            'Icon' = 'https://www.bankless.com/favicon.ico'
                        }
                    )
                }
                'Start-ups' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Y Combinator'
                            'URL' = 'https://www.youtube.com/c/ycombinator'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'GaryVee'
                            'URL' = 'https://www.youtube.com/c/garyvee'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Tim Ferriss'
                            'URL' = 'https://www.youtube.com/c/timferriss'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Startup Grind'
                            'URL' = 'https://www.youtube.com/c/StartupGrind'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'TechCrunch'
                            'URL' = 'https://techcrunch.com/'
                            'Icon' = 'https://techcrunch.com/favicon.ico'
                        },
                        @{
                            'Title' = 'VentureBeat'
                            'URL' = 'https://venturebeat.com/'
                            'Icon' = 'https://venturebeat.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Crunchbase News'
                            'URL' = 'https://news.crunchbase.com/'
                            'Icon' = 'https://news.crunchbase.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Techstars'
                            'URL' = 'https://www.techstars.com/'
                            'Icon' = 'https://www.techstars.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Y Combinator'
                            'URL' = 'https://www.ycombinator.com/'
                            'Icon' = 'https://www.ycombinator.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Product Hunt'
                            'URL' = 'https://www.producthunt.com/'
                            'Icon' = 'https://www.producthunt.com/favicon.ico'
                        }
                    )
                }
                'Bonds' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Rob Berger'
                            'URL' = 'https://www.youtube.com/c/RobBerger'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Business With Brian'
                            'URL' = 'https://www.youtube.com/c/BusinessWithBrian'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Yahoo Finance'
                            'URL' = 'https://www.youtube.com/c/yahoofinance'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'CNBC'
                            'URL' = 'https://www.youtube.com/c/CNBCtelevision'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'Bonds & Rates - CNBC'
                            'URL' = 'https://www.cnbc.com/bonds/'
                            'Icon' = 'https://www.cnbc.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Fixed Income - Bloomberg.com'
                            'URL' = 'https://www.bloomberg.com/fixed-income'
                            'Icon' = 'https://www.bloomberg.com/favicon.ico'
                        },
                        @{
                            'Title' = 'The Bond Buyer'
                            'URL' = 'https://www.bondbuyer.com/'
                            'Icon' = 'https://www.bondbuyer.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Latest Bond Market News on BondbloX'
                            'URL' = 'https://bondblox.com/news'
                            'Icon' = 'https://bondblox.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Global Primary Bond Markets News and Analysis'
                            'URL' = 'https://www.bondradar.com/'
                            'Icon' = 'https://www.bondradar.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Fixed Income - Financial Times'
                            'URL' = 'https://www.ft.com/markets/fixed-income'
                            'Icon' = 'https://www.ft.com/favicon.ico'
                        }
                    )
                }
                'Angel Investing' = @{
                    'Vloggers' = @(
                        @{
                            'Title' = 'Y Combinator'
                            'URL' = 'https://www.youtube.com/c/ycombinator'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'AngelList'
                            'URL' = 'https://www.youtube.com/c/AngelList'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Naval'
                            'URL' = 'https://www.youtube.com/c/Naval'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        },
                        @{
                            'Title' = '20VC'
                            'URL' = 'https://www.youtube.com/c/20vc'
                            'Icon' = 'https://www.youtube.com/favicon.ico'
                        }
                    )
                    'Publications' = @(
                        @{
                            'Title' = 'AngelList'
                            'URL' = 'https://www.angellist.com/'
                            'Icon' = 'https://www.angellist.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Gust'
                            'URL' = 'https://gust.com/'
                            'Icon' = 'https://gust.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Angel Investment Network'
                            'URL' = 'https://www.angelinvestmentnetwork.us/'
                            'Icon' = 'https://www.angelinvestmentnetwork.us/favicon.ico'
                        },
                        @{
                            'Title' = 'Angel Capital Association'
                            'URL' = 'https://angelcapitalassociation.org/'
                            'Icon' = 'https://angelcapitalassociation.org/favicon.ico'
                        },
                        @{
                            'Title' = 'Wefunder'
                            'URL' = 'https://wefunder.com/'
                            'Icon' = 'https://wefunder.com/favicon.ico'
                        },
                        @{
                            'Title' = 'Republic'
                            'URL' = 'https://republic.com/'
                            'Icon' = 'https://republic.com/favicon.ico'
                        }
                    )
                }
            }
        }
        # International News - Regional data loaded from external files:
        # africa.psd1, asia.psd1, middle_east.psd1, europe.ps1, central_america.psd1
        'International News' = @{
            'Africa' = @{ }
            'Asia' = @{ }
            'Middle East' = @{ }
            'Europe' = @{ }
            'Latin America' = @{ }
        }
        'Opinion and Commentary' = @{
            'Podcasts' = @(
                @{
                    'Title' = 'The Daily - NYT'
                    'URL' = 'https://www.nytimes.com/column/the-daily'
                    'Icon' = 'https://www.nytimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Pod Save America'
                    'URL' = 'https://crooked.com/podcasts/pod-save-america/'
                    'Icon' = 'https://crooked.com/favicon.ico'
                },
                @{
                    'Title' = 'The Ezra Klein Show'
                    'URL' = 'https://www.nytimes.com/column/ezra-klein-podcast'
                    'Icon' = 'https://www.nytimes.com/favicon.ico'
                },
                @{
                    'Title' = 'The Joe Rogan Experience'
                    'URL' = 'https://open.spotify.com/show/4rOoJ6Egrf8K2IrywzwOMk'
                    'Icon' = 'https://open.spotify.com/favicon.ico'
                },
                @{
                    'Title' = 'Fresh Air - NPR'
                    'URL' = 'https://www.npr.org/podcasts/423534922/fresh-air'
                    'Icon' = 'https://www.npr.org/favicon.ico'
                },
                @{
                    'Title' = 'The Daily Stoic'
                    'URL' = 'https://dailystoic.com/podcast/'
                    'Icon' = 'https://dailystoic.com/favicon.ico'
                },
                @{
                    'Title' = 'On Being'
                    'URL' = 'https://onbeing.org/podcasts/'
                    'Icon' = 'https://onbeing.org/favicon.ico'
                },
                @{
                    'Title' = 'Radiolab'
                    'URL' = 'https://radiolab.org/podcast'
                    'Icon' = 'https://radiolab.org/favicon.ico'
                }
            )
            'Editorials' = @(
                @{
                    'Title' = 'Economist Editorials'
                    'URL' = 'https://www.economist.com/leaders'
                    'Icon' = 'https://www.economist.com/favicon.ico'
                },
                @{
                    'Title' = 'Foreign Affairs'
                    'URL' = 'https://www.foreignaffairs.com/editorials'
                    'Icon' = 'https://www.foreignaffairs.com/favicon.ico'
                },
                @{
                    'Title' = 'National Review Editorials'
                    'URL' = 'https://www.nationalreview.com/the-corner/'
                    'Icon' = 'https://www.nationalreview.com/favicon.ico'
                },
                @{
                    'Title' = 'New Republic'
                    'URL' = 'https://newrepublic.com/section/politics/editorials'
                    'Icon' = 'https://newrepublic.com/favicon.ico'
                },
                @{
                    'Title' = 'American Prospect'
                    'URL' = 'https://prospect.org/editorials/'
                    'Icon' = 'https://prospect.org/favicon.ico'
                },
                @{
                    'Title' = 'Dissent Magazine'
                    'URL' = 'https://www.dissentmagazine.org/editorials'
                    'Icon' = 'https://www.dissentmagazine.org/favicon.ico'
                },
                @{
                    'Title' = 'Commentary Magazine'
                    'URL' = 'https://www.commentary.org/editorials/'
                    'Icon' = 'https://www.commentary.org/favicon.ico'
                },
                @{
                    'Title' = 'The American Conservative'
                    'URL' = 'https://www.theamericanconservative.com/editorials/'
                    'Icon' = 'https://www.theamericanconservative.com/favicon.ico'
                }
            )
            'Columns' = @(
                @{
                    'Title' = 'NYT Opinion'
                    'URL' = 'https://www.nytimes.com/section/opinion'
                    'Icon' = 'https://www.nytimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Washington Post Opinions'
                    'URL' = 'https://www.washingtonpost.com/opinions/'
                    'Icon' = 'https://www.washingtonpost.com/favicon.ico'
                },
                @{
                    'Title' = 'Guardian Comment'
                    'URL' = 'https://www.theguardian.com/commentisfree'
                    'Icon' = 'https://www.theguardian.com/favicon.ico'
                },
                @{
                    'Title' = 'Wall Street Journal Opinion'
                    'URL' = 'https://www.wsj.com/news/opinion'
                    'Icon' = 'https://www.wsj.com/favicon.ico'
                },
                @{
                    'Title' = 'Chicago Tribune Opinion'
                    'URL' = 'https://www.chicagotribune.com/opinion/'
                    'Icon' = 'https://www.chicagotribune.com/favicon.ico'
                },
                @{
                    'Title' = 'LA Times Opinion'
                    'URL' = 'https://www.latimes.com/opinion'
                    'Icon' = 'https://www.latimes.com/favicon.ico'
                },
                @{
                    'Title' = 'Boston Globe Opinion'
                    'URL' = 'https://www.bostonglobe.com/opinion/'
                    'Icon' = 'https://www.bostonglobe.com/favicon.ico'
                },
                @{
                    'Title' = 'Atlantic Ideas'
                    'URL' = 'https://www.theatlantic.com/ideas/'
                    'Icon' = 'https://www.theatlantic.com/favicon.ico'
                }
            )
            'Blogs' = @(
                @{
                    'Title' = 'Crooked Timber'
                    'URL' = 'https://crookedtimber.org/'
                    'Icon' = 'https://crookedtimber.org/favicon.ico'
                },
                @{
                    'Title' = 'Marginal Revolution'
                    'URL' = 'https://marginalrevolution.com/'
                    'Icon' = 'https://marginalrevolution.com/favicon.ico'
                },
                @{
                    'Title' = 'EconLog'
                    'URL' = 'https://www.econlib.org/blog/'
                    'Icon' = 'https://www.econlib.org/favicon.ico'
                },
                @{
                    'Title' = 'Volokh Conspiracy'
                    'URL' = 'https://reason.com/volokh/'
                    'Icon' = 'https://reason.com/favicon.ico'
                },
                @{
                    'Title' = 'Instapundit'
                    'URL' = 'https://pjmedia.com/instapundit/'
                    'Icon' = 'https://pjmedia.com/favicon.ico'
                },
                @{
                    'Title' = 'SullyDish'
                    'URL' = 'https://www.thedish.substack.com/'
                    'Icon' = 'https://www.thedish.substack.com/favicon.ico'
                },
                @{
                    'Title' = 'Bari Weiss Free Press'
                    'URL' = 'https://www.thefp.com/'
                    'Icon' = 'https://www.thefp.com/favicon.ico'
                },
                @{
                    'Title' = 'Matt Yglesias Slow Boring'
                    'URL' = 'https://www.slowboring.com/'
                    'Icon' = 'https://www.slowboring.com/favicon.ico'
                }
            )
        }
        'Science and Technology' = @{
            'Biotechnology' = @(
                @{
                    'Title' = 'Nature Biotechnology'
                    'URL' = 'https://www.nature.com/nbt/'
                    'Icon' = 'https://www.nature.com/favicon.ico'
                },
                @{
                    'Title' = 'BioTechniques'
                    'URL' = 'https://www.biotechniques.com/'
                    'Icon' = 'https://www.biotechniques.com/favicon.ico'
                },
                @{
                    'Title' = 'Synthetic Biology News'
                    'URL' = 'https://www.synbiobeta.com/news'
                    'Icon' = 'https://www.synbiobeta.com/favicon.ico'
                },
                @{
                    'Title' = 'GenomeWeb'
                    'URL' = 'https://www.genomeweb.com/'
                    'Icon' = 'https://www.genomeweb.com/favicon.ico'
                },
                @{
                    'Title' = 'Fierce Biotech'
                    'URL' = 'https://www.fiercebiotech.com/'
                    'Icon' = 'https://www.fiercebiotech.com/favicon.ico'
                },
                @{
                    'Title' = 'Lab Biotech'
                    'URL' = 'https://www.labiotech.eu/'
                    'Icon' = 'https://www.labiotech.eu/favicon.ico'
                },
                @{
                    'Title' = 'BioSpace Biotech'
                    'URL' = 'https://www.biospace.com/biotech'
                    'Icon' = 'https://www.biospace.com/favicon.ico'
                },
                @{
                    'Title' = 'The Scientist'
                    'URL' = 'https://www.the-scientist.com/'
                    'Icon' = 'https://www.the-scientist.com/favicon.ico'
                }
            )
            'Artificial Intelligence' = @(
                @{
                    'Title' = 'MIT Technology Review - AI'
                    'URL' = 'https://www.technologyreview.com/topic/artificial-intelligence/'
                    'Icon' = 'https://www.technologyreview.com/favicon.ico'
                },
                @{
                    'Title' = 'AI News - VentureBeat'
                    'URL' = 'https://venturebeat.com/category/ai/'
                    'Icon' = 'https://venturebeat.com/favicon.ico'
                },
                @{
                    'Title' = 'The Batch - DeepLearning.AI'
                    'URL' = 'https://www.deeplearning.ai/the-batch/'
                    'Icon' = 'https://www.deeplearning.ai/favicon.ico'
                },
                @{
                    'Title' = 'Synced Review'
                    'URL' = 'https://syncedreview.com/'
                    'Icon' = 'https://syncedreview.com/favicon.ico'
                },
                @{
                    'Title' = 'AI Trends'
                    'URL' = 'https://www.aitrends.com/'
                    'Icon' = 'https://www.aitrends.com/favicon.ico'
                },
                @{
                    'Title' = 'Towards Data Science'
                    'URL' = 'https://towardsdatascience.com/'
                    'Icon' = 'https://towardsdatascience.com/favicon.ico'
                },
                @{
                    'Title' = 'Machine Learning Mastery'
                    'URL' = 'https://machinelearningmastery.com/blog/'
                    'Icon' = 'https://machinelearningmastery.com/favicon.ico'
                },
                @{
                    'Title' = 'KDnuggets'
                    'URL' = 'https://www.kdnuggets.com/'
                    'Icon' = 'https://www.kdnuggets.com/favicon.ico'
                }
            )
            'Space Exploration' = @(
                @{
                    'Title' = 'Space.com'
                    'URL' = 'https://www.space.com/'
                    'Icon' = 'https://www.space.com/favicon.ico'
                },
                @{
                    'Title' = 'NASA News'
                    'URL' = 'https://www.nasa.gov/news/all-news/'
                    'Icon' = 'https://www.nasa.gov/favicon.ico'
                },
                @{
                    'Title' = 'Universe Today'
                    'URL' = 'https://www.universetoday.com/'
                    'Icon' = 'https://www.universetoday.com/favicon.ico'
                },
                @{
                    'Title' = 'The Planetary Society'
                    'URL' = 'https://www.planetary.org/articles'
                    'Icon' = 'https://www.planetary.org/favicon.ico'
                },
                @{
                    'Title' = 'Ars Technica - Space'
                    'URL' = 'https://arstechnica.com/science/space/'
                    'Icon' = 'https://arstechnica.com/favicon.ico'
                },
                @{
                    'Title' = 'Sky & Telescope'
                    'URL' = 'https://skyandtelescope.org/news/'
                    'Icon' = 'https://skyandtelescope.org/favicon.ico'
                },
                @{
                    'Title' = 'Centauri Dreams'
                    'URL' = 'https://www.centauri-dreams.org/'
                    'Icon' = 'https://www.centauri-dreams.org/favicon.ico'
                },
                @{
                    'Title' = 'NextBigFuture - Space'
                    'URL' = 'https://www.nextbigfuture.com/category/space/'
                    'Icon' = 'https://www.nextbigfuture.com/favicon.ico'
                }
            )
            'Gadgets and Consumer Tech' = @(
                @{
                    'Title' = 'The Verge'
                    'URL' = 'https://www.theverge.com/'
                    'Icon' = 'https://www.theverge.com/favicon.ico'
                },
                @{
                    'Title' = 'Gizmodo'
                    'URL' = 'https://gizmodo.com/'
                    'Icon' = 'https://gizmodo.com/favicon.ico'
                },
                @{
                    'Title' = 'TechRadar'
                    'URL' = 'https://www.techradar.com/news'
                    'Icon' = 'https://www.techradar.com/favicon.ico'
                },
                @{
                    'Title' = 'CNET Tech News'
                    'URL' = 'https://www.cnet.com/tech/'
                    'Icon' = 'https://www.cnet.com/favicon.ico'
                },
                @{
                    'Title' = 'Tom''s Guide'
                    'URL' = 'https://www.tomsguide.com/news'
                    'Icon' = 'https://www.tomsguide.com/favicon.ico'
                },
                @{
                    'Title' = 'Android Authority'
                    'URL' = 'https://www.androidauthority.com/'
                    'Icon' = 'https://www.androidauthority.com/favicon.ico'
                },
                @{
                    'Title' = 'iMore'
                    'URL' = 'https://www.imore.com/'
                    'Icon' = 'https://www.imore.com/favicon.ico'
                },
                @{
                    'Title' = '9to5Mac'
                    'URL' = 'https://9to5mac.com/'
                    'Icon' = 'https://9to5mac.com/favicon.ico'
                }
            )
        }
        'Health and Wellness' = @{
            'Alternative Medicine' = @(
                @{
                    'Title' = 'Natural News'
                    'URL' = 'https://www.naturalnews.com/'
                    'Icon' = 'https://www.naturalnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Mercola'
                    'URL' = 'https://articles.mercola.com/'
                    'Icon' = 'https://articles.mercola.com/favicon.ico'
                },
                @{
                    'Title' = 'WholeFoods Magazine'
                    'URL' = 'https://wholefoodsmagazine.com/'
                    'Icon' = 'https://wholefoodsmagazine.com/favicon.ico'
                },
                @{
                    'Title' = 'Integrative Medicine News'
                    'URL' = 'https://www.ncbi.nlm.nih.gov/pmc/journals/1550/'
                    'Icon' = 'https://www.ncbi.nlm.nih.gov/favicon.ico'
                },
                @{
                    'Title' = 'Acupuncture Today'
                    'URL' = 'https://www.acupuncturetoday.com/'
                    'Icon' = 'https://www.acupuncturetoday.com/favicon.ico'
                },
                @{
                    'Title' = 'Chiropractic Economics'
                    'URL' = 'https://www.chiroeco.com/'
                    'Icon' = 'https://www.chiroeco.com/favicon.ico'
                },
                @{
                    'Title' = 'HerbalGram'
                    'URL' = 'https://www.herbalgram.org/'
                    'Icon' = 'https://www.herbalgram.org/favicon.ico'
                },
                @{
                    'Title' = 'Bastyr University Blog'
                    'URL' = 'https://bastyr.edu/news/blog'
                    'Icon' = 'https://bastyr.edu/favicon.ico'
                }
            )
            'Medical News' = @(
                @{
                    'Title' = 'MedPage Today'
                    'URL' = 'https://www.medpagetoday.com/'
                    'Icon' = 'https://www.medpagetoday.com/favicon.ico'
                },
                @{
                    'Title' = 'STAT News'
                    'URL' = 'https://www.statnews.com/'
                    'Icon' = 'https://www.statnews.com/favicon.ico'
                },
                @{
                    'Title' = 'Healthline'
                    'URL' = 'https://www.healthline.com/health-news'
                    'Icon' = 'https://www.healthline.com/favicon.ico'
                },
                @{
                    'Title' = 'WebMD Health News'
                    'URL' = 'https://www.webmd.com/news/default.htm'
                    'Icon' = 'https://www.webmd.com/favicon.ico'
                },
                @{
                    'Title' = 'NIH News in Health'
                    'URL' = 'https://newsinhealth.nih.gov/'
                    'Icon' = 'https://newsinhealth.nih.gov/favicon.ico'
                },
                @{
                    'Title' = 'JAMA Network'
                    'URL' = 'https://jamanetwork.com/journals/jama'
                    'Icon' = 'https://jamanetwork.com/favicon.ico'
                },
                @{
                    'Title' = 'NEJM'
                    'URL' = 'https://www.nejm.org/news'
                    'Icon' = 'https://www.nejm.org/favicon.ico'
                },
                @{
                    'Title' = 'BMJ News'
                    'URL' = 'https://www.bmj.com/news'
                    'Icon' = 'https://www.bmj.com/favicon.ico'
                }
            )
            'Fitness and Nutrition' = @(
                @{
                    'Title' = 'Men''s Health'
                    'URL' = 'https://www.menshealth.com/fitness/'
                    'Icon' = 'https://www.menshealth.com/favicon.ico'
                },
                @{
                    'Title' = 'Women''s Health'
                    'URL' = 'https://www.womenshealthmag.com/fitness/'
                    'Icon' = 'https://www.womenshealthmag.com/favicon.ico'
                },
                @{
                    'Title' = 'Runner''s World'
                    'URL' = 'https://www.runnersworld.com/'
                    'Icon' = 'https://www.runnersworld.com/favicon.ico'
                },
                @{
                    'Title' = 'Shape Magazine'
                    'URL' = 'https://www.shape.com/'
                    'Icon' = 'https://www.shape.com/favicon.ico'
                },
                @{
                    'Title' = 'EatingWell'
                    'URL' = 'https://www.eatingwell.com/'
                    'Icon' = 'https://www.eatingwell.com/favicon.ico'
                },
                @{
                    'Title' = 'NutritionFacts.org'
                    'URL' = 'https://nutritionfacts.org/blog/'
                    'Icon' = 'https://nutritionfacts.org/favicon.ico'
                },
                @{
                    'Title' = 'ACE Fitness'
                    'URL' = 'https://www.acefitness.org/resources/pros/expert-articles/'
                    'Icon' = 'https://www.acefitness.org/favicon.ico'
                },
                @{
                    'Title' = 'MyFitnessPal Blog'
                    'URL' = 'https://blog.myfitnesspal.com/'
                    'Icon' = 'https://blog.myfitnesspal.com/favicon.ico'
                }
            )
            'Mental Health' = @(
                @{
                    'Title' = 'Psychology Today'
                    'URL' = 'https://www.psychologytoday.com/us/blog'
                    'Icon' = 'https://www.psychologytoday.com/favicon.ico'
                },
                @{
                    'Title' = 'NAMI Blog'
                    'URL' = 'https://www.nami.org/Blogs'
                    'Icon' = 'https://www.nami.org/favicon.ico'
                },
                @{
                    'Title' = 'Mental Health America'
                    'URL' = 'https://mhanational.org/blog'
                    'Icon' = 'https://mhanational.org/favicon.ico'
                },
                @{
                    'Title' = 'The Mighty'
                    'URL' = 'https://themighty.com/topic/mental-health/'
                    'Icon' = 'https://themighty.com/favicon.ico'
                },
                @{
                    'Title' = 'Verywell Mind'
                    'URL' = 'https://www.verywellmind.com/'
                    'Icon' = 'https://www.verywellmind.com/favicon.ico'
                },
                @{
                    'Title' = 'Mindful'
                    'URL' = 'https://www.mindful.org/'
                    'Icon' = 'https://www.mindful.org/favicon.ico'
                },
                @{
                    'Title' = 'Psych Central'
                    'URL' = 'https://psychcentral.com/blog'
                    'Icon' = 'https://psychcentral.com/favicon.ico'
                },
                @{
                    'Title' = 'Healthline Mental Health'
                    'URL' = 'https://www.healthline.com/health/mental-health'
                    'Icon' = 'https://www.healthline.com/favicon.ico'
                }
            )
        }
        'Environment and Climate' = @{
            'Renewable Energy' = @(
                @{
                    'Title' = 'Renewable Energy World'
                    'URL' = 'https://www.renewableenergyworld.com/'
                    'Icon' = 'https://www.renewableenergyworld.com/favicon.ico'
                },
                @{
                    'Title' = 'pv magazine'
                    'URL' = 'https://www.pv-magazine.com/'
                    'Icon' = 'https://www.pv-magazine.com/favicon.ico'
                },
                @{
                    'Title' = 'CleanTechnica'
                    'URL' = 'https://cleantechnica.com/'
                    'Icon' = 'https://cleantechnica.com/favicon.ico'
                },
                @{
                    'Title' = 'Electrek'
                    'URL' = 'https://electrek.co/'
                    'Icon' = 'https://electrek.co/favicon.ico'
                },
                @{
                    'Title' = 'GreenBiz'
                    'URL' = 'https://www.greenbiz.com/'
                    'Icon' = 'https://www.greenbiz.com/favicon.ico'
                },
                @{
                    'Title' = 'Sustainable Brands'
                    'URL' = 'https://www.sustainablebrands.com/news'
                    'Icon' = 'https://www.sustainablebrands.com/favicon.ico'
                },
                @{
                    'Title' = 'Energy Digital'
                    'URL' = 'https://energydigital.com/'
                    'Icon' = 'https://energydigital.com/favicon.ico'
                },
                @{
                    'Title' = 'IRENA News'
                    'URL' = 'https://www.irena.org/news'
                    'Icon' = 'https://www.irena.org/favicon.ico'
                }
            )
            'Wildlife' = @(
                @{
                    'Title' = 'National Wildlife Federation Blog'
                    'URL' = 'https://blog.nwf.org/'
                    'Icon' = 'https://blog.nwf.org/favicon.ico'
                },
                @{
                    'Title' = 'Audubon'
                    'URL' = 'https://www.audubon.org/news'
                    'Icon' = 'https://www.audubon.org/favicon.ico'
                },
                @{
                    'Title' = 'Smithsonian Wildlife'
                    'URL' = 'https://www.smithsonianmag.com/science-nature/category/wildlife/'
                    'Icon' = 'https://www.smithsonianmag.com/favicon.ico'
                },
                @{
                    'Title' = 'Wildlife Conservation Society'
                    'URL' = 'https://newsroom.wcs.org/'
                    'Icon' = 'https://newsroom.wcs.org/favicon.ico'
                },
                @{
                    'Title' = 'Defenders of Wildlife'
                    'URL' = 'https://defenders.org/news'
                    'Icon' = 'https://defenders.org/favicon.ico'
                },
                @{
                    'Title' = 'Animal Planet Blog'
                    'URL' = 'https://blogs.discovery.com/animal-news/'
                    'Icon' = 'https://blogs.discovery.com/favicon.ico'
                },
                @{
                    'Title' = 'IUCN News'
                    'URL' = 'https://iucn.org/news'
                    'Icon' = 'https://iucn.org/favicon.ico'
                },
                @{
                    'Title' = 'Wildlife Society'
                    'URL' = 'https://wildlife.org/news/'
                    'Icon' = 'https://wildlife.org/favicon.ico'
                }
            )
            'Climate Change' = @(
                @{
                    'Title' = 'Yale Climate Connections'
                    'URL' = 'https://yaleclimateconnections.org/'
                    'Icon' = 'https://yaleclimateconnections.org/favicon.ico'
                },
                @{
                    'Title' = 'Climate Central'
                    'URL' = 'https://www.climatecentral.org/news'
                    'Icon' = 'https://www.climatecentral.org/favicon.ico'
                },
                @{
                    'Title' = 'Inside Climate News'
                    'URL' = 'https://insideclimatenews.org/'
                    'Icon' = 'https://insideclimatenews.org/favicon.ico'
                },
                @{
                    'Title' = 'The Guardian Environment'
                    'URL' = 'https://www.theguardian.com/environment/climate-crisis'
                    'Icon' = 'https://www.theguardian.com/favicon.ico'
                },
                @{
                    'Title' = 'Carbon Brief'
                    'URL' = 'https://www.carbonbrief.org/'
                    'Icon' = 'https://www.carbonbrief.org/favicon.ico'
                },
                @{
                    'Title' = 'RealClimate'
                    'URL' = 'http://www.realclimate.org/'
                    'Icon' = 'http://www.realclimate.org/favicon.ico'
                },
                @{
                    'Title' = 'Skeptical Science'
                    'URL' = 'https://skepticalscience.com/'
                    'Icon' = 'https://skepticalscience.com/favicon.ico'
                },
                @{
                    'Title' = 'Climate Feedback'
                    'URL' = 'https://climatefeedback.org/'
                    'Icon' = 'https://climatefeedback.org/favicon.ico'
                }
            )
            'Conservation' = @(
                @{
                    'Title' = 'Mongabay'
                    'URL' = 'https://news.mongabay.com/'
                    'Icon' = 'https://news.mongabay.com/favicon.ico'
                },
                @{
                    'Title' = 'Conservation International'
                    'URL' = 'https://www.conservation.org/news'
                    'Icon' = 'https://www.conservation.org/favicon.ico'
                },
                @{
                    'Title' = 'WWF News'
                    'URL' = 'https://www.worldwildlife.org/pages/press-releases'
                    'Icon' = 'https://www.worldwildlife.org/favicon.ico'
                },
                @{
                    'Title' = 'National Geographic Conservation'
                    'URL' = 'https://www.nationalgeographic.com/environment/article/conservation'
                    'Icon' = 'https://www.nationalgeographic.com/favicon.ico'
                },
                @{
                    'Title' = 'The Revelator'
                    'URL' = 'https://therevelator.org/'
                    'Icon' = 'https://therevelator.org/favicon.ico'
                },
                @{
                    'Title' = 'BioScience'
                    'URL' = 'https://academic.oup.com/bioscience/pages/news'
                    'Icon' = 'https://academic.oup.com/favicon.ico'
                },
                @{
                    'Title' = 'Endangered Species International'
                    'URL' = 'https://www.endangeredspeciesinternational.org/news.html'
                    'Icon' = 'https://www.endangeredspeciesinternational.org/favicon.ico'
                },
                @{
                    'Title' = 'Conservation Biology'
                    'URL' = 'https://conbio.onlinelibrary.wiley.com/journal/15231739'
                    'Icon' = 'https://conbio.onlinelibrary.wiley.com/favicon.ico'
                }
            )
        }
        'Arts and Leisure' = @{
            'Visual Arts' = @{
                'Painting and Sculpture' = @(
                    @{
                        'Title' = 'Artforum'
                        'URL' = 'https://www.artforum.com/'
                        'Icon' = 'https://www.artforum.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Art in America'
                        'URL' = 'https://www.artnews.com/'
                        'Icon' = 'https://www.artnews.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Hyperallergic'
                        'URL' = 'https://hyperallergic.com/'
                        'Icon' = 'https://hyperallergic.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Frieze'
                        'URL' = 'https://www.frieze.com/'
                        'Icon' = 'https://www.frieze.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Contemporary Art Daily'
                        'URL' = 'http://www.contemporaryartdaily.com/'
                        'Icon' = 'http://www.contemporaryartdaily.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Two Coats of Paint'
                        'URL' = 'https://twocoats-ofpaint.com/'
                        'Icon' = 'https://twocoats-ofpaint.com/favicon.ico'
                    },
                    @{
                        'Title' = 'The Art Newspaper'
                        'URL' = 'https://www.theartnewspaper.com/'
                        'Icon' = 'https://www.theartnewspaper.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Artsy'
                        'URL' = 'https://www.artsy.net/news'
                        'Icon' = 'https://www.artsy.net/favicon.ico'
                    }
                )
                'Photography' = @(
                    @{
                        'Title' = 'Aperture'
                        'URL' = 'https://aperture.org/editorial'
                        'Icon' = 'https://aperture.org/favicon.ico'
                    },
                    @{
                        'Title' = 'LensCulture'
                        'URL' = 'https://www.lensculture.com/articles'
                        'Icon' = 'https://www.lensculture.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Photo District News'
                        'URL' = 'https://www.pdnonline.com/'
                        'Icon' = 'https://www.pdnonline.com/favicon.ico'
                    },
                    @{
                        'Title' = 'British Journal of Photography'
                        'URL' = 'https://www.1854.photography/'
                        'Icon' = 'https://www.1854.photography/favicon.ico'
                    },
                    @{
                        'Title' = '500px Blog'
                        'URL' = 'https://iso.500px.com/'
                        'Icon' = 'https://500px.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Fstoppers'
                        'URL' = 'https://fstoppers.com/'
                        'Icon' = 'https://fstoppers.com/favicon.ico'
                    },
                    @{
                        'Title' = 'PetaPixel'
                        'URL' = 'https://petapixel.com/'
                        'Icon' = 'https://petapixel.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Digital Photography Review'
                        'URL' = 'https://www.dpreview.com/news'
                        'Icon' = 'https://www.dpreview.com/favicon.ico'
                    }
                )
            }
            'Film and Television' = @(
                @{
                    'Title' = 'Variety - The Business of Entertainment'
                    'URL' = 'https://variety.com/'
                    'Icon' = 'https://variety.com/favicon.ico'
                },
                @{
                    'Title' = 'Deadline Hollywood'
                    'URL' = 'https://deadline.com/'
                    'Icon' = 'https://deadline.com/favicon.ico'
                },
                @{
                    'Title' = 'The Hollywood Reporter'
                    'URL' = 'https://www.hollywoodreporter.com/'
                    'Icon' = 'https://www.hollywoodreporter.com/favicon.ico'
                },
                @{
                    'Title' = 'IndieWire'
                    'URL' = 'https://www.indiewire.com/'
                    'Icon' = 'https://www.indiewire.com/favicon.ico'
                },
                @{
                    'Title' = 'Screen Daily'
                    'URL' = 'https://www.screendaily.com/'
                    'Icon' = 'https://www.screendaily.com/favicon.ico'
                },
                @{
                    'Title' = 'Collider'
                    'URL' = 'https://collider.com/'
                    'Icon' = 'https://collider.com/favicon.ico'
                },
                @{
                    'Title' = 'Rotten Tomatoes News'
                    'URL' = 'https://editorial.rottentomatoes.com/news/'
                    'Icon' = 'https://www.rottentomatoes.com/favicon.ico'
                },
                @{
                    'Title' = 'Vulture'
                    'URL' = 'https://www.vulture.com/'
                    'Icon' = 'https://www.vulture.com/favicon.ico'
                }
            )
            'Music' = @{
                'Classical' = @(
                    @{
                        'Title' = 'Gramophone'
                        'URL' = 'https://www.gramophone.co.uk/'
                        'Icon' = 'https://www.gramophone.co.uk/favicon.ico'
                    },
                    @{
                        'Title' = 'BBC Music Magazine'
                        'URL' = 'https://www.classical-music.com/'
                        'Icon' = 'https://www.classical-music.com/favicon.ico'
                    },
                    @{
                        'Title' = 'The Strad'
                        'URL' = 'https://www.thestrad.com/'
                        'Icon' = 'https://www.thestrad.com/favicon.ico'
                    },
                    @{
                        'Title' = 'New York Classical Review'
                        'URL' = 'https://newyorkclassicalreview.com/'
                        'Icon' = 'https://newyorkclassicalreview.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Bachtrack'
                        'URL' = 'https://bachtrack.com/'
                        'Icon' = 'https://bachtrack.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Classical Music News - Limelight'
                        'URL' = 'https://www.limelightmagazine.com.au/news/'
                        'Icon' = 'https://www.limelightmagazine.com.au/favicon.ico'
                    },
                    @{
                        'Title' = 'Seen and Heard International'
                        'URL' = 'https://seenandheard-international.com/'
                        'Icon' = 'https://seenandheard-international.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Interlude'
                        'URL' = 'https://www.interlude.hk/'
                        'Icon' = 'https://www.interlude.hk/favicon.ico'
                    }
                )
                'Popular' = @(
                    @{
                        'Title' = 'Billboard'
                        'URL' = 'https://www.billboard.com/'
                        'Icon' = 'https://www.billboard.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Pitchfork'
                        'URL' = 'https://pitchfork.com/'
                        'Icon' = 'https://pitchfork.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Rolling Stone'
                        'URL' = 'https://www.rollingstone.com/'
                        'Icon' = 'https://www.rollingstone.com/favicon.ico'
                    },
                    @{
                        'Title' = 'NME'
                        'URL' = 'https://www.nme.com/'
                        'Icon' = 'https://www.nme.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Stereogum'
                        'URL' = 'https://www.stereogum.com/'
                        'Icon' = 'https://www.stereogum.com/favicon.ico'
                    },
                    @{
                        'Title' = 'Consequence'
                        'URL' = 'https://consequence.net/'
                        'Icon' = 'https://consequence.net/favicon.ico'
                    },
                    @{
                        'Title' = 'Spin'
                        'URL' = 'https://www.spin.com/'
                        'Icon' = 'https://www.spin.com/favicon.ico'
                    },
                    @{
                        'Title' = 'The Fader'
                        'URL' = 'https://www.thefader.com/'
                        'Icon' = 'https://www.thefader.com/favicon.ico'
                    }
                )
            }
            'Dance' = @(
                @{
                    'Title' = 'Dance Magazine'
                    'URL' = 'https://dancemagazine.com/'
                    'Icon' = 'https://dancemagazine.com/favicon.ico'
                },
                @{
                    'Title' = 'Point Magazine'
                    'URL' = 'https://pointemagazine.com/'
                    'Icon' = 'https://pointemagazine.com/favicon.ico'
                },
                @{
                    'Title' = 'Dance/USA'
                    'URL' = 'https://www.danceusa.org/news-resources'
                    'Icon' = 'https://www.danceusa.org/favicon.ico'
                },
                @{
                    'Title' = 'The Dance Current'
                    'URL' = 'https://thedancecurrent.com/'
                    'Icon' = 'https://thedancecurrent.com/favicon.ico'
                },
                @{
                    'Title' = 'Bachtrack Dance'
                    'URL' = 'https://bachtrack.com/dance'
                    'Icon' = 'https://bachtrack.com/favicon.ico'
                },
                @{
                    'Title' = 'Dance Europe'
                    'URL' = 'https://danceeurope.net/'
                    'Icon' = 'https://danceeurope.net/favicon.ico'
                },
                @{
                    'Title' = 'Seeing Dance'
                    'URL' = 'https://www.seeingdance.com/'
                    'Icon' = 'https://www.seeingdance.com/favicon.ico'
                },
                @{
                    'Title' = 'Infinite Body'
                    'URL' = 'https://infinitebody.blogspot.com/'
                    'Icon' = 'https://infinitebody.blogspot.com/favicon.ico'
                }
            )
            'Books and Literature' = @(
                @{
                    'Title' = 'The New York Review of Books'
                    'URL' = 'https://www.nybooks.com/'
                    'Icon' = 'https://www.nybooks.com/favicon.ico'
                },
                @{
                    'Title' = 'Literary Hub'
                    'URL' = 'https://lithub.com/'
                    'Icon' = 'https://lithub.com/favicon.ico'
                },
                @{
                    'Title' = 'The Paris Review'
                    'URL' = 'https://www.theparisreview.org/'
                    'Icon' = 'https://www.theparisreview.org/favicon.ico'
                },
                @{
                    'Title' = 'Book Riot'
                    'URL' = 'https://bookriot.com/'
                    'Icon' = 'https://bookriot.com/favicon.ico'
                },
                @{
                    'Title' = 'The Millions'
                    'URL' = 'https://themillions.com/'
                    'Icon' = 'https://themillions.com/favicon.ico'
                },
                @{
                    'Title' = 'Electric Literature'
                    'URL' = 'https://electricliterature.com/'
                    'Icon' = 'https://electricliterature.com/favicon.ico'
                },
                @{
                    'Title' = 'Kirkus Reviews'
                    'URL' = 'https://www.kirkusreviews.com/'
                    'Icon' = 'https://www.kirkusreviews.com/favicon.ico'
                },
                @{
                    'Title' = 'Publishers Weekly'
                    'URL' = 'https://www.publishersweekly.com/'
                    'Icon' = 'https://www.publishersweekly.com/favicon.ico'
                }
            )
            'Theater and Performing Arts' = @(
                @{
                    'Title' = 'Playbill'
                    'URL' = 'https://www.playbill.com/'
                    'Icon' = 'https://www.playbill.com/favicon.ico'
                },
                @{
                    'Title' = 'TheaterMania'
                    'URL' = 'https://www.theatermania.com/'
                    'Icon' = 'https://www.theatermania.com/favicon.ico'
                },
                @{
                    'Title' = 'Broadway World'
                    'URL' = 'https://www.broadwayworld.com/'
                    'Icon' = 'https://www.broadwayworld.com/favicon.ico'
                },
                @{
                    'Title' = 'American Theatre'
                    'URL' = 'https://www.americantheatre.org/'
                    'Icon' = 'https://www.americantheatre.org/favicon.ico'
                },
                @{
                    'Title' = 'The Stage'
                    'URL' = 'https://www.thestage.co.uk/'
                    'Icon' = 'https://www.thestage.co.uk/favicon.ico'
                },
                @{
                    'Title' = 'Drama League'
                    'URL' = 'https://dramaleague.org/news/'
                    'Icon' = 'https://dramaleague.org/favicon.ico'
                },
                @{
                    'Title' = 'Off-Off-Broadway'
                    'URL' = 'https://www.offoffbroadway.com/'
                    'Icon' = 'https://www.offoffbroadway.com/favicon.ico'
                },
                @{
                    'Title' = 'HowlRound'
                    'URL' = 'https://howlround.com/'
                    'Icon' = 'https://howlround.com/favicon.ico'
                }
            )
        }
    }
    '3D & CAD' = @{
        '3D Modeling' = @(
            @{
                'Title' = 'Blender - 3D Creation Suite'
                'URL' = 'https://www.blender.org/'
                'Icon' = 'https://www.blender.org/favicon.ico'
            },
            @{
                'Title' = 'FreeCAD - Parametric 3D Modeler'
                'URL' = 'https://www.freecad.org/'
                'Icon' = 'https://www.freecad.org/favicon.ico'
            }
        )
        'CAD' = @(
            @{
                'Title' = 'LibreCAD - 2D CAD'
                'URL' = 'https://librecad.org/'
                'Icon' = 'https://librecad.org/favicon.ico'
            }
        )
    }
    'AI' = @{
        'Dictation' = @(
            @{
                'Title' = 'dictation.io - Voice Dictation'
                'URL' = 'https://dictation.io/'
                'Icon' = 'https://dictation.io/favicon.ico'
            }
        )
        'AI Assistants' = @(
            @{
                'Title' = 'ChatGPT - OpenAI'
                'URL' = 'https://chatgpt.com/'
                'Icon' = 'https://chatgpt.com/favicon.ico'
            },
            @{
                'Title' = 'Grok - xAI'
                'URL' = 'https://x.ai/'
                'Icon' = 'https://x.ai/favicon.ico'
            },
            @{
                'Title' = 'Claude - Anthropic'
                'URL' = 'https://claude.ai/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=claude.ai'
            }
        )
    }
    'Audio Production' = @{
        'DAWs' = @(
            @{
                'Title' = 'Cakewalk by BandLab - Free DAW'
                'URL' = 'https://www.bandlab.com/products/cakewalk'
                'Icon' = 'https://www.bandlab.com/favicon.ico'
            },
            @{
                'Title' = 'LMMS - Music Production'
                'URL' = 'https://lmms.io/'
                'Icon' = 'https://lmms.io/favicon.ico'
            },
            @{
                'Title' = 'Reaper - Digital Audio Workstation'
                'URL' = 'https://www.reaper.fm/'
                'Icon' = 'https://www.reaper.fm/favicon.ico'
            }
        )
    }
    'Backup' = @{
        'Backup Tools' = @(
            @{
                'Title' = 'Veeam Agent FREE - Backup Solution'
                'URL' = 'https://www.veeam.com/windows-endpoint-server-backup-free.html'
                'Icon' = 'https://www.veeam.com/favicon.ico'
            },
            @{
                'Title' = 'Duplicati - Encrypted Backup'
                'URL' = 'https://www.duplicati.com/'
                'Icon' = 'https://www.duplicati.com/favicon.ico'
            },
            @{
                'Title' = 'FreeFileSync - File Synchronization'
                'URL' = 'https://freefilesync.org/'
                'Icon' = 'https://freefilesync.org/favicon.ico'
            }
        )
    }
    'Browsers' = @{
        'SearchEngines' = @(
            @{
                'Title' = 'myTech.Today - Tools 2025 Search Engines'
                'URL' = 'https://mytech.today/tools-2025/#search-engines'
                'Icon' = 'https://mytech.today/favicon.ico'
            },
            @{
                'Title' = 'DuckDuckGo - privacy-first search'
                'URL' = 'https://duckduckgo.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=duckduckgo.com'
            },
            @{
                'Title' = 'Google Image Search'
                'URL' = 'https://images.google.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=google.com'
            },
            @{
                'Title' = 'Internet Archive - Wayback Machine'
                'URL' = 'https://web.archive.org/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=web.archive.org'
            },
            @{
                'Title' = 'Archive.is - single-page snapshots'
                'URL' = 'https://archive.is/'
                'Icon' = 'https://archive.is/favicon.ico'
            },
            @{
                'Title' = 'grep.app - code search across repos'
                'URL' = 'https://grep.app/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=grep.app'
            },
            @{
                'Title' = 'NerdyData - search source code on the web'
                'URL' = 'https://nerdydata.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=nerdydata.com'
            },
            @{
                'Title' = 'Symptoma - symptom checker & medical search'
                'URL' = 'https://www.symptoma.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=symptoma.com'
            },
            @{
                'Title' = 'Apse.io - personal search engine'
                'URL' = 'https://apse.io/'
                'Icon' = 'https://www.google.com/s2/favicons?sz=64&domain=apse.io'
            },
            @{
                'Title' = 'Yippy - clustered metasearch'
                'URL' = 'https://yippy.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=yippy.com'
            },
            @{
                'Title' = 'Google search operators (42 advanced operators)'
                'URL' = 'https://www.imarketingonly.com/google-search-operators-the-complete-list-42-advanced-operators/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=imarketingonly.com'
            },
            @{
                'Title' = 'DuckDuckGo !bang operators'
                'URL' = 'https://duckduckgo.com/bang'
                'Icon' = 'https://www.google.com/s2/favicons?domain=duckduckgo.com'
            },
            @{
                'Title' = 'Browser market share statistics 2025'
                'URL' = 'https://gs.statcounter.com/browser-market-share'
                'Icon' = 'https://www.google.com/s2/favicons?domain=gs.statcounter.com'
            }
        )
        'News Updates' = @(
            @{
                'Title' = 'Biggest websites for news US: Top 50 updated each month'
                'URL' = 'https://pressgazette.co.uk/media-audience-and-business-data/media_metrics/most-popular-websites-news-us-monthly-3/'
                'Icon' = 'https://pressgazette.co.uk/favicon.ico'
            },
            @{
                'Title' = 'Top 10 best news sites and sources in 2025'
                'URL' = 'https://www.top10.com/news-websites'
                'Icon' = 'https://www.top10.com/favicon.ico'
            }
        )
        'Aggregators' = @(
            @{
                'Title' = '18 best web browsers 2025 - Efficient App'
                'URL' = 'https://efficient.app/best/browser'
                'Icon' = 'https://www.google.com/s2/favicons?domain=efficient.app'
            },
            @{
                'Title' = 'Best web browsers of 2025'
                'URL' = 'https://www.pcmag.com/picks/the-best-web-browsers'
                'Icon' = 'https://www.pcmag.com/apple-touch-icon.png'
            }
        )
    }
    'Chatbots' = @{
        'Resources' = @(
            @{
                'Title' = 'AI chat assistants comparison (search)'
                'URL' = 'https://www.google.com/search?q=ai+chat+assistant+comparison'
                'Icon' = 'https://www.google.com/s2/favicons?domain=google.com'
            },
            @{
                'Title' = 'Netus AI - AI chat assistants comparison'
                'URL' = 'https://netus.ai/'
                'Icon' = 'https://netus.ai/favicon.ico'
            },
            @{
                'Title' = 'Headliner - Podcast transcription, editing, and promotion tool'
                'URL' = 'https://eddy.headliner.app/'
                'Icon' = 'https://eddy.headliner.app/favicon.ico'
            },
            @{
                'Title' = 'Remail AI - AI email assistant'
                'URL' = 'https://app.remail.ai/'
                'Icon' = 'https://app.remail.ai/favicon.ico'
            }
        )
        'Assistants' = @(
            @{
                'Title' = 'ChatGPT web app'
                'URL' = 'https://chatgpt.com/'
                'Icon' = 'https://chatgpt.com/favicon.ico'
            },
            @{
                'Title' = 'Grok by xAI'
                'URL' = 'https://x.ai/'
                'Icon' = 'https://x.ai/favicon.ico'
            },
            @{
                'Title' = 'Google Gemini'
                'URL' = 'https://gemini.google.com/app'
                'Icon' = 'https://gemini.google.com/favicon.ico'
            },
            @{
                'Title' = 'Google NotebookLM'
                'URL' = 'https://notebook.ai/'
                'Icon' = 'https://notebook.ai/favicon.ico'
            },
            @{
                'Title' = 'Claude'
                'URL' = 'https://claude.ai/'
                'Icon' = 'https://claude.ai/favicon.ico'
            },
            @{
                'Title' = 'Consensus - AI chat assistant for research'
                'URL' = 'https://consensus.app/'
                'Icon' = 'https://consensus.app/favicon.ico'
            }
        )
    }
    'Cloud Storage' = @{
        'Resources' = @(
            @{
                'Title' = 'Comparison of online backup services - Wikipedia'
                'URL' = 'https://en.wikipedia.org/wiki/Comparison_of_online_backup_services'
                'Icon' = 'https://en.wikipedia.org/static/favicon/wikipedia.ico'
            }
        )
        'News Updates' = @(
            @{
                'Title' = 'Cloud storage news and updates (sample)'
                'URL' = 'https://www.google.com/search?q=cloud+storage+news'
                'Icon' = 'https://www.google.com/s2/favicons?domain=google.com'
            }
        )
    }
    'CodeAssist' = @{
        'Tools' = @(
            @{
                'Title' = 'GitHub Copilot'
                'URL' = 'https://github.com/features/copilot'
                'Icon' = 'https://github.com/favicon.ico'
            },
            @{
                'Title' = 'Cursor AI code editor'
                'URL' = 'https://cursor.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=cursor.com'
            },
            @{
                'Title' = 'Augment AI code editor'
                'URL' = 'https://www.augmentcode.com/'
                'Icon' = 'https://www.augmentcode.com/favicon.ico'
            }
        )
        'Resources' = @(
            @{
                'Title' = 'AI coding assistants comparison (search)'
                'URL' = 'https://www.google.com/search?q=ai+coding+assistant+comparison'
                'Icon' = 'https://www.google.com/s2/favicons?domain=google.com'
            }
        )
    }
    'Communication' = @{
        'Video Conferencing' = @(
            @{
                'Title' = 'Zoom'
                'URL' = 'https://zoom.us/'
                'Icon' = 'https://zoom.us/favicon.ico'
            },
            @{
                'Title' = 'Microsoft Teams'
                'URL' = 'https://www.microsoft.com/microsoft-teams/'
                'Icon' = 'https://www.microsoft.com/favicon.ico'
            }
        )
        'Email' = @(
            @{
                'Title' = 'Thunderbird - Email Client'
                'URL' = 'https://www.thunderbird.net/'
                'Icon' = 'https://www.thunderbird.net/favicon.ico'
            }
        )
        'Messaging' = @(
            @{
                'Title' = 'Discord - Voice and Chat'
                'URL' = 'https://discord.com/'
                'Icon' = 'https://discord.com/favicon.ico'
            },
            @{
                'Title' = 'Slack - Team Collaboration'
                'URL' = 'https://slack.com/'
                'Icon' = 'https://slack.com/favicon.ico'
            },
            @{
                'Title' = 'Signal - Private Messenger'
                'URL' = 'https://signal.org/'
                'Icon' = 'https://signal.org/favicon.ico'
            }
        )
    }
    'Development' = @{
        'Resources' = @(
            @{
                'Title' = 'Stack Overflow - Questions tagged programming'
                'URL' = 'https://stackoverflow.com/questions/tagged/programming'
                'Icon' = 'https://stackoverflow.com/favicon.ico'
            },
            @{
                'Title' = 'GitHub Explore - trending repositories 2025'
                'URL' = 'https://github.com/explore'
                'Icon' = 'https://github.githubassets.com/favicons/favicon.svg'
            }
        )
        'News Updates' = @(
            @{
                'Title' = 'The Register - Biting the hand that feeds IT'
                'URL' = 'https://www.theregister.com/'
                'Icon' = 'https://theregister.com/favicon.ico'
            },
            @{
                'Title' = 'Hacker News'
                'URL' = 'https://news.ycombinator.com/'
                'Icon' = 'https://ycombinator.com/favicon.ico'
            },
            @{
                'Title' = 'Toms Hardware - Helping you make the most of computer hardware since 1996'
                'URL' = 'https://www.tomshardware.com/news/'
                'Icon' = 'https://tomshardware.com/favicon.ico'
            }
        )
        'Reference & Catalogs' = @(
            @{
                'Title' = 'Ex-Googler dev tools (xg2xg) - Google-internal equivalents'
                'URL' = 'https://github.com/jhuangtw/xg2xg'
                'Icon' = 'https://www.google.com/s2/favicons?domain=github.com'
            }
        )
        'Web Dev & Prototyping' = @(
            @{
                'Title' = 'Glitch - instant web app builder'
                'URL' = 'https://glitch.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=glitch.com'
            },
            @{
                'Title' = 'JSFiddle - online HTML/CSS/JS playground'
                'URL' = 'https://jsfiddle.net/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=jsfiddle.net'
            }
        )
        'Testing, QA & Automation' = @(
            @{
                'Title' = 'Apache JMeter - load and performance testing'
                'URL' = 'https://jmeter.apache.org/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=jmeter.apache.org'
            },
            @{
                'Title' = 'BlazeMeter - cloud JMeter & performance testing'
                'URL' = 'https://www.blazemeter.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=blazemeter.com'
            },
            @{
                'Title' = 'LoadImpact (k6) - modern cloud load testing'
                'URL' = 'https://k6.io/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=k6.io'
            },
            @{
                'Title' = 'LoadRunner - enterprise load and performance testing'
                'URL' = 'https://www.microfocus.com/en-us/products/loadrunner-professional'
                'Icon' = 'https://www.google.com/s2/favicons?domain=microfocus.com'
            },
            @{
                'Title' = 'Appium - mobile app test automation'
                'URL' = 'https://appium.io/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=appium.io'
            },
            @{
                'Title' = 'Vagrant - reproducible dev environments'
                'URL' = 'https://developer.hashicorp.com/vagrant'
                'Icon' = 'https://www.google.com/s2/favicons?domain=hashicorp.com'
            },
            @{
                'Title' = 'RegistryChangesView - Windows registry change monitor'
                'URL' = 'https://www.nirsoft.net/utils/registry_changes_view.html'
                'Icon' = 'https://www.google.com/s2/favicons?domain=nirsoft.net'
            },
            @{
                'Title' = 'Semgrep - lightweight code scanning & SAST'
                'URL' = 'https://semgrep.dev/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=semgrep.dev'
            },
            @{
                'Title' = 'OneFuzz - Microsoft fuzzing service framework'
                'URL' = 'https://github.com/microsoft/onefuzz'
                'Icon' = 'https://www.google.com/s2/favicons?domain=github.com'
            },
            @{
                'Title' = 'QAReplay - smartest screen recorder for bug repro'
                'URL' = 'https://qareplay.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=qareplay.com'
            }
        )
        'Productivity & Notes' = @(
            @{
                'Title' = 'TakeNote - Markdown note-taking app (takenote.dev)'
                'URL' = 'https://takenote.dev/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=takenote.dev'
            }
        )
        'Dev Utilities & CLI' = @(
            @{
                'Title' = 'GNU Coreutils - essential command-line utilities'
                'URL' = 'https://www.gnu.org/software/coreutils/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=gnu.org'
            },
            @{
                'Title' = 'ZXing QR Code Generator'
                'URL' = 'https://zxing.org/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=zxing.org'
            },
            @{
                'Title' = 'regexr - interactive regex tester & cheat sheet'
                'URL' = 'https://regexr.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=regexr.com'
            },
            @{
                'Title' = 'GOMP - Git cOMPare branch diff tool'
                'URL' = 'https://github.com/MarkForged/GOMP'
                'Icon' = 'https://www.google.com/s2/favicons?domain=github.com'
            },
            @{
                'Title' = 'gron - make JSON greppable for CLI workflows'
                'URL' = 'https://github.com/tomnomnom/gron'
                'Icon' = 'https://www.google.com/s2/favicons?domain=github.com'
            },
            @{
                'Title' = 'Refined GitHub - UI and UX improvements (extension)'
                'URL' = 'https://github.com/refined-github/refined-github'
                'Icon' = 'https://www.google.com/s2/favicons?domain=github.com'
            }
        )
        'Data, ML & Analytics' = @(
            @{
                'Title' = 'TensorFlow - end-to-end open-source machine learning'
                'URL' = 'https://www.tensorflow.org/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=tensorflow.org'
            },
            @{
                'Title' = 'Datafold - data quality & comparison for SQL DBs'
                'URL' = 'https://datafold.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=datafold.com'
            },
            @{
                'Title' = 'Streamlit - Python framework for data apps'
                'URL' = 'https://streamlit.io/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=streamlit.io'
            }
        )
        'IDEs & Editors' = @(
            @{
                'Title' = 'Visual Studio 2022 Community - full-featured IDE'
                'URL' = 'https://visualstudio.microsoft.com/vs/community/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=visualstudio.microsoft.com'
            },
            @{
                'Title' = 'Visual Studio Code - free, cross-platform editor'
                'URL' = 'https://code.visualstudio.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=code.visualstudio.com'
            },
            @{
                'Title' = 'JetBrains - IDEs and developer tools suite'
                'URL' = 'https://www.jetbrains.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=jetbrains.com'
            },
            @{
                'Title' = 'PyCharm - Python IDE by JetBrains'
                'URL' = 'https://www.jetbrains.com/pycharm/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=jetbrains.com'
            }
        )
    }
    'Education' = @{
        'Tools' = @(
            @{
                'Title' = 'Anki - Flashcard Learning'
                'URL' = 'https://apps.ankiweb.net/'
                'Icon' = 'https://apps.ankiweb.net/favicon.ico'
            },
            @{
                'Title' = 'GeoGebra - Math Software'
                'URL' = 'https://www.geogebra.org/'
                'Icon' = 'https://www.geogebra.org/favicon.ico'
            }
        )
        'Learning Platforms' = @(
            @{
                'Title' = 'Khan Academy - Free Education'
                'URL' = 'https://www.khanacademy.org/'
                'Icon' = 'https://www.khanacademy.org/favicon.ico'
            },
            @{
                'Title' = 'Coursera - Online Courses'
                'URL' = 'https://www.coursera.org/'
                'Icon' = 'https://www.coursera.org/favicon.ico'
            }
        )
    }
    'Finance' = @{
        'Resources' = @(
            @{
                'Title' = 'Personal Finance Software Comparison'
                'URL' = 'https://www.google.com/search?q=personal+finance+software+comparison'
                'Icon' = 'https://www.google.com/s2/favicons?domain=google.com'
            }
        )
        'Personal Finance' = @(
            @{
                'Title' = 'GnuCash - Accounting Software'
                'URL' = 'https://www.gnucash.org/'
                'Icon' = 'https://www.gnucash.org/favicon.ico'
            },
            @{
                'Title' = 'HomeBank - Finance Manager'
                'URL' = 'http://homebank.free.fr/'
                'Icon' = 'http://homebank.free.fr/favicon.ico'
            }
        )
    }
    'Gaming' = @{
        'Platforms' = @(
            @{
                'Title' = 'Steam - Digital Game Distribution'
                'URL' = 'https://store.steampowered.com/'
                'Icon' = 'https://store.steampowered.com/favicon.ico'
            },
            @{
                'Title' = 'Epic Games Store'
                'URL' = 'https://www.epicgames.com/store/'
                'Icon' = 'https://www.epicgames.com/favicon.ico'
            },
            @{
                'Title' = 'GOG - DRM-Free Games'
                'URL' = 'https://www.gog.com/'
                'Icon' = 'https://www.gog.com/favicon.ico'
            }
        )
        'Resources' = @(
            @{
                'Title' = 'PC Gaming Wiki'
                'URL' = 'https://www.pcgamingwiki.com/'
                'Icon' = 'https://www.pcgamingwiki.com/favicon.ico'
            }
        )
    }
    'Generative' = @{
        'Tools' = @(
            @{
                'Title' = 'OpenAI - ChatGPT and GPT models'
                'URL' = 'https://openai.com/'
                'Icon' = 'https://openai.com/favicon.ico'
            },
            @{
                'Title' = 'Perplexity AI - answer engine'
                'URL' = 'https://www.perplexity.ai/'
                'Icon' = 'https://www.perplexity.ai/favicon.ico'
            },
            @{
                'Title' = 'Final Round AI - Job Interview Prep'
                'URL' = 'https://www.finalroundai.com/'
                'Icon' = 'https://www.finalroundai.com/favicon.ico'
            },
            @{
                'Title' = 'Prototyper - Rapid app builder for designers and engineers'
                'URL' = 'https://www.prototyper.co/'
                'Icon' = 'https://www.prototyper.co/favicon.ico'
            },
            @{
                'Title' = 'Midpage AI - AI-powered legal research for litigators'
                'URL' = 'https://app.midpage.ai/'
                'Icon' = 'https://app.midpage.ai/favicon.ico'
            },
            @{
                'Title' = 'Theres an AI for That (TAAIFT) - AI tool directory for every task'
                'URL' = 'https://theresanaiforthat.com/'
                'Icon' = 'https://theresanaiforthat.com/favicon.ico'
            },
            @{
                'Title' = 'Taskade - AI-powered no-code app and workflow builder'
                'URL' = 'https://www.taskade.com/'
                'Icon' = 'https://www.taskade.com/favicon.ico'
            },
            @{
                'Title' = 'Hemingwayapp - Writing improvement and readability tool'
                'URL' = 'https://hemingwayapp.com/'
                'Icon' = 'https://hemingwayapp.com/favicon.ico'
            }
        )
        'Resources' = @(
            @{
                'Title' = 'Generative artificial intelligence - Wikipedia'
                'URL' = 'https://en.wikipedia.org/wiki/Generative_artificial_intelligence'
                'Icon' = 'https://en.wikipedia.org/static/favicon/wikipedia.ico'
            }
        )
    }
    'ImageGen' = @{
        'Tools' = @(
            @{
                'Title' = 'DALL-E image generation'
                'URL' = 'https://openai.com/dall-e-3'
                'Icon' = 'https://openai.com/favicon.ico'
            },
            @{
                'Title' = 'Midjourney (official site)'
                'URL' = 'https://www.midjourney.com/'
                'Icon' = 'https://www.midjourney.com/favicon.ico'
            },
            @{
                'Title' = 'Microsoft Bing Image Creator'
                'URL' = 'https://www.bing.com/images/create'
                'Icon' = 'https://www.bing.com/favicon.ico'
            },
            @{
                'Title' = 'dzine ai - AI image generator and editor'
                'URL' = 'https://www.dzine.ai/images/create'
                'Icon' = 'https://www.dzine.ai/favicon.ico'
            }
        )
        'Resources' = @(
            @{
                'Title' = 'Stable Diffusion web UIs (search)'
                'URL' = 'https://www.google.com/search?q=stable+diffusion+web+ui'
                'Icon' = 'https://www.google.com/s2/favicons?domain=google.com'
            }
        )
    }
    'Maintenance' = @{
        'Logs' = @(
            @{
                'Title' = 'Hosts File Manager Log'
                'URL' = 'file:///C:/Users/%USERNAME%/myTech.Today/logs/hosts.md'
                'Icon' = 'https://someonewhocares.org/favicon.ico'
            },
            @{
                'Title' = 'Manage Restore Points Log'
                'URL' = 'file:///C:/Users/%USERNAME%/myTech.Today/logs/Manage-RestorePoints.md'
                'Icon' = 'https://files.softicons.com/download/system-icons/windows-8-metro-invert-icons-by-dakirby309/ico/Folders%20&%20OS/System%20Restore.ico'
            },
            @{
                'Title' = 'O&O ShutUp10 Log'
                'URL' = 'file:///C:/Users/%USERNAME%/myTech.Today/logs/OOShutUp10.md'
                'Icon' = 'https://www.oo-software.com/favicon.ico'
            },
            @{
                'Title' = 'Responsive GUI Log'
                'URL' = 'file:///C:/Users/%USERNAME%/myTech.Today/logs/responsive.md'
                'Icon' = 'https://www.google.com/s2/favicons?domain=mytech.today'
            }
        )
        'System Maintenance' = @(
            @{
                'Title' = 'O&O ShutUp10 - Privacy Settings'
                'URL' = 'https://www.oo-software.com/en/shutup10'
                'Icon' = 'https://www.oo-software.com/favicon.ico'
            },
            @{
                'Title' = 'Manage Restore Points'
                'URL' = 'https://www.google.com/search?q=windows+system+restore+points'
                'Icon' = 'https://www.google.com/s2/favicons?domain=google.com'
            }
        )
    }
    'Media' = @{
        'Audio AI' = @(
            @{
                'Title' = 'speechify - Text to Speech'
                'URL' = 'https://speechify.com/'
                'Icon' = 'https://speechify.com/favicon.ico'
            },
            @{
                'Title' = 'Vocal Remover - Remove vocals from audio'
                'URL' = 'https://vocalremover.org/'
                'Icon' = 'https://vocalremover.org/favicon.ico'
            }
        )
        'Image Editing' = @(
            @{
                'Title' = 'GIMP - GNU Image Manipulation Program'
                'URL' = 'https://www.gimp.org/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=gimp.org'
            },
            @{
                'Title' = 'Paint.NET'
                'URL' = 'https://www.getpaint.net/'
                'Icon' = 'https://www.getpaint.net/favicon.ico'
            }
        )
        'Video Players' = @(
            @{
                'Title' = 'VLC Media Player'
                'URL' = 'https://www.videolan.org/vlc/'
                'Icon' = 'https://www.videolan.org/favicon.ico'
            },
            @{
                'Title' = 'MPC-HC - Media Player Classic'
                'URL' = 'https://mpc-hc.org/'
                'Icon' = 'https://mpc-hc.org/favicon.ico'
            }
        )
        'Audio Editing' = @(
            @{
                'Title' = 'Audacity - Free Audio Editor'
                'URL' = 'https://www.audacityteam.org/'
                'Icon' = 'https://www.audacityteam.org/favicon.ico'
            }
        )
    }
    'Media Downloading' = @{
        'News & Specialty Downloaders' = @(
            @{
                'Title' = 'Free Rumble Video Downloader HD Quality Fast'
                'URL' = 'https://pastedownload.com/rumble-video-downloader/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=pastedownload.com'
            },
            @{
                'Title' = 'Free Wsj Video Downloader HD Quality Fast'
                'URL' = 'https://pastedownload.com/wsj-video-downloader/#url=https://www.wsj.com/livecoverage/trump-rally-incident'
                'Icon' = 'https://www.google.com/s2/favicons?domain=pastedownload.com'
            },
            @{
                'Title' = 'Download video Sister Christian | FHD quality'
                'URL' = 'https://youtube4kdownloader.com/download/video/https%253A%252F%252Fopen.substack.com%252Fpub%252Fclifhigh%252Fp%252Fsister-christian%253Fr%253D17hzm3%2526utm_campaign%253Dpost%2526utm_medium%253Dweb'
                'Icon' = 'https://www.google.com/s2/favicons?domain=youtube4kdownloader.com'
            },
            @{
                'Title' = 'Download video New Cult on the Block | FHD quality'
                'URL' = 'https://save.tube/download/video/https%253A%252F%252Fclifhigh.substack.com%252Fp%252Fnew-cult-on-the-block%253Fpublication_id%253D681568%2526post_id%253D148369395%2526isFreemail%253Dtrue%2526r%253D17hzm3%2526triedRedirect%253Dtrue%2526utm_source%253Dsubstack%2526utm_medium%253Demail'
                'Icon' = 'https://www.google.com/s2/favicons?domain=save.tube'
            }
        )
        'File Converters' = @(
            @{
                'Title' = 'Convertio - File Converter'
                'URL' = 'https://convertio.co/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=convertio.co'
            },
            @{
                'Title' = 'Free File Converter Online - AnyConv'
                'URL' = 'https://anyconv.com/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=anyconv.com'
            },
            @{
                'Title' = 'Online OCR - FREE OCR PDF Document Scanner & Converter - Soda PDF'
                'URL' = 'https://www.sodapdf.com/ocr-pdf/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=sodapdf.com'
            }
        )
        'Social Media Downloaders' = @(
            @{
                'Title' = 'Twitter Video Downloader - Download twitter videos & GIF Online'
                'URL' = 'https://twittervideodownloader.com/'
                'Icon' = 'https://twittervideodownloader.com/favicon.ico'
            },
            @{
                'Title' = 'Instagram Downloader - Download Instagram Video, Reels, Story, Photo, IGTV online - Snapinsta'
                'URL' = 'https://snapinsta.app/'
                'Icon' = 'https://snapinsta.app/favicon.ico'
            },
            @{
                'Title' = 'Facebook Video Downloader Online - Download Facebook Videos'
                'URL' = 'https://fdown.net/'
                'Icon' = 'https://fdown.net/favicon.ico'
            }
        )
        'Video Downloaders' = @(
            @{
                'Title' = 'Free Online Video Downloader ( Ultra HD, HDR, 1080p, 4K, 8K )'
                'URL' = 'https://youtube4kdownloader.com/en80/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=youtube4kdownloader.com'
            },
            @{
                'Title' = 'Online Youtube 1080p video Downloader | Youtube4KDownloader'
                'URL' = 'https://youtube4kdownloader.com/en81/download-youtube-1080p-video.html'
                'Icon' = 'https://www.google.com/s2/favicons?domain=youtube4kdownloader.com'
            },
            @{
                'Title' = 'YouTube Private Video Downloader ( Ultra HD, 1080p, 4K, 8K )'
                'URL' = 'https://youtube4kdownloader.com/youtube-private-downloader.html'
                'Icon' = 'https://www.google.com/s2/favicons?domain=youtube4kdownloader.com'
            }
        )
    }
    'Mockups & Wireframe' = @{
        'Design Tools' = @(
            @{
                'Title' = 'Figma - Collaborative Design'
                'URL' = 'https://www.figma.com/'
                'Icon' = 'https://www.figma.com/favicon.ico'
            },
            @{
                'Title' = 'Draw.io - Diagramming Tool'
                'URL' = 'https://www.drawio.com/'
                'Icon' = 'https://www.drawio.com/favicon.ico'
            },
            @{
                'Title' = 'Penpot - Open Source Design'
                'URL' = 'https://penpot.app/'
                'Icon' = 'https://penpot.app/favicon.ico'
            }
        )
    }
    'Networking' = @{
        'Network Tools' = @(
            @{
                'Title' = 'Wireshark - Network Protocol Analyzer'
                'URL' = 'https://www.wireshark.org/'
                'Icon' = 'https://www.wireshark.org/favicon.ico'
            },
            @{
                'Title' = 'PuTTY - SSH Client'
                'URL' = 'https://www.putty.org/'
                'Icon' = 'https://www.putty.org/favicon.ico'
            },
            @{
                'Title' = 'Nmap - Network Scanner'
                'URL' = 'https://nmap.org/'
                'Icon' = 'https://nmap.org/favicon.ico'
            }
        )
    }
    'Productivity' = @{
        'PDF Tools' = @(
            @{
                'Title' = 'Adobe Acrobat Reader'
                'URL' = 'https://get.adobe.com/reader/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=adobe.com'
            },
            @{
                'Title' = 'Foxit PDF Reader'
                'URL' = 'https://www.foxit.com/pdf-reader/'
                'Icon' = 'https://www.foxit.com/favicon.ico'
            },
            @{
                'Title' = 'Smallpdf Free PDF Tools'
                'URL' = 'https://smallpdf.com/pdf-tools'
                'Icon' = 'https://smallpdf.com/favicon.ico'
            }
        )
        'Note-Taking' = @(
            @{
                'Title' = 'Obsidian - Knowledge Base'
                'URL' = 'https://obsidian.md/'
                'Icon' = 'https://obsidian.md/favicon.ico'
            },
            @{
                'Title' = 'Notion - All-in-one Workspace'
                'URL' = 'https://www.notion.so/'
                'Icon' = 'https://www.google.com/s2/favicons?domain=notion.so'
            },
            @{
                'Title' = 'Joplin - Open Source Notes'
                'URL' = 'https://joplinapp.org/'
                'Icon' = 'https://joplinapp.org/favicon.ico'
            }
        )
        'Office Suites' = @(
            @{
                'Title' = 'LibreOffice - Free Office Suite'
                'URL' = 'https://www.libreoffice.org/'
                'Icon' = 'https://www.libreoffice.org/favicon.ico'
            },
            @{
                'Title' = 'Apache OpenOffice'
                'URL' = 'https://www.openoffice.org/'
                'Icon' = 'https://www.openoffice.org/favicon.ico'
            }
        )
    }
    'Remote Access' = @{
        'Remote Desktop' = @(
            @{
                'Title' = 'TeamViewer - Remote Support'
                'URL' = 'https://www.teamviewer.com/'
                'Icon' = 'https://www.teamviewer.com/favicon.ico'
            },
            @{
                'Title' = 'AnyDesk - Remote Desktop'
                'URL' = 'https://anydesk.com/'
                'Icon' = 'https://anydesk.com/favicon.ico'
            },
            @{
                'Title' = 'RustDesk - Open Source Remote Desktop'
                'URL' = 'https://rustdesk.com/'
                'Icon' = 'https://rustdesk.com/favicon.ico'
            }
        )
    }
    'Runtime' = @{
        'Runtimes' = @(
            @{
                'Title' = 'Java Runtime Environment'
                'URL' = 'https://www.java.com/'
                'Icon' = 'https://www.java.com/favicon.ico'
            },
            @{
                'Title' = '.NET Desktop Runtime'
                'URL' = 'https://dotnet.microsoft.com/download/dotnet'
                'Icon' = 'https://dotnet.microsoft.com/favicon.ico'
            },
            @{
                'Title' = 'Visual C++ Redistributable'
                'URL' = 'https://learn.microsoft.com/cpp/windows/latest-supported-vc-redist'
                'Icon' = 'https://learn.microsoft.com/favicon.ico'
            }
        )
    }
    'Screen Recording' = @{
        'Screen Recorders' = @(
            @{
                'Title' = 'OBS Studio - Streaming and Recording'
                'URL' = 'https://obsproject.com/'
                'Icon' = 'https://obsproject.com/favicon.ico'
            },
            @{
                'Title' = 'ShareX - Screen Capture'
                'URL' = 'https://getsharex.com/'
                'Icon' = 'https://getsharex.com/favicon.ico'
            }
        )
    }
    'Security' = @{
        'Antivirus' = @(
            @{
                'Title' = 'Malwarebytes'
                'URL' = 'https://www.malwarebytes.com/'
                'Icon' = 'https://www.malwarebytes.com/favicon.ico'
            }
        )
        'Encryption' = @(
            @{
                'Title' = 'VeraCrypt - Disk Encryption'
                'URL' = 'https://www.veracrypt.fr/'
                'Icon' = 'https://www.veracrypt.fr/favicon.ico'
            }
        )
        'Password Managers' = @(
            @{
                'Title' = 'Bitwarden - Open Source Password Manager'
                'URL' = 'https://bitwarden.com/'
                'Icon' = 'https://bitwarden.com/favicon.ico'
            },
            @{
                'Title' = 'KeePass - Secure Password Database'
                'URL' = 'https://keepass.info/'
                'Icon' = 'https://keepass.info/favicon.ico'
            }
        )
    }
    'Shortcuts' = @{
        'Productivity Shortcuts' = @(
            @{
                'Title' = 'AutoHotkey - Automation Scripting'
                'URL' = 'https://www.autohotkey.com/'
                'Icon' = 'https://www.autohotkey.com/favicon.ico'
            },
            @{
                'Title' = 'PowerToys - Windows Utilities'
                'URL' = 'https://github.com/microsoft/PowerToys'
                'Icon' = 'https://github.com/favicon.ico'
            }
        )
    }
    'Social' = @{
        'Platforms' = @(
            @{
                'Title' = 'Mastodon - federated social network'
                'URL' = 'https://mastodon.social/'
                'Icon' = 'https://mastodon.social/favicon.ico'
            },
            @{
                'Title' = 'Reddit - front page of the internet'
                'URL' = 'https://www.reddit.com/'
                'Icon' = 'https://www.redditstatic.com/desktop2x/img/favicon/favicon-32x32.png'
            }
        )
        'Resources' = @(
            @{
                'Title' = 'Social media usage statistics 2025'
                'URL' = 'https://www.statista.com/topics/1164/social-media-usage-worldwide/'
                'Icon' = 'https://www.statista.com/favicon.ico'
            }
        )
    }
    'Utilities' = @{
        'Cleanup' = @(
            @{
                'Title' = 'CCleaner - System Cleaner'
                'URL' = 'https://www.ccleaner.com/'
                'Icon' = 'https://www.ccleaner.com/favicon.ico'
            },
            @{
                'Title' = 'BleachBit - Privacy Tool'
                'URL' = 'https://www.bleachbit.org/'
                'Icon' = 'https://www.bleachbit.org/favicon.ico'
            }
        )
        'Compression' = @(
            @{
                'Title' = '7-Zip - File Archiver'
                'URL' = 'https://www.7-zip.org/'
                'Icon' = 'https://www.7-zip.org/favicon.ico'
            }
        )
        'System Tools' = @(
            @{
                'Title' = 'PowerToys - Microsoft Utilities'
                'URL' = 'https://github.com/microsoft/PowerToys'
                'Icon' = 'https://github.com/favicon.ico'
            },
            @{
                'Title' = 'Everything - File Search'
                'URL' = 'https://www.voidtools.com/'
                'Icon' = 'https://www.voidtools.com/favicon.ico'
            }
        )
    }
    'Video Editing' = @{
        'Video Editors' = @(
            @{
                'Title' = 'DaVinci Resolve - Professional Video Editing'
                'URL' = 'https://www.blackmagicdesign.com/products/davinciresolve'
                'Icon' = 'https://www.blackmagicdesign.com/favicon.ico'
            },
            @{
                'Title' = 'Shotcut - Free Video Editor'
                'URL' = 'https://shotcut.org/'
                'Icon' = 'https://shotcut.org/favicon.ico'
            },
            @{
                'Title' = 'OpenShot - Easy Video Editor'
                'URL' = 'https://www.openshot.org/'
                'Icon' = 'https://www.openshot.org/favicon.ico'
            }
        )
    }
    'Writing' = @{
        'Screenwriting' = @(
            @{
                'Title' = 'Celtx - Screenwriting Software'
                'URL' = 'https://www.celtx.com/'
                'Icon' = 'https://www.celtx.com/favicon.ico'
            }
        )
        'Writing Tools' = @(
            @{
                'Title' = 'FocusWriter - Distraction-Free Writing'
                'URL' = 'https://gottcode.org/focuswriter/'
                'Icon' = 'https://gottcode.org/favicon.ico'
            },
            @{
                'Title' = 'Manuskript - Novel Writing'
                'URL' = 'https://www.theologeek.ch/manuskript/'
                'Icon' = 'https://www.theologeek.ch/favicon.ico'
            }
        )
    }
}
