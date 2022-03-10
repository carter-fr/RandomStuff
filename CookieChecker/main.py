print("Cookie Checker, is now starting up!")
import Keep_Alive
import os
import discord, requests
from discord.ext import commands


prefix = ";"
token = ''

client = commands.Bot(command_prefix=prefix)
req = requests.Session()

@client.event
async def on_ready():
  await client.change_presence(activity=discord.Activity(type=discord.ActivityType.watching, name="for Cookie Checks"))

  print('Cookie Checker is up and running!')

@client.command()    
async def check(ctx, cookie):
  check = req.get('https://api.roblox.com/currency/balance', cookies={'.ROBLOSECURITY': str(cookie)})
  if check.status_code ==200:
    userdata = requests.get("https://users.roblox.com/v1/users/authenticated",cookies={".ROBLOSECURITY":cookie}).json()
    user = userdata['name']
    userid = userdata['id']
    display = userdata['displayName']
    userdataone = requests.get(f'https://users.roblox.com/v1/users/{userid}',cookies={".ROBLOSECURITY":cookie}).json()
    a = userdataone['created']
    creation = a[:10]
    import datetime
    now = datetime.datetime.now()
    n = datetime.datetime.strptime(str(creation), "%Y-%m-%d")
    diff = now - n
    days = f"{diff.days}"
    description = userdataone['description']
    if description == "":
     description = " "
     birthcheck = requests.get(f'https://accountinformation.roblox.com/v1/birthdate',cookies={".ROBLOSECURITY":cookie}).json()
     day = birthcheck['birthDay']
     year = birthcheck['birthYear']
     month = birthcheck['birthMonth']
     birth = f'{year}-{month}-{day}'
    gendercheck = requests.get(f'https://accountinformation.roblox.com/v1/gender',cookies={".ROBLOSECURITY":cookie}).json()
    gender = gendercheck['gender']
    if gender == 2:
     gender = 'Male'
    if gender == 3:
     gender = 'Female'
     if gender == 1:
       gender = 'No Input'
    funds = requests.get(f'https://economy.roblox.com/v2/users/{userid}/transaction-totals?timeFrame=Month&transactionType=summary',cookies={".ROBLOSECURITY":cookie}).json()
    creditcheck = requests.get(f'https://billing.roblox.com/v1/credit',cookies={".ROBLOSECURITY":cookie}).json()
    creditone = creditcheck['balance']
    credit = f"${creditone:.2f}"
    stipends = funds['premiumStipendsTotal']
    devex = funds['developerExchangeTotal']
    pending = funds['pendingRobuxTotal']
    friendcheck = requests.get(f'https://friends.roblox.com/v1/users/{userid}/friends/count',cookies={".ROBLOSECURITY":cookie}).json()
    friend = friendcheck['count']
    followercheck = requests.get(f'https://friends.roblox.com/v1/users/{userid}/followers/count',cookies={".ROBLOSECURITY":cookie}).json()
    follower = followercheck['count']
    followingcheck = requests.get(f'https://friends.roblox.com/v1/users/{userid}/followings/count',cookies={".ROBLOSECURITY":cookie}).json()
    following = followingcheck['count']
    frcheck = requests.get(f'https://friends.roblox.com/v1/user/friend-requests/count',cookies={".ROBLOSECURITY":cookie}).json()
    friendreq = frcheck['count']
    phonecheck = requests.get(f'https://accountinformation.roblox.com/v1/phone',cookies={".ROBLOSECURITY":cookie}).json()
    phone = phonecheck['isVerified']
    countrycheck = requests.get(f'https://www.roblox.com/account/settings/account-country',cookies={".ROBLOSECURITY":cookie}).json()
    country = countrycheck['countryName']
    lastonlinecheck = requests.get(f'https://api.roblox.com/users/{userid}/onlinestatus/',cookies={".ROBLOSECURITY":cookie}).json()
    lastonlineone = lastonlinecheck['LastOnline']
    lastonline = lastonlineone[:10]
    emailcheck = requests.get(f'https://accountsettings.roblox.com/v1/email',cookies={".ROBLOSECURITY":cookie}).json()
    email = emailcheck['verified']
    robuxdata = requests.get(f'https://economy.roblox.com/v1/users/{userid}/currency',cookies={".ROBLOSECURITY":cookie}).json()
    robux = robuxdata['robux']
    premiumbool = requests.get(f'https://premiumfeatures.roblox.com/v1/users/{userid}/validate-membership', cookies={".ROBLOSECURITY":cookie}).json()
    rap_dict = requests.get(f'https://inventory.roblox.com/v1/users/{userid}/assets/collectibles?assetType=All&sortOrder=Asc&limit=100',cookies={".ROBLOSECURITY":cookie}).json()
    while rap_dict['nextPageCursor'] != None:
        rap_dict = requests.get(f'https://inventory.roblox.com/v1/users/{userid}/assets/collectibles?assetType=All&sortOrder=Asc&limit=100',cookies={".ROBLOSECURITY":cookie}).json()
    rap = sum(i['recentAveragePrice'] for i in rap_dict['data'])
    thumbnail=requests.get(f"https://thumbnails.roblox.com/v1/users/avatar?userIds={userid}&size=420x420&format=Png&isCircular=false").json()
    image_url = thumbnail["data"][0]["imageUrl"]
    pindata = requests.get('https://auth.roblox.com/v1/account/pin',cookies={".ROBLOSECURITY":cookie}).json()
    pin_bool = pindata["isEnabled"]
    e = discord.Embed(title=f'**Profile Link**',url=f'https://roblox.com/users/{userid}',color=0x00ff80)
    e.set_author(name='You found a valid cookie!')
    e.add_field(name='Username👀:', value = '```' + str(user) + '```')
    e.add_field(name='Display Name👀:', value = '```' + str(display) + '```')
    e.add_field(name='UserID🔍:', value = '```' + str(userid) + '```')
    e.add_field(name='Description📝:', value = '```' + str(description) + '```')
    e.add_field(name='Gender♀:', value = '```' + str(gender) + '```')
    e.add_field(name='Country🏴󠁧󠁢󠁥󠁮󠁧󠁿:', value = '```' + str(country) + '```')
    e.add_field(name='Verified Email🔐:', value = '```' + str(email) + '```')
    e.add_field(name='Pin Enabled🔐:', value='```' + str(pin_bool) + '```')
    e.add_field(name='Verified Phone🔐:', value='```' + str(phone) + '```')
    e.add_field(name='Premium💎:', value = '```' + str(premiumbool) + '```')
    e.add_field(name='Stipends💳:', value = '```' + str(stipends) + '```')
    e.add_field(name='Robux💰:', value = '```' + str(robux) + '```')
    e.add_field(name='Pending-Robux⌛:', value = '```' + str(pending) + '```')
    e.add_field(name='Rap📈:', value='```' + str(rap) + '```')
    e.add_field(name='Credit💰:', value = '```' + str(credit) + '```')
    e.add_field(name='DevEX💱:', value = '```' + str(devex) + '```')
    e.add_field(name='Birth Date🧒:', value = '```' + str(birth) + '```')
    e.add_field(name='Days Old🧒:', value = '```' + str(days) + '```')
    e.add_field(name='Date Created🧒:', value = '```' + str(creation) + '```')
    e.add_field(name='Last Online💻:', value = '```' + str(lastonline) + '```')
    e.add_field(name='Friends😎:', value = '```' + str(friend) + '```')
    e.add_field(name='Friend Requests😎:', value = '```' + str(friendreq) + '```')
    e.add_field(name='Followers🎥:', value = '```' + str(follower) + '```')
    e.add_field(name='Following:😎', value = '```' + str(following) + '```')
    e.add_field(name='Rolimons: ',value=f'https://rolimons.com/player/{userid}', inline=False)
    e.add_field(name='Cookie🍪:', value=f'```{cookie}```', inline=False)
    e.set_thumbnail(url=image_url)
    e.set_footer(text=f'Requested by {ctx.author}',icon_url=ctx.author.avatar_url)
    await ctx.reply(embed=e)
  
  else:
    e = discord.Embed(title='**❌ Cookie is Invalid/Expired! ❌**',color=0xff0000)
    await ctx.reply(embed=e)
Keep_Alive.keep_alive()
client.run(token)
