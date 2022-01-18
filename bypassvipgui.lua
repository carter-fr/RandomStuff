-- gui for bypass.vip, using their api
local BypassVIPConsole = Instance.new("ScreenGui")
local BypassVIPConsoleFrame = Instance.new("Frame")
local MainLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Bypass = Instance.new("TextButton")
local Enter = Instance.new("TextBox")
local Clipboard = Instance.new("TextButton")
local Compatability = Instance.new("TextButton")

--Properties:

BypassVIPConsole.Name = "BypassVIPConsole"
BypassVIPConsole.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

BypassVIPConsoleFrame.Name = "BypassVIPConsoleFrame"
BypassVIPConsoleFrame.Parent = BypassVIPConsole
BypassVIPConsoleFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
BypassVIPConsoleFrame.Position = UDim2.new(0.481358737, 0, 0.393258423, 0)
BypassVIPConsoleFrame.Size = UDim2.new(0, 506, 0, 270)

MainLabel.Name = "MainLabel"
MainLabel.Parent = BypassVIPConsoleFrame
MainLabel.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
MainLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
MainLabel.Position = UDim2.new(0.0237154141, 0, 0.0370370373, 0)
MainLabel.Size = UDim2.new(0, 483, 0, 50)
MainLabel.Font = Enum.Font.GothamBold
MainLabel.Text = "Bypass.VIP Console"
MainLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MainLabel.TextSize = 14.000

UICorner.Parent = BypassVIPConsoleFrame

Bypass.Name = "Bypass"
Bypass.Parent = BypassVIPConsoleFrame
Bypass.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Bypass.BorderColor3 = Color3.fromRGB(255, 255, 255)
Bypass.Position = UDim2.new(0.379446626, 0, 0.759259284, 0)
Bypass.Size = UDim2.new(0, 123, 0, 50)
Bypass.Font = Enum.Font.GothamBold
Bypass.Text = "Bypass!"
Bypass.TextColor3 = Color3.fromRGB(255, 255, 255)
Bypass.TextSize = 14.000

Enter.Name = "Enter"
Enter.Parent = BypassVIPConsoleFrame
Enter.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Enter.BorderColor3 = Color3.fromRGB(255, 255, 255)
Enter.Position = UDim2.new(0.0474308282, 0, 0.359259278, 0)
Enter.Size = UDim2.new(0, 458, 0, 50)
Enter.Font = Enum.Font.GothamBold
Enter.Text = "Enter Link to Bypass"
Enter.TextColor3 = Color3.fromRGB(255, 255, 255)
Enter.TextSize = 14.000

Clipboard.Name = "Clipboard"
Clipboard.Parent = BypassVIPConsoleFrame
Clipboard.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Clipboard.BorderColor3 = Color3.fromRGB(255, 255, 255)
Clipboard.Position = UDim2.new(0.0237154141, 0, 0.759259284, 0)
Clipboard.Size = UDim2.new(0, 164, 0, 50)
Clipboard.Font = Enum.Font.GothamBold
Clipboard.Text = "Copy to Clipboard"
Clipboard.TextColor3 = Color3.fromRGB(255, 255, 255)
Clipboard.TextSize = 14.000

Compatability.Name = "Compatability"
Compatability.Parent = BypassVIPConsoleFrame
Compatability.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Compatability.BorderColor3 = Color3.fromRGB(255, 255, 255)
Compatability.Position = UDim2.new(0.654150248, 0, 0.759259284, 0)
Compatability.Size = UDim2.new(0, 172, 0, 50)
Compatability.Font = Enum.Font.GothamBold
Compatability.Text = "Link Compatibility (Print)"
Compatability.TextColor3 = Color3.fromRGB(255, 255, 255)
Compatability.TextSize = 14.000

-- Scripts:

local function UQLPSTX_fake_script() -- BypassVIPConsoleFrame.Dragify 
	local script = Instance.new('LocalScript', BypassVIPConsoleFrame)

	script.Parent.Parent.BypassVIPConsoleFrame.Active = true
	script.Parent.Parent.BypassVIPConsoleFrame.Draggable = true
end
coroutine.wrap(UQLPSTX_fake_script)()

BypassVIPConsoleFrame.Bypass.MouseButton1Down:Connect(function()
    local link = BypassVIPConsoleFrame.Enter.Text
    local request = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
    local bypass = request({
        Url = "https://api.bypass.vip/",
        Method = "POST",
        Body = "url="..link
    })
    BypassVIPConsoleFrame.Enter.Text = "Bypassed!"
wait(1)
    BypassVIPConsoleFrame.Enter.Text = (game:GetService("HttpService"):JSONDecode(bypass.Body).destination)
end)

BypassVIPConsoleFrame.Clipboard.MouseButton1Down:Connect(function()
setclipboard(BypassVIPConsoleFrame.Enter.Text)    
end)

BypassVIPConsoleFrame.Compatability.MouseButton1Down:Connect(function()
    print("Supported Bypass Links: linkvertise.com (all of their domains), adf.ly (all of their domains), exe.io/exey.io/exee.io/exe.app/eio.io, ouo.io/ouo.press, adfoc.us, ay.live, bc.vc/bcvc.live, fc.lc/fc-lc.com, za.gl/za.uy/zee.gl, freehottip.com, ph.apps2app.com, gestyy.com, shortconnect.com, shorte.st/sh.st, aylink.co, sub2get.com, sub2unlock.net/sub2unlock.com, rekonise.com, letsboost.net, mboost.me, sub4unlock.com, ytsubme.com, steps2unlock.com, social-unlock.com, boost.ink, boostme.link/boost.fusedgt.com, bit.ly/bitly.com, cutt.ly, shrto.ml, goo.gl, t.co, tinyurl.com, onlyme.ga, youtube.com, justpaste.it")
end)
