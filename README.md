# ><(((('>
# IOC_Malwr_Scraper
Malwr Scrapper IOC Crontab

Basic bash script for a cronjob, for creating near real-time IOC md5 hash list from positive Malwr hits.

Uses curl to scrape https://malwr.com/analysis/ every 30 minutes for entries with at least 1 positive hit. Extracts the md5 hash using regex from the curl scrape. Removes duplicates, using sort, for overlap.

Aggregation of the scrapes runs twice a day (via crontab), and archives the list into 2 seperate am/pm txt IOC hash lists for importing into security tools.
