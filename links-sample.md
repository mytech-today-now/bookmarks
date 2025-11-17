# Define current year dynamically
$CurrentYear = (Get-Date).Year

# Function to format bookmarks by replacing year placeholders
function Format-Bookmarks {
    param(
        [hashtable]$Bookmarks,
        [int]$Year
    )
    foreach ($Category in $Bookmarks.Keys) {
        foreach ($Node in $Bookmarks[$Category].Keys) {
            foreach ($Bookmark in $Bookmarks[$Category][$Node]) {
                $Bookmark.Title = $Bookmark.Title -replace '\b2025\b', $Year.ToString()
                if ($Bookmark.URL -match '\b2025\b') {
                    $Bookmark.URL = $Bookmark.URL -replace '\b2025\b', $Year.ToString()
                }
            }
        }
    }
    return $Bookmarks
}

$Bookmarks = @{
    'Browsers' = @{
        'NewsUpdates' = @(
            @{Title = "Biggest websites for news US: Top 50 updated each month"; URL = "https://pressgazette.co.uk/media-audience-and-business-data/media_metrics/most-popular-websites-news-us-monthly-3/"; Icon = "https://pressgazette.co.uk/favicon.ico"},
            @{Title = "Top 10 Best News Sites & Sources In 2025"; URL = "https://www.top10.com/news-websites"; Icon = "https://www.top10.com/favicon.ico"},
            @{Title = "100 Top Media Outlets for News Coverage in 2025"; URL = "https://prlab.co/blog/top-media-outlets-for-news-coverage/"; Icon = "https://prlab.co/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "18 Best Web Browsers 2025 - Efficient App"; URL = "https://efficient.app/best/browser"; Icon = "https://efficient.app/favicon.ico"},
            @{Title = "Beyond Chrome: The Best Alternative Web Browsers for 2025"; URL = "https://www.pcmag.com/picks/best-alternative-web-browsers"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The Best Web Browsers for 2025 - TechRadar"; URL = "https://www.techradar.com/best/browser"; Icon = "https://www.techradar.com/favicon.ico"},
            @{Title = "Browser Recommendation Megathread - January 2025 - Reddit"; URL = "https://www.reddit.com/r/browsers/comments/1hrr4lb/browser_recommendation_megathread_january_2025/"; Icon = "https://www.reddit.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "The Best Web Browser in 2025 | Magic Lasso Adblock"; URL = "https://www.magiclasso.co/insights/best-web-browser-2025/"; Icon = "https://www.magiclasso.co/favicon.ico"},
            @{Title = "Chrome, Edge, Firefox, Opera, or Safari: Which Browser Is Best in 2025"; URL = "https://www.pcmag.com/picks/chrome-edge-firefox-opera-or-safari-which-browser-is-best"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The Best Web Browsers for 2025 - TechRadar"; URL = "https://www.techradar.com/best/browser"; Icon = "https://www.techradar.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "Browser Market Share Worldwide | Statcounter Global Stats"; URL = "https://gs.statcounter.com/browser-market-share"; Icon = "https://gs.statcounter.com/favicon.ico"},
            @{Title = "Usage share of web browsers - Wikipedia"; URL = "https://en.wikipedia.org/wiki/Usage_share_of_web_browsers"; Icon = "https://en.wikipedia.org/favicon.ico"},
            @{Title = "Browser Market Share 2025 (Users & Growth Statistics) - Yaguara"; URL = "https://www.yaguara.co/browser-market-share/"; Icon = "https://www.yaguara.co/favicon.ico"},
            @{Title = "Web Browser Market Share: 85+ Browser Usage Statistics - Backlinko"; URL = "https://backlinko.com/browser-market-share"; Icon = "https://backlinko.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "Which browser should you use right now? - YouTube"; URL = "https://www.youtube.com/watch?v=m1QrNF9wZao"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "What is the Ultimate Web Browser in 2025!? - YouTube"; URL = "https://www.youtube.com/watch?v=1CpDtwMYh1k"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "The Complete Guide to Web Browsers in 2025: What's New"; URL = "https://portalzine.de/the-complete-guide-to-web-browsers-in-2025-whats-new-and-whats-next/"; Icon = "https://portalzine.de/favicon.ico"},
            @{Title = "THE COMPLETE USER GUIDE TO GOOGLE CHROME BROWSER 2025"; URL = "https://www.amazon.com/COMPLETE-GUIDE-GOOGLE-CHROME-BROWSER-ebook/dp/B0FRGJDZLR"; Icon = "https://www.amazon.com/favicon.ico"},
            @{Title = "Browser Guide (22nd March 2025) - Even more options - Reddit"; URL = "https://www.reddit.com/r/PurchaseWithPurpose/comments/1jh83yu/browser_guide_22nd_march_2025_even_more_options/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "How to Learn Web Development in 2025 (It's not what you think) - YouTube"; URL = "https://www.youtube.com/watch?v=SXO6wK5yoog"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "NWEA News. Updated technical requirements – Summer 2025"; URL = "https://connection.nwea.org/s/nwea-news/updated-technical-requirements-summer-2025-MCOHJ6GIWL3JBAVHDBADKEM2Q4LA?language=en_US"; Icon = "https://connection.nwea.org/favicon.ico"},
            @{Title = "Browser Support in 2025 - Casey Watts"; URL = "https://www.caseywatts.com/blog/browser-support-2025/"; Icon = "https://www.caseywatts.com/favicon.ico"},
            @{Title = "Web Browsers in 2025: The Complex Reality Behind Our Digital Gateways"; URL = "https://kahana.co/blog/web-browser-challenges-2025"; Icon = "https://kahana.co/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "What is the best search engine to use heading into 2025? - Reddit"; URL = "https://www.reddit.com/r/browsers/comments/1gfzj8a/what_is_the_best_search_engine_to_use_heading/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "Don't Just Google It: Smarter Search Engines to Try in 2025 | PCMag"; URL = "https://www.pcmag.com/picks/dont-just-google-it-smarter-search-engines-to-try"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "9 Alternative Search Engines Other Than Google in 2025"; URL = "https://www.monsterinsights.com/alternative-search-engines/"; Icon = "https://www.monsterinsights.com/favicon.ico"},
            @{Title = "25 Alternative Search Engines You Can Use Instead Of Google"; URL = "https://www.searchenginejournal.com/alternative-search-engines/271409/"; Icon = "https://www.searchenginejournal.com/favicon.ico"}
        )
    }
    'Development' = @{
        'NewsUpdates' = @(
            @{Title = "Best Developer Websites: Programming News, Tutorials & More"; URL = "https://stackify.com/18-websites-every-developer-should-visit-right-now/"; Icon = "https://stackify.com/favicon.ico"},
            @{Title = "daily.dev | Where developers grow together"; URL = "https://daily.dev/"; Icon = "https://daily.dev/favicon.ico"},
            @{Title = "TOP TECH NEWS SITES IN 2025: BEST RESOURCES FOR DEVELOPERS"; URL = "https://cadchain.com/blog/tpost/8yulf4lvh1-top-tech-news-sites-in-2025-best-resourc"; Icon = "https://cadchain.com/favicon.ico"},
            @{Title = "SD Times - Software Development News"; URL = "https://sdtimes.com/"; Icon = "https://sdtimes.com/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "Unveiling the Best Software Review Aggregators for 2025 - viaSocket"; URL = "https://viasocket.com/discovery/blog/38ch8w/Software%2520Review%2520Aggregator/unveiling-the-best-software-review-aggregators-for-2025"; Icon = "https://viasocket.com/favicon.ico"},
            @{Title = "Top 9 Data Aggregation Tools in 2025 | Integrate.io"; URL = "https://www.integrate.io/blog/top-9-data-aggregation-tools/"; Icon = "https://www.integrate.io/favicon.ico"},
            @{Title = "Global Top Data Aggregation Companies in 2025 - GroupBWT"; URL = "https://groupbwt.com/blog/data-aggregation-companies/"; Icon = "https://groupbwt.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "Top Software Development Companies - Nov 2025 Rankings - Clutch"; URL = "https://clutch.co/developers"; Icon = "https://clutch.co/favicon.ico"},
            @{Title = "Best Software Products for 2025 - G2"; URL = "https://www.g2.com/best-software-companies/top-products"; Icon = "https://www.g2.com/favicon.ico"},
            @{Title = "Top 15 Software Development Companies in the USA: 2025 Guide"; URL = "https://themindstudios.com/blog/top-software-development-companies-in-the-usa/"; Icon = "https://themindstudios.com/favicon.ico"},
            @{Title = "Top 100+ Software Development Companies in 2025 - Techreviewer"; URL = "https://techreviewer.co/top-software-development-companies"; Icon = "https://techreviewer.co/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "2025 Stack Overflow Developer Survey"; URL = "https://survey.stackoverflow.co/2025/"; Icon = "https://survey.stackoverflow.co/favicon.ico"},
            @{Title = "Software Development Statistics for 2025: Trends & Insights"; URL = "https://www.itransition.com/software-development/statistics"; Icon = "https://www.itransition.com/favicon.ico"},
            @{Title = "The Future For Software In 2025 - Forbes"; URL = "https://www.forbes.com/sites/adrianbridgwater/2024/12/18/the-future-for-software-in-2025/"; Icon = "https://www.forbes.com/favicon.ico"},
            @{Title = "The State of Software Development in 2025 : r/programming - Reddit"; URL = "https://www.reddit.com/r/programming/comments/1mgry93/the_state_of_software_development_in_2025/"; Icon = "https://www.reddit.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "How to Learn to Code in 2025 (Without Wasting Time) - YouTube"; URL = "https://www.youtube.com/watch?v=1qa41JLgx-M"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "If I Wanted to Become a Software Engineer in 2025, This... - YouTube"; URL = "https://www.youtube.com/watch?v=avdDEZCcluo"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Which web dev Course you all recommend for a beginner in 2025? - Reddit"; URL = "https://www.reddit.com/r/webdevelopment/comments/1hdxd33/which_web_dev_course_you_all_recommend_for_a/"; Icon = "https://www.reddit.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "A Developer's Guide to Build 2025 - Microsoft for Developers"; URL = "https://developer.microsoft.com/blog/a-developers-guide-to-build-2025"; Icon = "https://developer.microsoft.com/favicon.ico"},
            @{Title = "How I'd Learn to Code and Get Hired in 2025 | by James McArthur"; URL = "https://medium.com/%40_Smoljames/how-id-learn-to-code-and-get-hired-in-2025-c3d730251ce5"; Icon = "https://medium.com/favicon.ico"},
            @{Title = "11 Software Development Best Practices in 2025 - Netguru"; URL = "https://www.netguru.com/blog/best-software-development-practices"; Icon = "https://www.netguru.com/favicon.ico"},
            @{Title = "How to Build Apps & Software Without Code (UPDATED JULY 2025 ... - Reddit"; URL = "https://www.reddit.com/r/Entrepreneur/comments/1m1inq7/how_to_build_apps_software_without_code_updated/"; Icon = "https://www.reddit.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "Top 27 Software Development Tools & Platforms [2025 List] - Spacelift"; URL = "https://spacelift.io/blog/software-development-tools"; Icon = "https://spacelift.io/favicon.ico"},
            @{Title = "Your 2025 guide to AI, no-code, and developer-led software"; URL = "https://allthingsopen.org/articles/2025-guide-ai-no-code-developer-led-software"; Icon = "https://allthingsopen.org/favicon.ico"},
            @{Title = "Software Development Technologies to Keep an Eye on in 2025"; URL = "https://softjourn.com/insights/software-development-technologies-to-keep-an-eye-on"; Icon = "https://softjourn.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "What is the best search engine to use heading into 2025? - Reddit"; URL = "https://www.reddit.com/r/browsers/comments/1gfzj8a/what_is_the_best_search_engine_to_use_heading/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "Best AI Search Engines To Use In 2025 (Top 15 Picks) - Addlly AI"; URL = "https://addlly.ai/blog/best-ai-search-engines/"; Icon = "https://addlly.ai/favicon.ico"},
            @{Title = "6 Best AI Search Engines in 2025 | DigitalOcean"; URL = "https://www.digitalocean.com/resources/articles/ai-search-engines-for-research"; Icon = "https://www.digitalocean.com/favicon.ico"},
            @{Title = "What Are the Best Search Engines in 2025? - Coalition Technologies"; URL = "https://coalitiontechnologies.com/blog/what-are-the-best-search-engines-in-2025"; Icon = "https://coalitiontechnologies.com/favicon.ico"}
        )
    }
    'Productivity' = @{
        'NewsUpdates' = @(
            @{Title = "26 Best Productivity Tools Reviewed For 2025"; URL = "https://thedigitalprojectmanager.com/tools/best-productivity-tools/"; Icon = "https://thedigitalprojectmanager.com/favicon.ico"},
            @{Title = "I've Tried 50+ Productivity Tools — Here are My Top 9 - Buffer"; URL = "https://buffer.com/resources/productivity-tools/"; Icon = "https://buffer.com/favicon.ico"},
            @{Title = "7 Best Productivity Apps I Use In 2025 | 100+ Tools Tested"; URL = "https://thebusinessdive.com/productivity-apps"; Icon = "https://thebusinessdive.com/favicon.ico"},
            @{Title = "Best productivity tool of 2025 - TechRadar"; URL = "https://www.techradar.com/best/best-productivity-apps"; Icon = "https://www.techradar.com/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "What's the best productivity tool you discovered in 2025 so far?"; URL = "https://www.reddit.com/r/ProductivityApps/comments/1nc12qa/whats_the_best_productivity_tool_you_discovered/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "The best AI productivity tools in 2025 - Zapier"; URL = "https://zapier.com/blog/best-ai-productivity-tools/"; Icon = "https://zapier.com/favicon.ico"},
            @{Title = "Must-Have AI Aggregators to Supercharge Productivity in 2025"; URL = "https://www.sidetool.co/post/must-have-ai-aggregators-to-supercharge-productivity-in-2025/"; Icon = "https://www.sidetool.co/favicon.ico"},
            @{Title = "2025 AI Productivity Stack: Top 10 AI Tools I Use Weekly ... - YouTube"; URL = "https://www.youtube.com/watch?v=Bry2YMOWULs&vl=en"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "The Best Productivity Apps for 2025: Work Smarter, Not Harder - PCMag"; URL = "https://www.pcmag.com/picks/best-productivity-apps"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "I've Tried 50+ Productivity Tools — Here are My Top 9 - Buffer"; URL = "https://buffer.com/resources/productivity-tools/"; Icon = "https://buffer.com/favicon.ico"},
            @{Title = "7 Best Productivity Apps I Use In 2025 | 100+ Tools Tested"; URL = "https://thebusinessdive.com/productivity-apps"; Icon = "https://thebusinessdive.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "Productivity Software - Worldwide | Market Forecast - Statista"; URL = "https://www.statista.com/outlook/tmo/software/productivity-software/worldwide?srsltid=AfmBOoqi6xCq9ZkhQkIKVHiF1tjzjthmAuHPaaOAfDL2z0MnOuXdy0tl"; Icon = "https://www.statista.com/favicon.ico"},
            @{Title = "27 AI Productivity Statistics You Want to Know (2025 )"; URL = "https://www.apollotechnical.com/27-ai-productivity-statistics-you-want-to-know/"; Icon = "https://www.apollotechnical.com/favicon.ico"},
            @{Title = "The State of Technology in the Workplace: Statistics [2025] - Archie"; URL = "https://archieapp.co/blog/technology-in-the-workplace-statistics/"; Icon = "https://archieapp.co/favicon.ico"},
            @{Title = "Rethinking productivity: 2025 Workplace statistics - Eptura"; URL = "https://eptura.com/discover-more/blog/rethinking-productivity-2025-workplace-statistics/"; Icon = "https://eptura.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "Productivity Tools in 2025: What to Use, What to Ignore, and What's Next - YouTube"; URL = "https://www.youtube.com/watch?v=fx0wCM1tmBE"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "2025 AI Productivity Stack: Top 10 AI Tools I Use Weekly ... - YouTube"; URL = "https://www.youtube.com/watch?v=Bry2YMOWULs&vl=en"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "My Top 5 Productivity Tools for 2025 to Save Time and ... - YouTube"; URL = "https://www.youtube.com/watch?v=tpUTN3TowpI"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "Productivity Tools in 2025: What to Use, What to Ignore, and What's Next - YouTube"; URL = "https://www.youtube.com/watch?v=fx0wCM1tmBE"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Productivity Field Guide 2025 (Standard Edition)"; URL = "https://learn.macsparky.com/p/productivity-standard-25"; Icon = "https://learn.macsparky.com/favicon.ico"},
            @{Title = "Looking back at 2025, what tool actually helped you the most this ... - Reddit"; URL = "https://www.reddit.com/r/productivity/comments/1odxj5a/looking_back_at_2025_what_tool_actually_helped/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "The Essential Guide To Productivity Tools In 2025 - TextExpander"; URL = "https://textexpander.com/blog/productivity-tools"; Icon = "https://textexpander.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "26 Best Productivity Tools Reviewed For 2025"; URL = "https://thedigitalprojectmanager.com/tools/best-productivity-tools/"; Icon = "https://thedigitalprojectmanager.com/favicon.ico"},
            @{Title = "The Best Productivity Apps for 2025: Work Smarter, Not Harder - PCMag"; URL = "https://www.pcmag.com/picks/best-productivity-apps"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The best AI productivity tools in 2025 - Zapier"; URL = "https://zapier.com/blog/best-ai-productivity-tools/"; Icon = "https://zapier.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "The Best AI Search Engines We've Tested (2025) - PCMag"; URL = "https://www.pcmag.com/picks/the-best-ai-search-engines"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The Best AI Productivity Tools in 2025 - Zapier"; URL = "https://zapier.com/blog/best-ai-productivity-tools/"; Icon = "https://zapier.com/favicon.ico"},
            @{Title = "Looking Back at 2025, What Tool Actually Helped You the Most? - Reddit"; URL = "https://www.reddit.com/r/productivity/comments/1odxj5a/looking_back_at_2025_what_tool_actually_helped/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "The 10 Best AI Productivity Tools to Watch in 2025 - Skywork.ai"; URL = "https://skywork.ai/blog/the-10-best-ai-productivity-tools-to-watch-in-2025/"; Icon = "https://skywork.ai/favicon.ico"}
        )
    }
    'Media' = @{
        'NewsUpdates' = @(
            @{Title = "Best Press Release Websites in 2025: Top 20 Free and Paid - Prowly"; URL = "https://prowly.com/magazine/best-press-release-websites/"; Icon = "https://prowly.com/favicon.ico"},
            @{Title = "100 Top Media Outlets for News Coverage in 2025 - PRLab"; URL = "https://prlab.co/blog/top-media-outlets-for-news-coverage/"; Icon = "https://prlab.co/favicon.ico"},
            @{Title = "9 Best Press Release Distribution Services for 2025 - Editorial.Link"; URL = "https://editorial.link/press-release-distribution-services/"; Icon = "https://editorial.link/favicon.ico"},
            @{Title = "10 Best News Aggregator Sites in 2025: The Ultimate Guide - Onstipe"; URL = "https://onstipe.com/blog/10-best-news-aggregator-sites-in-2025-the-ultimate-guide/"; Icon = "https://onstipe.com/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "The Best Social Media Aggregators in 2025: The Ultimate Guide"; URL = "https://getflowbox.com/blog/social-media-aggregator/"; Icon = "https://getflowbox.com/favicon.ico"},
            @{Title = "Best Social Media Aggregators 2025: Complete List - Flockler"; URL = "https://webflow2.flockler.systems/blog/social-media-aggregators"; Icon = "https://webflow2.flockler.systems/favicon.ico"},
            @{Title = "Best Social Media Aggregators for Marketers in 2025 - EmbedSocial"; URL = "https://embedsocial.com/blog/social-media-aggregator/"; Icon = "https://embedsocial.com/favicon.ico"},
            @{Title = "Best Social Media Aggregator Tools [Updated] [2025 ] - Tagembed"; URL = "https://tagembed.com/blog/choose-best-social-media-aggregator-tool/"; Icon = "https://tagembed.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "Best PR and Media Monitoring Tools Reviews 2025 - Gartner"; URL = "https://www.gartner.com/reviews/market/pr-and-media-monitoring-tools"; Icon = "https://www.gartner.com/favicon.ico"},
            @{Title = "Best PR Software to Choose in 2025: Top Tools for Modern PR Teams"; URL = "https://presspage.com/blog/best-pr-software-2025"; Icon = "https://presspage.com/favicon.ico"},
            @{Title = "Highest Customer Satisfaction Products for 2025 - G2"; URL = "https://www.g2.com/best-software-companies/highest-satisfaction"; Icon = "https://www.g2.com/favicon.ico"},
            @{Title = "34 Best Digital Marketing Software Reviewed for 2025 - The CMO"; URL = "https://thecmo.com/tools/best-digital-marketing-software/"; Icon = "https://thecmo.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "2025 Digital Media Trends | Deloitte Insights"; URL = "https://www.deloitte.com/us/en/insights/industry/technology/digital-media-trends-consumption-habits-survey/2025.html"; Icon = "https://www.deloitte.com/favicon.ico"},
            @{Title = "2025 Marketing Statistics, Trends & Data - HubSpot"; URL = "https://www.hubspot.com/marketing-statistics"; Icon = "https://www.hubspot.com/favicon.ico"},
            @{Title = "Perspectives: Global E&M Outlook 2025–2029 - PwC"; URL = "https://www.pwc.com/gx/en/issues/business-model-reinvention/outlook/insights-and-perspectives.html"; Icon = "https://www.pwc.com/favicon.ico"},
            @{Title = "Media & Entertainment Industry Statistics 2025: Streaming, Gaming"; URL = "https://sqmagazine.co.uk/media-and-entertainment-industry-statistics/"; Icon = "https://sqmagazine.co.uk/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "Top 5 Best FREE MEDIA PLAYER Software (2025) - YouTube"; URL = "https://www.youtube.com/watch?v=n5aSnxyIwlw"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Media Player in 2025? - Reddit"; URL = "https://www.reddit.com/r/Windows11/comments/1kygk8w/media_player_in_2025/"; Icon = "https://www.reddit.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "Topical Authority Map Tutorial (Step-by-Step) for 2025 - YouTube"; URL = "https://www.youtube.com/watch?v=JA4KnGvfXAo"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Topical Content Maps: 2025 Edition Guide - BlueTree Digital"; URL = "https://bluetree.digital/topical-maps/"; Icon = "https://bluetree.digital/favicon.ico"},
            @{Title = "How to Create a Video Tutorial: 6 Ways in 2025 - Icecream Apps"; URL = "https://icecreamapps.com/learn/Howto/how-to-create-a-video-guide.html"; Icon = "https://icecreamapps.com/favicon.ico"},
            @{Title = "These 15 Tools Are All You Need To Succeed in 2025! - YouTube"; URL = "https://www.youtube.com/watch?v=5tPZPHWSfek"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "20 Best Media Resource Management Software Reviewed In 2025"; URL = "https://thedigitalprojectmanager.com/tools/best-media-resource-management-software/"; Icon = "https://thedigitalprojectmanager.com/favicon.ico"},
            @{Title = "24 Best Media Monitoring Software Reviewed in 2025 - The CMO"; URL = "https://thecmo.com/tools/best-media-monitoring-software/"; Icon = "https://thecmo.com/favicon.ico"},
            @{Title = "Best PR Software to Choose in 2025: Top Tools for Modern PR Teams"; URL = "https://presspage.com/blog/best-pr-software-2025"; Icon = "https://presspage.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "25 Alternative Search Engines You Can Use Instead Of Google"; URL = "https://www.searchenginejournal.com/alternative-search-engines/271409/"; Icon = "https://www.searchenginejournal.com/favicon.ico"},
            @{Title = "Don't Just Google It: Smarter Search Engines to Try in 2025 | PCMag"; URL = "https://www.pcmag.com/picks/dont-just-google-it-smarter-search-engines-to-try"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "Search Engines & SEO: 34 Most Popular Search Engines in 2025"; URL = "https://mangools.com/blog/search-engines/"; Icon = "https://mangools.com/favicon.ico"},
            @{Title = "Top 15 Search Engines in 2025: Key Features & Tracking Tools"; URL = "https://www.link-assistant.com/news/top-search-engines.html"; Icon = "https://www.link-assistant.com/favicon.ico"}
        )
    }
    'Utilities' = @{
        'NewsUpdates' = @(
            @{Title = "2025 Top Utilities: Making the Connections - Site Selection Magazine"; URL = "https://siteselection.com/2025-top-utilities-making-the-connections/"; Icon = "https://siteselection.com/favicon.ico"},
            @{Title = "Utility Dive: Utility and Energy Transmission & Distribution News"; URL = "https://www.utilitydive.com/"; Icon = "https://www.utilitydive.com/favicon.ico"},
            @{Title = "Top 50 Energy News Websites in 2025"; URL = "https://news.feedspot.com/energy_news_websites/"; Icon = "https://news.feedspot.com/favicon.ico"},
            @{Title = "Top 10: Utilities Companies | Energy Magazine"; URL = "https://energydigital.com/top10/top-10-utilities-companies-2025"; Icon = "https://energydigital.com/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "In an era of rising rates, policies to strengthen power system ..."; URL = "https://www.utilitydive.com/news/in-an-era-of-rising-rates-policies-to-strengthen-power-system-flexibility/803935/"; Icon = "https://www.utilitydive.com/favicon.ico"},
            @{Title = "Voltus Ranked #1 Aggregator in GWUM in Wood Mackenzie's VPP ..."; URL = "https://www.voltus.co/press/voltus-wood-mackenzie-2025-vpp-report"; Icon = "https://www.voltus.co/favicon.ico"},
            @{Title = "The past and future of community choice aggregation"; URL = "https://www.volts.wtf/p/the-past-and-future-of-community"; Icon = "https://www.volts.wtf/favicon.ico"},
            @{Title = "2026 Power and Utilities Industry Outlook | Deloitte Insights"; URL = "https://www.deloitte.com/us/en/insights/industry/power-and-utilities/power-and-utilities-industry-outlook.html"; Icon = "https://www.deloitte.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "Best system utilities software of 2025 - TechRadar"; URL = "https://www.techradar.com/best/best-system-utilities-and-repair-software-for-business-pcs"; Icon = "https://www.techradar.com/favicon.ico"},
            @{Title = "Best Utility Customer Information Systems Reviews 2025 - Gartner"; URL = "https://www.gartner.com/reviews/market/utilities-customer-systems"; Icon = "https://www.gartner.com/favicon.ico"},
            @{Title = "Top System Utilities in 2025 - Software - Slashdot"; URL = "https://slashdot.org/software/system-utilities/"; Icon = "https://slashdot.org/favicon.ico"},
            @{Title = "System Utility Reviews and Lab Tests | PCMag"; URL = "https://www.pcmag.com/categories/system-utilities"; Icon = "https://www.pcmag.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "The State of Utility Planning, 2025 Q3 - RMI"; URL = "https://rmi.org/the-state-of-utility-planning-2025-q3/"; Icon = "https://rmi.org/favicon.ico"},
            @{Title = "2026 Power and Utilities Industry Outlook | Deloitte Insights"; URL = "https://www.deloitte.com/us/en/insights/industry/power-and-utilities/power-and-utilities-industry-outlook.html"; Icon = "https://www.deloitte.com/favicon.ico"},
            @{Title = "2025 Electric Utility Business Customer Satisfaction Study | J.D. Power"; URL = "https://www.jdpower.com/business/press-releases/2025-electric-utility-business-customer-satisfaction-study"; Icon = "https://www.jdpower.com/favicon.ico"},
            @{Title = "2025 Utilities sector outlook | EY - US"; URL = "https://www.ey.com/en_us/insights/power-utilities/utilities-sector-outlook"; Icon = "https://www.ey.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "Windows Utility in 2025 - YouTube"; URL = "https://www.youtube.com/watch?v=IuaNw8Tpn7Q"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Top 10 Essential Windows Utilities You Should Install in 2025! - YouTube"; URL = "https://www.youtube.com/watch?v=1qVvN8QozUs"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Boost Your PC for Free: Must-Have Free Windows Tools (2025) - YouTube"; URL = "https://www.youtube.com/watch?v=Kts1YKEf-LU"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "Windows Utility in 2025 - YouTube"; URL = "https://www.youtube.com/watch?v=IuaNw8Tpn7Q"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "System Configuration Tools in Windows - Microsoft Support"; URL = "https://support.microsoft.com/en-us/windows/system-configuration-tools-in-windows-f8a49657-b038-43b8-82d3-28bea0c5666b"; Icon = "https://support.microsoft.com/favicon.ico"},
            @{Title = "Best system utilities software of 2025 - TechRadar"; URL = "https://www.techradar.com/best/best-system-utilities-and-repair-software-for-business-pcs"; Icon = "https://www.techradar.com/favicon.ico"},
            @{Title = "Ultimate Guide: AI & ERP Implementation Tips for Utilities 2025"; URL = "https://www.utilitieslabs.com/ultimate-guide-ai-erp-implementation-tips-for-utilities-2025/"; Icon = "https://www.utilitieslabs.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "Top System Utilities in 2025 - Software - Slashdot"; URL = "https://slashdot.org/software/system-utilities/"; Icon = "https://slashdot.org/favicon.ico"},
            @{Title = "Utility and Grid Operator Power System Resources - NREL"; URL = "https://www.nrel.gov/grid/utility-grid-operator-power-system-resources"; Icon = "https://www.nrel.gov/favicon.ico"},
            @{Title = "SANS 2025 Utilities Forum"; URL = "https://www.sans.org/webcasts/sans-2025-utilities-forum"; Icon = "https://www.sans.org/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "Top 10 Utility Software Tools in 2025: Features, Pros, Cons"; URL = "https://www.devopsschool.com/blog/top-10-utility-software-tools-in-2025-features-pros-cons-comparison/"; Icon = "https://www.devopsschool.com/favicon.ico"},
            @{Title = "Best System Utilities Software of 2025 - TechRadar"; URL = "https://www.techradar.com/best/best-system-utilities-and-repair-software-for-business-pcs"; Icon = "https://www.techradar.com/favicon.ico"},
            @{Title = "Top Web-Based System Utilities in 2025 - Slashdot"; URL = "https://slashdot.org/software/system-utilities/saas/"; Icon = "https://slashdot.org/favicon.ico"},
            @{Title = "Best Free Utilities: 10 Essential Tools To Transform Your PC"; URL = "https://www.kingfishercomputers.co.uk/best-free-utilities-2025/"; Icon = "https://www.kingfishercomputers.co.uk/favicon.ico"}
        )
    }
    'Security' = @{
        'NewsUpdates' = @(
            @{Title = "Top 10 Cybersecurity Magazines and News Sites (2025 Edition)"; URL = "https://www.cyberdefensemagazine.com/top-10-cybersecurity-magazines-and-news-sites-2025-edition/"; Icon = "https://www.cyberdefensemagazine.com/favicon.ico"},
            @{Title = "The Top Cybersecurity Websites and Blogs of 2025 - UpGuard"; URL = "https://www.upguard.com/blog/cybersecurity-websites"; Icon = "https://www.upguard.com/favicon.ico"},
            @{Title = "The Hacker News | #1 Trusted Source for Cybersecurity News"; URL = "https://thehackernews.com/"; Icon = "https://thehackernews.com/favicon.ico"},
            @{Title = "The 23 Top Cybersecurity Websites and Blogs of 2025"; URL = "https://onlinedegrees.sandiego.edu/top-cyber-security-blogs-websites/"; Icon = "https://onlinedegrees.sandiego.edu/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "Stellar Startup Security Technology Vendors To Know In 2025 - CRN"; URL = "https://www.crn.com/news/security/2025/stellar-startup-security-technology-vendors-to-know-in-2025"; Icon = "https://www.crn.com/favicon.ico"},
            @{Title = "Top 9 Data Aggregation Tools in 2025 | Integrate.io"; URL = "https://www.integrate.io/blog/top-9-data-aggregation-tools/"; Icon = "https://www.integrate.io/favicon.ico"},
            @{Title = "Top Account Aggregators in 2025: A Comparison Guide - HyperVerge"; URL = "https://hyperverge.co/blog/best-account-aggregators/"; Icon = "https://hyperverge.co/favicon.ico"},
            @{Title = "Market Guide 2025: The Rise of Security Data Pipelines & How ..."; URL = "https://softwareanalyst.substack.com/p/market-guide-2025-the-rise-of-security"; Icon = "https://softwareanalyst.substack.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "The Best Antivirus Software We've Tested for 2025 | PCMag"; URL = "https://www.pcmag.com/picks/the-best-antivirus-protection"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "Best Antivirus Software We've Tested in 2025: This Security Service ... - CNET"; URL = "https://www.cnet.com/tech/services-and-software/best-antivirus/"; Icon = "https://www.cnet.com/favicon.ico"},
            @{Title = "Here Are the Best Antivirus Software of 2025 | All About Cookies"; URL = "https://allaboutcookies.org/best-antivirus-software"; Icon = "https://allaboutcookies.org/favicon.ico"},
            @{Title = "Best Antivirus tier list | BEST and WORST choices in 2025 - YouTube"; URL = "https://www.youtube.com/watch?v=j0TJ_AiBV1w"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "Top Cybersecurity Statistics: Facts, Stats and Breaches for 2025"; URL = "https://www.fortinet.com/resources/cyberglossary/cybersecurity-statistics"; Icon = "https://www.fortinet.com/favicon.ico"},
            @{Title = "207 Cybersecurity Stats and Facts for 2025 - VikingCloud"; URL = "https://www.vikingcloud.com/blog/cybersecurity-statistics"; Icon = "https://www.vikingcloud.com/favicon.ico"},
            @{Title = "[PDF] Global Cybersecurity Outlook 2025"; URL = "https://reports.weforum.org/docs/WEF_Global_Cybersecurity_Outlook_2025.pdf"; Icon = "https://reports.weforum.org/favicon.ico"},
            @{Title = "State of Cybersecurity 2025 | CompTIA Report"; URL = "https://www.comptia.org/en-us/resources/research/state-of-cybersecurity/"; Icon = "https://www.comptia.org/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "Cyber Security Full Course 2025 | Cybersecurity | Simplilearn - YouTube"; URL = "https://www.youtube.com/watch?v=scRK769quU0"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Cyber Security Full Course 2025 | Cybersecurity | Simplilearn - YouTube"; URL = "https://www.youtube.com/watch?v=2pOAzLVtSl8"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Cyber Security Full Course 2025 | Cybersecurity Tutorial - YouTube"; URL = "https://www.youtube.com/watch?v=4YJL0R9N4Zs"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "Free Teaching Resources About Cyber Security | Topical Talk"; URL = "https://talk.economistfoundation.org/resources/cyber-security-who-is-responsible/"; Icon = "https://talk.economistfoundation.org/favicon.ico"},
            @{Title = "Cyber Security Full Course 2025 | Cybersecurity | Simplilearn - YouTube"; URL = "https://www.youtube.com/watch?v=scRK769quU0"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "[PDF] Cybersecurity Topical Requirement User Guide"; URL = "https://www.theiia.org/globalassets/site/standards/topical-requirements/cybersecurity/cybersecurity_tr_user_guide.pdf"; Icon = "https://www.theiia.org/favicon.ico"},
            @{Title = "1 Cyber Security Basics | OpenLearn - The Open University"; URL = "https://www.open.edu/openlearn/digital-computing/learning-major-cyber-security-incidents/content-section-1"; Icon = "https://www.open.edu/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "2025 Top 20 Must Read Resources to Stay Updated on ..."; URL = "https://securityscorecard.com/blog/how-to-stay-updated-on-cybersecurity-threats-and-trends/"; Icon = "https://securityscorecard.com/favicon.ico"},
            @{Title = "NIST Computer Security Resource Center | CSRC"; URL = "https://csrc.nist.gov/"; Icon = "https://csrc.nist.gov/favicon.ico"},
            @{Title = "10 Cyber Security Tools for 2025 - SentinelOne"; URL = "https://www.sentinelone.com/cybersecurity-101/cybersecurity/cyber-security-tools/"; Icon = "https://www.sentinelone.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "Top 30 Cybersecurity Search Engines In 2025 - Craw Security"; URL = "https://www.craw.in/top-30-cybersecurity-search-engines"; Icon = "https://www.craw.in/favicon.ico"},
            @{Title = "Best Threat Intelligence Platforms: Top 10 Solutions in 2025"; URL = "https://www.exabeam.com/explainers/cyber-threat-intelligence/best-threat-intelligence-platforms-top-10-solutions-in-2025/"; Icon = "https://www.exabeam.com/favicon.ico"},
            @{Title = "Here are 30 CyberSecurity Search Engines That Hackers Use (2025) - Medium"; URL = "https://medium.com/@ceodefender/here-are-30-cybersecurity-search-engines-aa5ae401d6a4"; Icon = "https://medium.com/favicon.ico"},
            @{Title = "Top 5 Search Engines for Cybersecurity Research"; URL = "https://www.cybersecurity-insiders.com/top-5-search-engines-for-cybersecurity-research/"; Icon = "https://www.cybersecurity-insiders.com/favicon.ico"}
        )
    }
    'Communication' = @{
        'NewsUpdates' = @(
            @{Title = "Top media monitoring tools for news and social media in 2025"; URL = "https://prlab.co/blog/the-best-media-monitoring-tools-for-news-and-social-media/"; Icon = "https://prlab.co/favicon.ico"},
            @{Title = "Best PR Software to Choose in 2025: Top Tools for Modern PR Teams"; URL = "https://presspage.com/blog/best-pr-software-2025"; Icon = "https://presspage.com/favicon.ico"},
            @{Title = "The 6 best news apps for 2025: your ultimate guide to staying informed"; URL = "https://emelia.io/hub/best-news-apps"; Icon = "https://emelia.io/favicon.ico"},
            @{Title = "Best Press Release Websites in 2025: Top 20 Free and Paid - Prowly"; URL = "https://prowly.com/magazine/best-press-release-websites/"; Icon = "https://prowly.com/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "15+ Internal Communication Tools Your Company Needs - Sociabble"; URL = "https://www.sociabble.com/blog/internal-communication/internal-communications-tools/"; Icon = "https://www.sociabble.com/favicon.ico"},
            @{Title = "10 Best Communication Tools in 2025 - Appy Pie Automate"; URL = "https://www.appypieautomate.ai/blog/best-communication-tools"; Icon = "https://www.appypieautomate.ai/favicon.ico"},
            @{Title = "Must-Have AI Aggregators to Supercharge Productivity in 2025"; URL = "https://www.sidetool.co/post/must-have-ai-aggregators-to-supercharge-productivity-in-2025/"; Icon = "https://www.sidetool.co/favicon.ico"},
            @{Title = "5 Best AI Tool Aggregators Thousands of AI tools have been by ..."; URL = "https://masterserviceslg.com/2025/04/02/5-best-ai-tool-aggregators-thousands-of-ai-tools/"; Icon = "https://masterserviceslg.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "20 Best Communications Software & Apps of 2025"; URL = "https://peoplemanagingpeople.com/tools/best-communications-software/"; Icon = "https://peoplemanagingpeople.com/favicon.ico"},
            @{Title = "6 Best Internal Communication Tools for Teams in 2025"; URL = "https://technologyadvice.com/blog/human-resources/internal-communication-tools/"; Icon = "https://technologyadvice.com/favicon.ico"},
            @{Title = "10 Best Communication Tools in 2025 - Appy Pie Automate"; URL = "https://www.appypieautomate.ai/blog/best-communication-tools"; Icon = "https://www.appypieautomate.ai/favicon.ico"},
            @{Title = "15 Best Customer Communication Tools to Use in 2025"; URL = "https://ossisto.com/blog/customer-communication-tools/"; Icon = "https://ossisto.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "Communication Statistics 2025 | Project.co"; URL = "https://project.co/communication-statistics/"; Icon = "https://project.co/favicon.ico"},
            @{Title = "Workplace Communication Statistics (2025) - Pumble"; URL = "https://pumble.com/learn/communication/communication-statistics/"; Icon = "https://pumble.com/favicon.ico"},
            @{Title = "Commonly used communication tools in 2025: pros and cons"; URL = "https://www.netpresenter.com/knowledge-center/internal-communication/commonly-used-communication-tools-in-2025-pros-and-cons"; Icon = "https://www.netpresenter.com/favicon.ico"},
            @{Title = "Internal communications statistics: findings from Axios HQ 2025 ..."; URL = "https://www.axioshq.com/insights/internal-communications-statistics"; Icon = "https://www.axioshq.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "15 Best Team Communication Tools (2025) - YouTube"; URL = "https://www.youtube.com/watch?v=uudmh5VWEVM"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Listen to this if you want to level up your communication skills in ... - YouTube"; URL = "https://www.youtube.com/watch?v=LI57EB_T38c"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Top Tech Series - Episode 5 - Online Communication Tools - YouTube"; URL = "https://www.youtube.com/watch?v=SM_7UnjCOL8"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "15 Types Of Internal Communication Tools To Use In 2025"; URL = "https://www.contactmonkey.com/blog/best-internal-communication-tools"; Icon = "https://www.contactmonkey.com/favicon.ico"},
            @{Title = "5 Essential Internal Communication Tools & Software - 2025 Guide"; URL = "https://www.hubengage.com/guides/internal-communications-tools/"; Icon = "https://www.hubengage.com/favicon.ico"},
            @{Title = "Commonly used communication tools in 2025: pros and cons"; URL = "https://www.netpresenter.com/knowledge-center/internal-communication/commonly-used-communication-tools-in-2025-pros-and-cons"; Icon = "https://www.netpresenter.com/favicon.ico"},
            @{Title = "6 Best Business Communication Tools in 2025 (A Full Guide) - Nextiva"; URL = "https://www.nextiva.com/blog/business-communication-tools.html"; Icon = "https://www.nextiva.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "15 Types Of Internal Communication Tools To Use In 2025"; URL = "https://www.contactmonkey.com/blog/best-internal-communication-tools"; Icon = "https://www.contactmonkey.com/favicon.ico"},
            @{Title = "20 Best Communications Software & Apps of 2025"; URL = "https://peoplemanagingpeople.com/tools/best-communications-software/"; Icon = "https://peoplemanagingpeople.com/favicon.ico"},
            @{Title = "6 Best Internal Communication Tools for Teams in 2025"; URL = "https://technologyadvice.com/blog/human-resources/internal-communication-tools/"; Icon = "https://technologyadvice.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "Don't Just Google It: Smarter Search Engines to Try in 2025 | PCMag"; URL = "https://www.pcmag.com/picks/dont-just-google-it-smarter-search-engines-to-try"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "25 Alternative Search Engines You Can Use Instead Of Google"; URL = "https://www.searchenginejournal.com/alternative-search-engines/271409/"; Icon = "https://www.searchenginejournal.com/favicon.ico"},
            @{Title = "Top 10 Enterprise Search Software in 2025 - Slite"; URL = "https://slite.com/nl/learn/top-enterprise-search-software"; Icon = "https://slite.com/favicon.ico"},
            @{Title = "Top 15 Search Engines in 2025: Key Features & Tracking Tools"; URL = "https://www.link-assistant.com/news/top-search-engines.html"; Icon = "https://www.link-assistant.com/favicon.ico"}
        )
    }
    'Cloud Storage' = @{
        'NewsUpdates' = @(
            @{Title = "The Best Cloud Storage and File-Sharing Services for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-cloud-storage-and-file-sharing-services"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The 11 best cloud storage apps in 2025 - Zapier"; URL = "https://zapier.com/blog/best-cloud-storage-apps/"; Icon = "https://zapier.com/favicon.ico"},
            @{Title = "Best cloud storage of 2025: our expert rankings - TechRadar"; URL = "https://www.techradar.com/best/best-cloud-storage"; Icon = "https://www.techradar.com/favicon.ico"},
            @{Title = "What is the best cloud storage service for backups in 2025? - Reddit"; URL = "https://www.reddit.com/r/datastorage/comments/1mprjck/what_is_the_best_cloud_storage_service_for/"; Icon = "https://www.reddit.com/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "The Best Cloud Storage and File-Sharing Services for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-cloud-storage-and-file-sharing-services"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The 11 best cloud storage apps in 2025 - Zapier"; URL = "https://zapier.com/blog/best-cloud-storage-apps/"; Icon = "https://zapier.com/favicon.ico"},
            @{Title = "Best cloud storage in 2025 - Tom's Guide"; URL = "https://www.tomsguide.com/buying-guide/best-cloud-storage"; Icon = "https://www.tomsguide.com/favicon.ico"},
            @{Title = "21+ Top Cloud Service Providers Globally In 2025 - CloudZero"; URL = "https://www.cloudzero.com/blog/cloud-service-providers/"; Icon = "https://www.cloudzero.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "The Best Cloud Storage and File-Sharing Services for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-cloud-storage-and-file-sharing-services"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The 11 best cloud storage apps in 2025 - Zapier"; URL = "https://zapier.com/blog/best-cloud-storage-apps/"; Icon = "https://zapier.com/favicon.ico"},
            @{Title = "Cheap Cloud Storage 2025: Who Has the Best Value for Money?"; URL = "https://www.experte.com/cloud-storage/cheap-cloud-storage"; Icon = "https://www.experte.com/favicon.ico"},
            @{Title = "Best Unlimited Cloud Storage: Top 7 Providers Compared in 2025"; URL = "https://www.sync.com/blog/best-unlimited-cloud-storage/"; Icon = "https://www.sync.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "Backblaze Drive Stats for Q3 2025"; URL = "https://www.backblaze.com/blog/backblaze-drive-stats-for-q3-2025/"; Icon = "https://www.backblaze.com/favicon.ico"},
            @{Title = "90+ Cloud Computing Statistics: A 2025 Market Snapshot - CloudZero"; URL = "https://www.cloudzero.com/blog/cloud-computing-statistics/"; Icon = "https://www.cloudzero.com/favicon.ico"},
            @{Title = "55 Cloud Computing Statistics for 2025 - Spacelift"; URL = "https://spacelift.io/blog/cloud-computing-statistics"; Icon = "https://spacelift.io/favicon.ico"},
            @{Title = "49 Cloud Computing Statistics You Must Know in 2025"; URL = "https://n2ws.com/blog/cloud-computing-statistics"; Icon = "https://n2ws.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "Best Cloud Storage 2025 Tier List | BEST and WORST Choices - YouTube"; URL = "https://www.youtube.com/watch?v=VIGwgkg4hXM"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "7 Best FREE Cloud Storage Services in 2025 (Up to 1TB Free!) - YouTube"; URL = "https://www.youtube.com/watch?v=oGIv8hfyL6w"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Google Cloud Full Course for Beginners [2025] - YouTube"; URL = "https://www.youtube.com/watch?v=lvZk_sc8u5I"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "How to Use Google Cloud Storage (2025 Tutorial) - YouTube"; URL = "https://www.youtube.com/watch?v=IpLHpGJhsok"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Cloud Storage Tutorials & Guides in 2025: Setup, Security & Tips"; URL = "https://www.cloudwards.net/cloud-storage-guides/"; Icon = "https://www.cloudwards.net/favicon.ico"},
            @{Title = "Google Cloud Full Course for Beginners [2025] - YouTube"; URL = "https://www.youtube.com/watch?v=lvZk_sc8u5I"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Cloud Computing Full Course 2025 - YouTube"; URL = "https://www.youtube.com/watch?v=F9i4_1u5Mzk"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "The Best Cloud Storage and File-Sharing Services for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-cloud-storage-and-file-sharing-services"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The 11 best cloud storage apps in 2025 - Zapier"; URL = "https://zapier.com/blog/best-cloud-storage-apps/"; Icon = "https://zapier.com/favicon.ico"},
            @{Title = "What is the best cloud storage service for backups in 2025? - Reddit"; URL = "https://www.reddit.com/r/datastorage/comments/1mprjck/what_is_the_best_cloud_storage_service_for/"; Icon = "https://www.reddit.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "The Best Cloud Storage and File-Sharing Services for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-cloud-storage-and-file-sharing-services"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The 11 best cloud storage apps in 2025 - Zapier"; URL = "https://zapier.com/blog/best-cloud-storage-apps/"; Icon = "https://zapier.com/favicon.ico"},
            @{Title = "4 Best Enterprise Search Software Tools in 2025 | Dropbox Dash"; URL = "https://dash.dropbox.com/resources/best-enterprise-search-software"; Icon = "https://dash.dropbox.com/favicon.ico"},
            @{Title = "The Best Google Drive Alternatives in 2025: An In-Depth Review"; URL = "https://blog.pics.io/best-google-drive-alternatives/"; Icon = "https://blog.pics.io/favicon.ico"}
        )
    }
    'Gaming' = @{
        'NewsUpdates' = @(
            @{Title = "Are there any video game news sites that are better alternatives to ... - Reddit"; URL = "https://www.reddit.com/r/gaming/comments/1jx39p2/are_there_any_video_game_news_sites_that_are/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "Top PC Gaming News Websites: Stay Updated!"; URL = "https://recruitagent.com/blog/top-pc-gaming-news-websites"; Icon = "https://recruitagent.com/favicon.ico"},
            @{Title = "Top 45 Video Game News Websites in 2025"; URL = "https://news.feedspot.com/video_game_news_websites/"; Icon = "https://news.feedspot.com/favicon.ico"},
            @{Title = "Top 15 Gaming Newsletters to Read In 2025 - letterpal"; URL = "https://www.letterpal.io/blog/top-15-gaming-newsletters"; Icon = "https://www.letterpal.io/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "The Best Game Streaming Services for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-game-streaming-services"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "PC gaming hardware market skyrockets, will grow 35% in 2025 to ... - Reddit"; URL = "https://www.reddit.com/r/pcgaming/comments/1nlzga1/pc_gaming_hardware_market_skyrockets_will_grow_35/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "Game Streaming Platforms: What to Know in 2025 - EMEET"; URL = "https://emeet.com/en-ca/blogs/content/game-streaming-platforms-what-to-know-in-2025?srsltid=AfmBOoq1UXvUKWE8tHLj1KleQ0fFB03FBN2xP7S8zZY_Kr8hUoUiX2A-"; Icon = "https://emeet.com/favicon.ico"},
            @{Title = "PC Gaming Market Size Statistics 2025"; URL = "https://coopboardgames.com/statistics/pc-gaming-market-size-statistics/"; Icon = "https://coopboardgames.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "Best Gaming PCs 2025 | Tom's Hardware"; URL = "https://www.tomshardware.com/best-picks/best-gaming-pcs"; Icon = "https://www.tomshardware.com/favicon.ico"},
            @{Title = "The Best Gaming PCs We've Tested for 2025 | PCMag"; URL = "https://www.pcmag.com/picks/the-best-gaming-desktops"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "Best gaming PCs in 2025: these are the rigs and brands ... - PC Gamer"; URL = "https://www.pcgamer.com/best-gaming-pc/"; Icon = "https://www.pcgamer.com/favicon.ico"},
            @{Title = "The best gaming PC in 2025 - TechRadar"; URL = "https://www.techradar.com/news/the-best-gaming-pc"; Icon = "https://www.techradar.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "PC Gaming Market Size Statistics (2025) - Quantumrun Foresight"; URL = "https://www.quantumrun.com/consulting/pc-gaming-market-size-statistics/"; Icon = "https://www.quantumrun.com/favicon.ico"},
            @{Title = "PC Gaming Market Size Statistics 2025"; URL = "https://coopboardgames.com/statistics/pc-gaming-market-size-statistics/"; Icon = "https://coopboardgames.com/favicon.ico"},
            @{Title = "PC gaming hardware market skyrockets, will grow 35% in 2025 to ... - Reddit"; URL = "https://www.reddit.com/r/pcgaming/comments/1nlzga1/pc_gaming_hardware_market_skyrockets_will_grow_35/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "The Latest PC Gaming Statistics (2025) - Exploding Topics"; URL = "https://explodingtopics.com/blog/pc-gaming-stats"; Icon = "https://explodingtopics.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "How to Build a Gaming PC in 2025! [Full Tutorial] - YouTube"; URL = "https://www.youtube.com/watch?v=3vl1hd9vlqA"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "How To Set Up a Gaming PC in 2025: Step-by-Step Tutorial - YouTube"; URL = "https://www.youtube.com/watch?v=KEnOejQqAC8"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "How To Build A Gaming PC In 2025 (Step By Step) - YouTube"; URL = "https://www.youtube.com/watch?v=6FMKwCN2d5A"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "How to Build a Gaming PC in 2025! [Full Tutorial] - YouTube"; URL = "https://www.youtube.com/watch?v=3vl1hd9vlqA"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "PCs for game development - a (not so short) guide, mid 2025 edition - Reddit"; URL = "https://www.reddit.com/r/gamedev/comments/1lkj7j2/pcs_for_game_development_a_not_so_short_guide_mid/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "Best PC builds for gaming 2025 - Tom's Hardware"; URL = "https://www.tomshardware.com/best-picks/best-pc-builds-gaming"; Icon = "https://www.tomshardware.com/favicon.ico"},
            @{Title = "Good Gaming PC Builds: A Comprehensive Guide for 2025 - Lenovo"; URL = "https://www.lenovo.com/us/en/knowledgebase/good-gaming-pc-builds-a-comprehensive-guide-for-2025/?srsltid=AfmBOoqlQN0JwboQtw_coketxVOjek1wd73170p9eFDpVpWttE73G_na"; Icon = "https://www.lenovo.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "PC and Console Gaming Report 2025 | Download Now - Newzoo"; URL = "https://newzoo.com/resources/trend-reports/the-pc-console-gaming-report-2025"; Icon = "https://newzoo.com/favicon.ico"},
            @{Title = "PC gaming hardware market skyrockets, will grow 35% in 2025 to ... - Reddit"; URL = "https://www.reddit.com/r/pcgaming/comments/1nlzga1/pc_gaming_hardware_market_skyrockets_will_grow_35/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "Top Gaming Platforms of 2025: Best Interactive Systems"; URL = "https://rocketbrush.com/blog/the-most-popular-gaming-platforms-in-2025"; Icon = "https://rocketbrush.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "What is the best search engine to use heading into 2025? - Reddit"; URL = "https://www.reddit.com/r/browsers/comments/1gfzj8a/what_is_the_best_search_engine_to_use_heading/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "Don't Just Google It: Smarter Search Engines to Try in 2025 | PCMag"; URL = "https://www.pcmag.com/picks/dont-just-google-it-smarter-search-engines-to-try"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "25+ Best Alternative Search Engines To Google (2025) - Analytify"; URL = "https://analytify.io/best-alternative-search-engines/"; Icon = "https://analytify.io/favicon.ico"},
            @{Title = "Top 10 Search Engines in 2025 That Go Beyond Google"; URL = "https://learn.g2.com/top-10-search-engines"; Icon = "https://learn.g2.com/favicon.ico"}
        )
    }
    'Education' = @{
        'NewsUpdates' = @(
            @{Title = "Education Week - K-12 education news and information"; URL = "https://www.edweek.org/"; Icon = "https://www.edweek.org/favicon.ico"},
            @{Title = "The 74 – America's Education News Source"; URL = "https://www.the74million.org/"; Icon = "https://www.the74million.org/favicon.ico"},
            @{Title = "Top 30 Education News Websites and Newsletters in 2025"; URL = "https://news.feedspot.com/education_news_websites/"; Icon = "https://news.feedspot.com/favicon.ico"},
            @{Title = "20 higher education blogs & newsletters to follow in 2025 - Vevox"; URL = "https://www.vevox.com/blog/top-20-blogs-and-newsletters-every-educator-should-follow"; Icon = "https://www.vevox.com/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "America's Top Online Learning Providers 2025 - Newsweek Rankings"; URL = "https://rankings.newsweek.com/americas-top-online-college-2025/americas-top-online-learning-providers-2025"; Icon = "https://rankings.newsweek.com/favicon.ico"},
            @{Title = "Top 100 Tools for Learning 2025 – Results of the 19th Annual ..."; URL = "https://toptools4learning.com/"; Icon = "https://toptools4learning.com/favicon.ico"},
            @{Title = "Massive List of MOOC Platforms Around the World in 2025"; URL = "https://www.classcentral.com/report/mooc-platforms/"; Icon = "https://www.classcentral.com/favicon.ico"},
            @{Title = "The 25 Best Online Course Platforms for 2025 (My Top 5 Picks)"; URL = "https://www.dreamgrow.com/best-online-course-platforms/"; Icon = "https://www.dreamgrow.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "The Best Accredited Online Colleges of 2025 - US News"; URL = "https://www.usnews.com/education/online-education"; Icon = "https://www.usnews.com/favicon.ico"},
            @{Title = "Reviews and Rankings of Top Online Schools"; URL = "https://www.onlineu.com/"; Icon = "https://www.onlineu.com/favicon.ico"},
            @{Title = "America's Top Online Colleges 2025 - Newsweek Rankings"; URL = "https://rankings.newsweek.com/americas-top-online-college-2025"; Icon = "https://rankings.newsweek.com/favicon.ico"},
            @{Title = "Best Online Colleges Of 2025 – Forbes Advisor"; URL = "https://www.forbes.com/advisor/education/online-colleges/best-online-colleges/"; Icon = "https://www.forbes.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "Online Learning Statistics: The Ultimate List in 2025 - Devlin Peck"; URL = "https://www.devlinpeck.com/content/online-learning-statistics"; Icon = "https://www.devlinpeck.com/favicon.ico"},
            @{Title = "50 Online Education Statistics: 2025 Data on Higher Learning ..."; URL = "https://research.com/education/online-education-statistics"; Icon = "https://research.com/favicon.ico"},
            @{Title = "2025 Online Education Trends Report | BestColleges"; URL = "https://www.bestcolleges.com/research/annual-trends-in-online-education/"; Icon = "https://www.bestcolleges.com/favicon.ico"},
            @{Title = "Online Learning Statistics: Is Online Education the Future?"; URL = "https://www.aiu.edu/blog/online-learning-statistics-future-education/"; Icon = "https://www.aiu.edu/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "Top 12 E-Learning Video Platforms in 2025 - VdoCipher"; URL = "https://www.vdocipher.com/blog/2021/01/e-learning-video-platform/"; Icon = "https://www.vdocipher.com/favicon.ico"},
            @{Title = "Ranking: TOP 10 Best ELEARNING Platforms 2025 for Online Training - YouTube"; URL = "https://www.youtube.com/watch?v=g96CkdwLX0k"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "The Best Online Learning Services for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/best-online-learning-services"; Icon = "https://www.pcmag.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "How To Create An Online School In 5 Easy Steps [2025 Guide]"; URL = "https://www.educate-me.co/blog/how-to-create-an-online-school"; Icon = "https://www.educate-me.co/favicon.ico"},
            @{Title = "Ten Promising Practices for Effective Online Teaching"; URL = "https://teachingcommons.stanford.edu/teaching-guides/remote-teaching-guide/getting-started-online/ten-promising-practices-effective"; Icon = "https://teachingcommons.stanford.edu/favicon.ico"},
            @{Title = "9 Online Learning Best Practices for 2025 - Mindstamp"; URL = "https://mindstamp.com/blog/online-learning-best-practices"; Icon = "https://mindstamp.com/favicon.ico"},
            @{Title = "How to Teach Online in 2025 - The 7 Important Steps to Consider"; URL = "https://www.teachersoftomorrow.org/blog/insights/how-to-teach-online/"; Icon = "https://www.teachersoftomorrow.org/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "Discovery Education: Education Platform & Learning Resources for ..."; URL = "https://www.discoveryeducation.com/"; Icon = "https://www.discoveryeducation.com/favicon.ico"},
            @{Title = "Top 100 Tools for Learning 2025 – Results of the 19th Annual ..."; URL = "https://toptools4learning.com/"; Icon = "https://toptools4learning.com/favicon.ico"},
            @{Title = "Online Learning Consortium"; URL = "https://onlinelearningconsortium.org/"; Icon = "https://onlinelearningconsortium.org/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "Top 100 Tools for Learning 2025 – Results of the 19th Annual ..."; URL = "https://toptools4learning.com/"; Icon = "https://toptools4learning.com/favicon.ico"},
            @{Title = "22 Best Online Learning Platforms for 2025: Top Web-Based ..."; URL = "https://research.com/software/best-online-learning-platforms"; Icon = "https://research.com/favicon.ico"},
            @{Title = "The Top 10 Online Learning Platforms for 2025 - Thinkific"; URL = "https://www.thinkific.com/blog/online-learning-platforms/"; Icon = "https://www.thinkific.com/favicon.ico"},
            @{Title = "Discovery Education: Education Platform & Learning Resources for ..."; URL = "https://www.discoveryeducation.com/"; Icon = "https://www.discoveryeducation.com/favicon.ico"}
        )
    }
    'Finance' = @{
        'NewsUpdates' = @(
            @{Title = "The Best Personal Finance and Budgeting Apps for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-personal-finance-services"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "Best Personal Finance Tools for 2025 | Purdue Global"; URL = "https://www.purdueglobal.edu/blog/student-life/budgeting-apps-personal-finance-tools/"; Icon = "https://www.purdueglobal.edu/favicon.ico"},
            @{Title = "The best personal finance services in 2025: Expert tested - ZDNET"; URL = "https://www.zdnet.com/article/best-personal-finance-services/"; Icon = "https://www.zdnet.com/favicon.ico"},
            @{Title = "Best personal finance software of 2025 - TechRadar"; URL = "https://www.techradar.com/best/best-personal-finance-software"; Icon = "https://www.techradar.com/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "The Best Personal Finance and Budgeting Apps for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-personal-finance-services"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The top 17 free personal finance software options for 2025 - Expensify"; URL = "https://use.expensify.com/resource-center/guides/free-personal-finance-software"; Icon = "https://use.expensify.com/favicon.ico"},
            @{Title = "9 Best Financial Account Aggregators for Family Offices in 2025"; URL = "https://masttro.com/insights/best-financial-account-aggregators"; Icon = "https://masttro.com/favicon.ico"},
            @{Title = "The best personal finance services in 2025: Expert tested - ZDNET"; URL = "https://www.zdnet.com/article/best-personal-finance-services/"; Icon = "https://www.zdnet.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "The Best Personal Finance and Budgeting Apps for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-personal-finance-services"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "Best Budgeting Apps of 2025 – Forbes Advisor"; URL = "https://www.forbes.com/advisor/banking/best-budgeting-apps/"; Icon = "https://www.forbes.com/favicon.ico"},
            @{Title = "The top 17 free personal finance software options for 2025 - Expensify"; URL = "https://use.expensify.com/resource-center/guides/free-personal-finance-software"; Icon = "https://use.expensify.com/favicon.ico"},
            @{Title = "Best Financial Planning Software Of 2025 | Bankrate"; URL = "https://www.bankrate.com/investing/financial-advisors/best-financial-planning-software/"; Icon = "https://www.bankrate.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "Personal Finance & Money Management Software Developers in ..."; URL = "https://www.ibisworld.com/united-states/industry/personal-finance-money-management-software-developers/4756/"; Icon = "https://www.ibisworld.com/favicon.ico"},
            @{Title = "Personal Finance Software Market Size, Share | Growth [2032]"; URL = "https://www.fortunebusinessinsights.com/personal-finance-software-market-112683"; Icon = "https://www.fortunebusinessinsights.com/favicon.ico"},
            @{Title = "US Personal Finance Software Market | Size & Growth | 2034"; URL = "https://www.expertmarketresearch.com/reports/united-states-personal-finance-software-market"; Icon = "https://www.expertmarketresearch.com/favicon.ico"},
            @{Title = "Personal Finance Software Market Size & Share Report 2030"; URL = "https://www.grandviewresearch.com/industry-analysis/personal-finance-software-market-report"; Icon = "https://www.grandviewresearch.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "Best Budgeting Apps Round Up for 2025! - YouTube"; URL = "https://www.youtube.com/watch?v=siW9K2yDFNw"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "The 3 Finance Apps I Use Every Day - YouTube"; URL = "https://www.youtube.com/watch?v=P4cJdRuEHTk"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "2025 YNAB Getting Started Guide - Start To Finish - YouTube"; URL = "https://www.youtube.com/watch?v=hHTT-0EzsTc"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "A Complete Guide to Building a Personal Finance App in 2025"; URL = "https://imaginovation.net/blog/building-personal-finance-app/"; Icon = "https://imaginovation.net/favicon.ico"},
            @{Title = "Best Personal Finance Tools for 2025 | Purdue Global"; URL = "https://www.purdueglobal.edu/blog/student-life/budgeting-apps-personal-finance-tools/"; Icon = "https://www.purdueglobal.edu/favicon.ico"},
            @{Title = "2025 Guide to the Best Money Management Software for Personal ..."; URL = "https://www.zintego.com/blog/2025-guide-to-the-best-money-management-software-for-personal-finances/"; Icon = "https://www.zintego.com/favicon.ico"},
            @{Title = "The top 17 free personal finance software options for 2025 - Expensify"; URL = "https://use.expensify.com/resource-center/guides/free-personal-finance-software"; Icon = "https://use.expensify.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "Best Personal Finance Tools for 2025 | Purdue Global"; URL = "https://www.purdueglobal.edu/blog/student-life/budgeting-apps-personal-finance-tools/"; Icon = "https://www.purdueglobal.edu/favicon.ico"},
            @{Title = "The Best Personal Finance and Budgeting Apps for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-personal-finance-services"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "The top 17 free personal finance software options for 2025 - Expensify"; URL = "https://use.expensify.com/resource-center/guides/free-personal-finance-software"; Icon = "https://use.expensify.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "Best Personal Finance Tools for 2025 | Purdue Global"; URL = "https://www.purdueglobal.edu/blog/student-life/budgeting-apps-personal-finance-tools/"; Icon = "https://www.purdueglobal.edu/favicon.ico"},
            @{Title = "Best Budgeting Apps of 2025 – Forbes Advisor"; URL = "https://www.forbes.com/advisor/banking/best-budgeting-apps/"; Icon = "https://www.forbes.com/favicon.ico"},
            @{Title = "The Best Personal Finance Services in 2025: Expert Tested - ZDNET"; URL = "https://www.zdnet.com/article/best-personal-finance-services/"; Icon = "https://www.zdnet.com/favicon.ico"},
            @{Title = "7 Incredible AI-Driven Personal Finance Tools for 2025 - Strikingly"; URL = "https://www.strikingly.com/blog/posts/7-incredible-ai-driven-personal-finance-tools-2023"; Icon = "https://www.strikingly.com/favicon.ico"}
        )
    }
    'Remote Access' = @{
        'NewsUpdates' = @(
            @{Title = "My Honest Review of 9 Best Remote Desktop Software for 2025"; URL = "https://learn.g2.com/best-remote-desktop-software"; Icon = "https://learn.g2.com/favicon.ico"},
            @{Title = "Best remote desktop software of 2025 - TechRadar"; URL = "https://www.techradar.com/news/best-remote-desktop-software"; Icon = "https://www.techradar.com/favicon.ico"},
            @{Title = "The best remote access software of 2025: Expert tested - ZDNET"; URL = "https://www.zdnet.com/article/best-remote-access-software/"; Icon = "https://www.zdnet.com/favicon.ico"},
            @{Title = "Top 10 remote desktop software solutions for business in 2025"; URL = "https://www.teamviewer.com/en-us/special/top-10-remote-desktop-software-solutions/"; Icon = "https://www.teamviewer.com/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "7 Best Remote Desktop Software Picks for 2025 - Cloudvara"; URL = "https://cloudvara.com/best-remote-desktop-software/"; Icon = "https://cloudvara.com/favicon.ico"},
            @{Title = "The Best Remote Access Software We've Tested for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-remote-access-software"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "Best Remote Software for 2025 : r/sysadmin - Reddit"; URL = "https://www.reddit.com/r/sysadmin/comments/1nx16mu/best_remote_software_for_2025/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "My Honest Review of 9 Best Remote Desktop Software for 2025"; URL = "https://learn.g2.com/best-remote-desktop-software"; Icon = "https://learn.g2.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "My Honest Review of 9 Best Remote Desktop Software for 2025"; URL = "https://learn.g2.com/best-remote-desktop-software"; Icon = "https://learn.g2.com/favicon.ico"},
            @{Title = "Best Remote Desktop Software Reviews 2025 | Gartner Peer Insights"; URL = "https://www.gartner.com/reviews/market/remote-desktop-software"; Icon = "https://www.gartner.com/favicon.ico"},
            @{Title = "The Best Remote Access Software We've Tested for 2025 - PCMag"; URL = "https://www.pcmag.com/picks/the-best-remote-access-software"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "7 Best Remote Desktop Software Picks for 2025 - Cloudvara"; URL = "https://cloudvara.com/best-remote-desktop-software/"; Icon = "https://cloudvara.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "Best Remote Desktop Software Reviews 2025 | Gartner Peer Insights"; URL = "https://www.gartner.com/reviews/market/remote-desktop-software"; Icon = "https://www.gartner.com/favicon.ico"},
            @{Title = "Remote Desktop Software Market Report 2025 Forecast To 2034"; URL = "https://www.thebusinessresearchcompany.com/report/remote-desktop-software-global-market-report"; Icon = "https://www.thebusinessresearchcompany.com/favicon.ico"},
            @{Title = "My Honest Review of 9 Best Remote Desktop Software for 2025"; URL = "https://learn.g2.com/best-remote-desktop-software"; Icon = "https://learn.g2.com/favicon.ico"},
            @{Title = "Remote Desktop Software Market Size, Share | Report [2032]"; URL = "https://www.fortunebusinessinsights.com/remote-desktop-software-market-104278"; Icon = "https://www.fortunebusinessinsights.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "7 Best Remote Desktop Software in 2025 - YouTube"; URL = "https://www.youtube.com/watch?v=wjkH9MpjFFI"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Best Remote Desktop Software (And My Unexpected #1 Pick) - YouTube"; URL = "https://www.youtube.com/watch?v=d6wQnFIuJrA"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Best Remote Desktop Software in 2025 - YouTube"; URL = "https://www.youtube.com/watch?v=jTHi9hD6A9A"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "Enable Remote Desktop on your PC - Microsoft Learn"; URL = "https://learn.microsoft.com/en-us/windows-server/remote/remote-desktop-services/remotepc/remote-desktop-allow-access"; Icon = "https://learn.microsoft.com/favicon.ico"},
            @{Title = "Best Remote Desktop Software Guide 2025 - OpenEDR"; URL = "https://www.openedr.com/blog/remote-desktop-software/"; Icon = "https://www.openedr.com/favicon.ico"},
            @{Title = "How to Set up Windows Remote Desktop (2025) - YouTube"; URL = "https://www.youtube.com/watch?v=WNsv-OQJKag"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "How to Access Remote Computer from Anywhere in 2025?"; URL = "https://remotetopc.com/access-remote-computer-from-anywhere/"; Icon = "https://remotetopc.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "7 Best Remote Desktop Software Picks for 2025 - Cloudvara"; URL = "https://cloudvara.com/best-remote-desktop-software/"; Icon = "https://cloudvara.com/favicon.ico"},
            @{Title = "Top 10 remote desktop software solutions for business in 2025"; URL = "https://www.teamviewer.com/en-us/special/top-10-remote-desktop-software-solutions/"; Icon = "https://www.teamviewer.com/favicon.ico"},
            @{Title = "Best Remote Desktop Software Reviews 2025 | Gartner Peer Insights"; URL = "https://www.gartner.com/reviews/market/remote-desktop-software"; Icon = "https://www.gartner.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "Don't Just Google It: Smarter Search Engines to Try in 2025 | PCMag"; URL = "https://www.pcmag.com/picks/dont-just-google-it-smarter-search-engines-to-try"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "10 Best Search Engines in US 2025 - AdsPower"; URL = "https://www.adspower.com/blog/10-best-search-engines-us"; Icon = "https://www.adspower.com/favicon.ico"},
            @{Title = "The Best AI Search Engine in 2025? I Tested 6 of Them - Jotform"; URL = "https://www.jotform.com/ai/ai-search-engines/"; Icon = "https://www.jotform.com/favicon.ico"},
            @{Title = "Hacker Search Engines in 2025: Shodan, Censys, Google Dorks"; URL = "https://www.5minutebreach.com/p/hacker-search-engines"; Icon = "https://www.5minutebreach.com/favicon.ico"}
        )
    }
    'Maintenance' = @{
        'NewsUpdates' = @(
            @{Title = "Best PC cleaner of 2025 - TechRadar"; URL = "https://www.techradar.com/best/pc-optimizer"; Icon = "https://www.techradar.com/favicon.ico"},
            @{Title = "20 Best Computer Repair Websites of 2025 I CyberOptik"; URL = "https://www.cyberoptik.net/blog/best-computer-repair-websites/"; Icon = "https://www.cyberoptik.net/favicon.ico"},
            @{Title = "5 Best PC Repair Software in 2025 - Fix and Optimize Your PC"; URL = "https://www.restorex360.com/5-best-pc-repair-software/"; Icon = "https://www.restorex360.com/favicon.ico"},
            @{Title = "Top 10 Best Free PC Tools You Need in 2025 - System Plus"; URL = "https://system.plus/2025/08/05/best-free-tools-2024/"; Icon = "https://system.plus/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "5 Best PC Repair Software in 2025: Tools to Fix Your PC"; URL = "https://www.safetydetectives.com/blog/best-pc-repair-software/"; Icon = "https://www.safetydetectives.com/favicon.ico"},
            @{Title = "Top 10 Maintenance Management Tools in 2025 - scmGalaxy"; URL = "https://www.scmgalaxy.com/tutorials/top-10-maintenance-management-tools-in-2025-features-pros-cons-comparison/"; Icon = "https://www.scmgalaxy.com/favicon.ico"},
            @{Title = "Top PC Repair Tools For Peak Performance In 2025 - MSPoweruser"; URL = "https://mspoweruser.com/top-pc-repair-tools-for-peak-performance-in-2025/"; Icon = "https://mspoweruser.com/favicon.ico"},
            @{Title = "Top 10 Best Computer Repair Shop Software in 2025"; URL = "https://blog.9cv9.com/top-10-best-computer-repair-shop-software-in-2025/"; Icon = "https://blog.9cv9.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "Best PC cleaner of 2025 - TechRadar"; URL = "https://www.techradar.com/best/pc-optimizer"; Icon = "https://www.techradar.com/favicon.ico"},
            @{Title = "The Best Tune-Up Utilities - PCMag"; URL = "https://www.pcmag.com/picks/the-best-tune-up-utilities"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "5 Best PC Repair Software in 2025: Tools to Fix Your PC"; URL = "https://www.safetydetectives.com/blog/best-pc-repair-software/"; Icon = "https://www.safetydetectives.com/favicon.ico"},
            @{Title = "Top 10 PC/MAC Optimization Tools 2025 - GeekByter"; URL = "https://www.geekbyter.com/top-10-optimization-tools/"; Icon = "https://www.geekbyter.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "25 Maintenance Stats, Trends, And Insights For 2026 - MaintainX"; URL = "https://www.getmaintainx.com/blog/maintenance-stats-trends-and-insights"; Icon = "https://www.getmaintainx.com/favicon.ico"},
            @{Title = "Emerging Trends in Computer Repair: What to Expect in 2025"; URL = "https://sparkservices.net/computer-repair-trends-2025"; Icon = "https://sparkservices.net/favicon.ico"},
            @{Title = "Electronic & Computer Repair Services in the US industry analysis"; URL = "https://www.ibisworld.com/united-states/industry/electronic-computer-repair-services/1702/"; Icon = "https://www.ibisworld.com/favicon.ico"},
            @{Title = "Top 15 Predictive Maintenance Tools in 2025 - Research AIMultiple"; URL = "https://research.aimultiple.com/predictive-maintenance-vs-preventive-maintenance/"; Icon = "https://research.aimultiple.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "Best Free System Cleanup Tools for Windows PCs in 2025 - YouTube"; URL = "https://www.youtube.com/watch?v=Kidf3-pzbDQ"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Easy Step by Step Guide to Cleaning and Maintaining Your Gaming ... - YouTube"; URL = "https://www.youtube.com/watch?v=3Ss-SNeZZV0"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Computer Service and Repair, ©2025, Product Overview - YouTube"; URL = "https://www.youtube.com/watch?v=NiWCdvyDleM"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "Your Ultimate Guide To Home Computer Maintenance in 2025"; URL = "https://deanvallentine.com/home-computer-maintenance"; Icon = "https://deanvallentine.com/favicon.ico"},
            @{Title = "Complete Computer Maintenance Guide: Keep Your PC Running ..."; URL = "https://www.hp.com/us-en/shop/tech-takes/10-essential-computer-maintenance-tips"; Icon = "https://www.hp.com/favicon.ico"},
            @{Title = "IT Preventive Maintenance: Guide, Tools, and Checklist - Workwize"; URL = "https://www.goworkwize.com/blog/it-preventive-maintenance-guide"; Icon = "https://www.goworkwize.com/favicon.ico"},
            @{Title = "2025 General Mini PC Guide USA : r/MiniPCs - Reddit"; URL = "https://www.reddit.com/r/MiniPCs/comments/1hxtacs/2025_general_mini_pc_guide_usa/"; Icon = "https://www.reddit.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "Best PC cleaner of 2025 - TechRadar"; URL = "https://www.techradar.com/best/pc-optimizer"; Icon = "https://www.techradar.com/favicon.ico"},
            @{Title = "The Best Tools for Cleaning and Optimizing Your PC | Geeks2You"; URL = "https://geeks2you.com/the-best-tools-for-cleaning-and-optimizing-your-pc/"; Icon = "https://geeks2you.com/favicon.ico"},
            @{Title = "The Best Tune-Up Utilities - PCMag"; URL = "https://www.pcmag.com/picks/the-best-tune-up-utilities"; Icon = "https://www.pcmag.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "9 Alternative Search Engines Other Than Google in 2025"; URL = "https://www.monsterinsights.com/alternative-search-engines/"; Icon = "https://www.monsterinsights.com/favicon.ico"},
            @{Title = "What Are the Best Search Engines in 2025? - Coalition Technologies"; URL = "https://coalitiontechnologies.com/blog/what-are-the-best-search-engines-in-2025"; Icon = "https://coalitiontechnologies.com/favicon.ico"},
            @{Title = "What is the best search engine to use heading into 2025? - Reddit"; URL = "https://www.reddit.com/r/browsers/comments/1gfzj8a/what_is_the_best_search_engine_to_use_heading/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "25+ Best Alternative Search Engines To Google (2025) - Analytify"; URL = "https://analytify.io/best-alternative-search-engines/"; Icon = "https://analytify.io/favicon.ico"}
        )
    }
    'Shortcuts' = @{
        'NewsUpdates' = @(
            @{Title = "12 Best Productivity Newsletters To Sign Up For In 2025"; URL = "https://thedigitalprojectmanager.com/productivity/best-productivity-newsletters/"; Icon = "https://thedigitalprojectmanager.com/favicon.ico"},
            @{Title = "What are the best productivity newsletters you are subscribed to?"; URL = "https://www.reddit.com/r/ProductivityApps/comments/1j0wt2w/what_are_the_best_productivity_newsletters_you/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "100 Best Productivity Blogs and Websites in 2025 - FeedSpot"; URL = "https://bloggers.feedspot.com/productivity-blogs/"; Icon = "https://bloggers.feedspot.com/favicon.ico"},
            @{Title = "Shortcuts Power-Ups: Automations You'll Actually Use on iPhone ..."; URL = "https://www.macobserver.com/tips/round-ups/shortcuts-power-ups-automations-youll-actually-use-on-iphone-mac/"; Icon = "https://www.macobserver.com/favicon.ico"}
        )
        'Aggregators' = @(
            @{Title = "From Chaos to Clarity: Your 2025 Toolkit of 10 Essential Productivity ..."; URL = "https://medium.com/%40ChaosEngineer/from-chaos-to-clarity-your-2025-toolkit-of-10-essential-productivity-apps-c572c4628ca1"; Icon = "https://medium.com/favicon.ico"},
            @{Title = "My Productivity Workflow 2025: Task Management + Apple ..."; URL = "https://techiemusings.com/2024/12/30/my-productivity-workflow-2025-task-management-apple-shortcuts-gmail-chrome-extension-with-noteplan/"; Icon = "https://techiemusings.com/favicon.ico"},
            @{Title = "7 Best Productivity Apps I Use In 2025 | 100+ Tools Tested"; URL = "https://thebusinessdive.com/productivity-apps"; Icon = "https://thebusinessdive.com/favicon.ico"},
            @{Title = "The best AI productivity tools in 2025 - Zapier"; URL = "https://zapier.com/blog/best-ai-productivity-tools/"; Icon = "https://zapier.com/favicon.ico"}
        )
        'RatingsReviews' = @(
            @{Title = "The Best Productivity Apps for 2025: Work Smarter, Not Harder - PCMag"; URL = "https://www.pcmag.com/picks/best-productivity-apps"; Icon = "https://www.pcmag.com/favicon.ico"},
            @{Title = "31 Best Productivity Apps & Productivity Software For 2025"; URL = "https://thedigitalprojectmanager.com/tools/best-productivity-apps-tools/"; Icon = "https://thedigitalprojectmanager.com/favicon.ico"},
            @{Title = "Top Productivity Software for Shortcut in 2025 - Slashdot"; URL = "https://slashdot.org/software/productivity/for-shortcut/"; Icon = "https://slashdot.org/favicon.ico"},
            @{Title = "The 3 Best To-Do List Apps of 2025 | Reviews by Wirecutter"; URL = "https://www.nytimes.com/wirecutter/reviews/best-to-do-list-app/"; Icon = "https://www.nytimes.com/favicon.ico"}
        )
        'Statistics' = @(
            @{Title = "30+ Must-Know Employee Productivity Statistics in 2025 - Archie"; URL = "https://archieapp.co/blog/employee-productivity-statistics/"; Icon = "https://archieapp.co/favicon.ico"},
            @{Title = "20+ Must-Know Time Management Statistics & Facts in 2025"; URL = "https://lifehackmethod.com/blog/time-management-statistics/"; Icon = "https://lifehackmethod.com/favicon.ico"},
            @{Title = "Rethinking productivity: 2025 Workplace statistics - Eptura"; URL = "https://eptura.com/discover-more/blog/rethinking-productivity-2025-workplace-statistics/"; Icon = "https://eptura.com/favicon.ico"},
            @{Title = "20+ Time Management Statistics 2025: Data-Backed Insights"; URL = "https://karyakeeper.com/time-management-statistics/"; Icon = "https://karyakeeper.com/favicon.ico"}
        )
        'Videos' = @(
            @{Title = "My Productivity Workflow 2025: Task Management + ... - YouTube"; URL = "https://www.youtube.com/watch?v=DCecVFgTl14"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "20 Mind-Blowing iOS 26 Shortcuts with Apple Intelligence! - YouTube"; URL = "https://www.youtube.com/watch?v=dwdflqNCZJg"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "10 AMAZING iPhone Productivity tips & tricks - YouTube"; URL = "https://www.youtube.com/watch?v=5MqIzywCrWA"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'HowTos' = @(
            @{Title = "My Top 3 Productivity Hacks in 2025 - YouTube"; URL = "https://www.youtube.com/watch?v=YH-m4sqkaqM"; Icon = "https://www.youtube.com/favicon.ico"},
            @{Title = "Productivity Field Guide 2025 (Standard Edition)"; URL = "https://learn.macsparky.com/p/productivity-standard-25"; Icon = "https://learn.macsparky.com/favicon.ico"},
            @{Title = "The Ultimate Guide to Productivity in 2025: Doing What Matters ..."; URL = "https://medium.com/%40diizzyisemin/the-ultimate-guide-to-productivity-in-2025-doing-what-matters-when-it-matters-af49b9c98bfa"; Icon = "https://medium.com/favicon.ico"},
            @{Title = "Looking back at 2025, what tool actually helped you the most this ... - Reddit"; URL = "https://www.reddit.com/r/productivity/comments/1odxj5a/looking_back_at_2025_what_tool_actually_helped/"; Icon = "https://www.reddit.com/favicon.ico"}
        )
        'Resources' = @(
            @{Title = "25 Proven Productivity Hacks Everyone Should Try in 2025"; URL = "https://blaze.today/blog/productivity-hacks/"; Icon = "https://blaze.today/favicon.ico"},
            @{Title = "Top 40 Tools to Supercharge Your Productivity in 2025"; URL = "https://www.simplilearn.com/tutorials/productivity-tutorial/best-productivity-tools-to-maximize-your-time"; Icon = "https://www.simplilearn.com/favicon.ico"},
            @{Title = "My Top 3 Productivity Hacks in 2025 - YouTube"; URL = "https://www.youtube.com/watch?v=YH-m4sqkaqM"; Icon = "https://www.youtube.com/favicon.ico"}
        )
        'SearchEngines' = @(
            @{Title = "What's the best productivity tool you discovered in 2025 so far?"; URL = "https://www.reddit.com/r/ProductivityApps/comments/1nc12qa/whats_the_best_productivity_tool_you_discovered/"; Icon = "https://www.reddit.com/favicon.ico"},
            @{Title = "9 Productivity Hacks — AI Tools That I'm Using in 2025 - Medium"; URL = "https://andrewbaisden.medium.com/9-productivity-hacks-ai-tools-that-im-using-in-2025-e2ee6ba87d35"; Icon = "https://medium.com/favicon.ico"},
            @{Title = "17 best AI productivity tools in 2025: tested and reviewed"; URL = "https://blog.superhuman.com/best-ai-tools-for-productivity/"; Icon = "https://blog.superhuman.com/favicon.ico"},
            @{Title = "The best AI productivity tools in 2025 - Zapier"; URL = "https://zapier.com/blog/best-ai-productivity-tools/"; Icon = "https://zapier.com/favicon.ico"}
        )
    }
}

# Example usage: Loop through categories, nodes, and add bookmarks with icons
foreach ($Category in $Bookmarks.Keys) {
    Write-Host "Installing bookmarks for $Category..."
    foreach ($Node in $Bookmarks[$Category].Keys) {
        Write-Host "  -> $Node node..."
        foreach ($Bookmark in $Bookmarks[$Category][$Node]) {
            # Your bookmark installation logic here, e.g.:
            # New-Item -Path "Favorites\$Category\$Node\$($Bookmark.Title)" -Value $Bookmark.URL
            # Add icon if supported: $Bookmark.Icon
        }
    }
}