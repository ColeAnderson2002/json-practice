#!/bin/bash

# Fetch METAR data, parse, iterate, and output 6 receiptTime values

curl "https://aviationweather.gov/api/data/metar?ids=KMCI&format=json&taf=false&hours=12&bbox=40%2C-90%2C45%2C-85" | jq -r .[].receiptTime | head -n 6






