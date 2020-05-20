import requests

URL = "https://ekgenius-207b2.web.app/AIzaSyBXPna-1pT1k2GzQMVYA8UDM8c5ypyx5ko"

r = requests.get(url=URL)
data = r.content
print(data)
