#!/bin/bash

# Fetch METAR data, parse, iterate, and output 6 receiptTime values

curl "https://aviationweather.gov/api/data/metar?ids=KMCI&format=json&taf=false&hours=12&bbox=40%2C-90%2C45%2C-85" | jq -r .[].receiptTime | head -n 6

#outputs:

# 2024-04-15 02:56:17
# 2024-04-15 01:56:17
# 2024-04-15 00:56:22
# 2024-04-14 23:56:20
# 2024-04-14 22:56:12
# 2024-04-14 21:56:19 





