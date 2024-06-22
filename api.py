import requests
import json

print(json.loads(requests.get("https://api.namefake.com/").text)["name"])
