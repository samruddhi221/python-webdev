import requests
import json

response = requests.get("http://api.stackexchange.com/2.3/questions?order=desc&sort=activity&site=stackoverflow")
print(response.json()['items'])

for questions in response.json()['items']:
    print(questions['title'])
    print(questions['link'])