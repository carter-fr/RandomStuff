# Credit to carterfr#0001 for making this, Valox#0001 for minor help.
import requests
import json
import datetime

with requests.Session() as session:
    account_info = '''
Put User:Pass Combo Here (Make sure you make a valid.txt and an invalid.txt file in the same folder as this file!)
'''
    account_info_array = account_info.replace(":", " ").split()
    username = account_info_array[0]

    getid = requests.get(f'https://api.roblox.com/users/get-by-username?username={username}').json()
    id = getid['Id']

    bancheckreq = requests.get(f"https://users.roblox.com/v1/users/{id}").json()
    banned = bancheckreq['isBanned']

    data = {
    "userIds": {id}
    
    }
  
    lastonlinecheck = requests.post("https://presence.roblox.com/v1/presence/users", data=data).json()

    omga = lastonlinecheck['userPresences']
    omg = omga[0]['lastOnline']
    lastonlinefix = omg[:10]
    now = datetime.datetime.now()
    n = datetime.datetime.strptime(str(lastonlinefix), "%Y-%m-%d")
    diff = now - n
    days = f"{diff.days}"



    if days > '1095' and banned == False:
        with open("valid.txt", "a") as file:
            file.write(account_info + "\n")
    elif days < '1094' or banned == True:
        with open("invalid.txt", "a") as file:
            file.write(account_info + "\n")
