# made by carterfr#0001, please don't skid. premium only.
import os
import json
import requests
import time
import random

genTypes = ['man','male','boy','woman','female','girl','babe','noob','bacon','short','tiny','small','long','large','huge','rare','exclusive','visor','pizelcat','haven','sazz','kalani','lamp']

genType = random.choice(genTypes)

    channelId = '964375808426770432'

header = {
    'authorization': "PUT TOKEN HERE"
}


payload = {
    'content': '!gen ' + genType
}

while True:
    send = requests.post(f'https://discord.com/api/v9/channels/{channelId}/messages', data=payload, headers=header)
    time.sleep(random.randint(60, 375))
