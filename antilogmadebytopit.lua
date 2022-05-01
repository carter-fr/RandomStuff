-- RConsole-less HTTP Spy


if not game:IsLoaded() then game.Loaded:Wait() end

-- Set up content variables 
local plr = game:GetService("Players").LocalPlayer
local placeid = game.PlaceId
local executor = identifyexecutor or getexecutor or getexecutorname
executor = (type(executor) == "function" and executor()) or "Unknown"

-- Set up local variables
local ins = table.insert
local rem = table.remove

-- Set up blacklisted stuff
_G.BlockedDomains  = _G.BlockedDomains or {
    "discord.com/api/webhooks/";
    "webhook";
    "websec";
    "000webhost";
    "freehosting";
    "repl";
    "ident.me";
    "ipify.org";
    "dyndns.org";
    "checkip.amazonaws.com";
    "httpbin.org/ip";
    "ifconfig.io";
    "ipaddress.sh";
    "myip.com";
    "ligma.wtf";
    "library.veryverybored";
    "swagmode.xyz";
}
_G.BlockedContent = _G.BlockedContent or {
    plr.Name;
    placeid;
    executor;
}



-- Namecall hook
do
    local ncs = {"HttpGet","HttpPost","HttpGetAsync","HttpPostAsync"}
    for i = 1, #ncs do 
        ncs[ncs[i]] = true
    end
    
    
    
    local oldnc
    oldnc = hookmetamethod(game, "__namecall", function(a,b,...)
        local nc = getnamecallmethod()
        
        if ncs[nc] then

            -- HttpGet or HttpGetAsync
            if (nc:sub(1,7) == "HttpGet") then
                do
                    -- Check for blacklisted domains
                    local blocked = {}
                    for _,url in ipairs(_G.BlockedDomains) do
                        if b:match(url) then
                            ins(blocked, url)
                        end
                    end
                    
                    if (#blocked > 0) then 
                        return
                    end
                end
            elseif (nc:sub(1,8) == "HttpPost") then
                do
                    -- Check for blacklisted domains
                    local blocked = {}
                    for _,url in ipairs(_G.BlockedDomains) do
                        if (b:match(url)) then
                            ins(blocked, url)
                        end
                    end
                    
                    -- Check for blacklisted content 
                    local data = ...
                    for _, content in ipairs(_G.BlockedContent) do 
                        if (data:match(content)) then 
                            ins(blocked, content)
                        end
                    end
                    
                    
                    
                    if (#blocked > 0) then 
                        return
                    end
                end
            end
        end
        
        return oldnc(a,b,...) 
    end)
end
-- Function hook
do 
    
    -- HttpGet
    do

        local old
        old = hookfunction(game.HttpGet,function(a,b,...)
            -- Check for blacklisted domains
            local blocked = {}
            for _,url in ipairs(_G.BlockedDomains) do
                if b:match(url) then
                    ins(blocked, url)
                end
            end
            

            if (#blocked > 0) then 
                return
            end
            return old(a,b,...)
        end)
    end
    -- HttpGetAsync
    do 
        local old
        old = hookfunction(game.HttpGetAsync,function(a,b,...)
            -- Check for blacklisted domains
            local blocked = {}
            for _,url in ipairs(_G.BlockedDomains) do
                if b:match(url) then
                    ins(blocked, url)
                end
            end
            
            if (#blocked > 0) then 
                return
            end
            return old(a,b,...)
        end)
    end
    -- HttpPost
    do 
        local old
        old = hookfunction(game.HttpPost, function(a,b,...)
            -- Check for blacklisted domains
            local blocked = {}
            for _,url in ipairs(_G.BlockedDomains) do
                if b:match(url) then
                    ins(blocked, url)
                end
            end
            
            -- Check for blacklisted content 
            local data = ...
            for _, content in ipairs(_G.BlockedContent) do 
                if (data:match(content)) then 
                    ins(blocked, content)
                end
            end
            
            if (#blocked > 0) then 
                return
            end
            return old(a,b,...)
        end)
    end
    -- HttpPostAsync 
    do 

        local old
        old = hookfunction(game.HttpPostAsync, function(a,b,...)
            -- Check for blacklisted domains
            local blocked = {}
            for _,url in ipairs(_G.BlockedDomains) do
                if b:match(url) then
                    ins(blocked, url)
                end
            end
            
            -- Check for blacklisted content 
            local data = ...
            for _, content in ipairs(_G.BlockedContent) do 
                if (data:match(content)) then 
                    ins(blocked, content)
                end
            end

            if (#blocked > 0) then 
                return
            end
            return old(a,b,...)
        end)
    end
end
-- request hook
do 
    local reqf = 
    ((type(syn) == "table" and type(syn.request) == "function") and syn.request) or 
    ((type(http) == "table" and type(http.request) == "function") and http.request) or
    ((type(fluxus) == "table" and type(fluxus.request) == "function") and fluxus.request) or 
    (http_request or request)
    
    
    if (reqf) then 
        
        do 
            local old
            old = hookfunction(reqf, function(req,...)
                local r_url = req.Url
                local r_method = req.Method
                local r_body = req.Body
                
                local r_headers = req.Headers
                local r_cookies = req.Cookies
                
                
                -- Check for blacklisted domains
                local blocked = {}
                if (r_url) then 
                    for _,url in ipairs(_G.BlockedDomains) do
                        if r_url:match(url) then
                            ins(blocked, url)
                        end
                    end
                end
                
                -- Check for blacklisted content 
                if (r_body) then
                    for _, content in ipairs(_G.BlockedContent) do 
                        if (r_body:match(content)) then 
                            ins(blocked, content)
                        end
                    end
                end
                
                if (#blocked > 0) then 
                    return
                end
                
                return old(req, ...)
            end)
        end
    end
end
