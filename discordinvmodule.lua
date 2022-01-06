--[[
How to use:



]]

local inv = {}

function inv:discordInvite(inviteCode)
syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = inviteCode,
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
  end
return inv
