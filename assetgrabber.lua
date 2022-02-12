function GetURL(xml)
    for chunk in string.gmatch(xml, "<url>.+/url>") do
        chunk = string.sub(chunk, string.find(chunk, "%d+"))
        chunk = "https://roblox.com/library/"..tostring(chunk)
        return chunk
    end
    return nil
end

local assetid = "assethere"

local linkone = syn.request({
Url = "https://assetdelivery.roblox.com/v1/assetId/"..assetid,
Method = "GET",
})

local gethtml = game:GetService("HttpService"):JSONDecode(linkone.Body).location

local getassetlink = syn.request({
Url = gethtml,
Method = "GET",
})

local d = getassetlink.Body
local url = GetURL(d)
setclipboard(url)
