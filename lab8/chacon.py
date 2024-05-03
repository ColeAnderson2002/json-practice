import json

import json
with open('/workspace/json-practice/data/schacon.repos.json', 'r') as file: 
    data = json.load(file)

with open('chacon.csv', 'w') as csv_file:
    for fields in data[:5]: 
        name = fields['name']
        html_url = fields['html_url']
        updated_at=fields['updated_at']
        visibility = fields['visibility']
        csv_line = f"{name},{html_url},{updated_at},{visibility}\n"
        csv_file.write(csv_line)