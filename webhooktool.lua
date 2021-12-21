-- made by carterfr
local WebHookTool = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local OutlineFrames = Instance.new("Frame")
local TextboxFrame = Instance.new("Frame")
local ButtonFrame = Instance.new("Frame")
local Webhook = Instance.new("TextLabel")
local Content = Instance.new("TextLabel")
local Delay = Instance.new("TextLabel")
local ContentBox = Instance.new("TextBox")
local DelayBox = Instance.new("TextBox")
local X = Instance.new("TextButton")
local Icon = Instance.new("ImageLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local MainLabel = Instance.new("TextLabel")
local WebhookUrl = Instance.new("TextBox")
local DelWebhook = Instance.new("TextButton")
local SpamWebhook = Instance.new("TextButton")
local CheckWebhook = Instance.new("TextButton")
local SpamWebhookOther = Instance.new("TextButton")
local SendWebhook = Instance.new("TextButton")
local CheckFrame = Instance.new("Frame")
local OutlineFrames_2 = Instance.new("Frame")
local Contents = Instance.new("TextLabel")
local X_2 = Instance.new("TextButton")
local Icon_2 = Instance.new("ImageLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local MainLabel_2 = Instance.new("TextLabel")

--Properties:

WebHookTool.Name = "WebHookTool"
WebHookTool.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = WebHookTool
MainFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
MainFrame.Position = UDim2.new(0.408450693, 0, 0.304351568, 0)
MainFrame.Size = UDim2.new(0, 615, 0, 355)

OutlineFrames.Name = "OutlineFrame(s)"
OutlineFrames.Parent = MainFrame
OutlineFrames.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
OutlineFrames.BackgroundTransparency = 1.000
OutlineFrames.BorderColor3 = Color3.fromRGB(255, 255, 255)
OutlineFrames.Position = UDim2.new(0.016260162, 0, 0.0326797403, 0)
OutlineFrames.Size = UDim2.new(0, 594, 0, 284)

TextboxFrame.Name = "TextboxFrame"
TextboxFrame.Parent = OutlineFrames
TextboxFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextboxFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextboxFrame.Position = UDim2.new(0.00673400657, 0, 0.218309864, 0)
TextboxFrame.Size = UDim2.new(0, 590, 0, 166)

ButtonFrame.Name = "ButtonFrame"
ButtonFrame.Parent = OutlineFrames
ButtonFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
ButtonFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
ButtonFrame.Position = UDim2.new(0.00673400657, 0, 0.830985904, 0)
ButtonFrame.Size = UDim2.new(0, 590, 0, 100)

Webhook.Name = "Webhook"
Webhook.Parent = MainFrame
Webhook.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Webhook.BorderColor3 = Color3.fromRGB(255, 255, 255)
Webhook.Position = UDim2.new(0.0422764234, 0, 0.230000973, 0)
Webhook.Size = UDim2.new(0, 157, 0, 46)
Webhook.Font = Enum.Font.GothamBold
Webhook.Text = "Webhook:"
Webhook.TextColor3 = Color3.fromRGB(255, 255, 255)
Webhook.TextSize = 14.000

Content.Name = "Content"
Content.Parent = MainFrame
Content.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Content.BorderColor3 = Color3.fromRGB(255, 255, 255)
Content.Position = UDim2.new(0.0422764271, 0, 0.374132395, 0)
Content.Size = UDim2.new(0, 157, 0, 46)
Content.Font = Enum.Font.GothamBold
Content.Text = "Content:"
Content.TextColor3 = Color3.fromRGB(255, 255, 255)
Content.TextSize = 14.000

Delay.Name = "Delay"
Delay.Parent = MainFrame
Delay.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Delay.BorderColor3 = Color3.fromRGB(255, 255, 255)
Delay.Position = UDim2.new(0.0422764271, 0, 0.520629644, 0)
Delay.Size = UDim2.new(0, 157, 0, 46)
Delay.Font = Enum.Font.GothamBold
Delay.Text = "Delay:"
Delay.TextColor3 = Color3.fromRGB(255, 255, 255)
Delay.TextSize = 14.000

ContentBox.Name = "ContentBox"
ContentBox.Parent = MainFrame
ContentBox.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
ContentBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
ContentBox.Position = UDim2.new(0.32520324, 0, 0.374132395, 0)
ContentBox.Size = UDim2.new(0, 397, 0, 46)
ContentBox.Font = Enum.Font.GothamBold
ContentBox.Text = ""
ContentBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ContentBox.TextScaled = true
ContentBox.TextSize = 14.000
ContentBox.TextWrapped = true

DelayBox.Name = "DelayBox"
DelayBox.Parent = MainFrame
DelayBox.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
DelayBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
DelayBox.Position = UDim2.new(0.32520324, 0, 0.517812788, 0)
DelayBox.Size = UDim2.new(0, 397, 0, 46)
DelayBox.Font = Enum.Font.GothamBold
DelayBox.Text = ""
DelayBox.TextColor3 = Color3.fromRGB(255, 255, 255)
DelayBox.TextScaled = true
DelayBox.TextSize = 14.000
DelayBox.TextWrapped = true

X.Name = "X"
X.Parent = MainFrame
X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
X.BackgroundTransparency = 1.000
X.Position = UDim2.new(0.939837396, 0, 0, 0)
X.Size = UDim2.new(0, 37, 0, 36)
X.Font = Enum.Font.SourceSans
X.Text = ""
X.TextColor3 = Color3.fromRGB(0, 0, 0)
X.TextSize = 14.000

Icon.Name = "Icon"
Icon.Parent = X
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.0238474011, 0, 0, 0)
Icon.Size = UDim2.new(0, 51, 0, 36)
Icon.Image = "rbxassetid://7072725342"

UIAspectRatioConstraint.Parent = Icon

MainLabel.Name = "MainLabel"
MainLabel.Parent = MainFrame
MainLabel.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
MainLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
MainLabel.Position = UDim2.new(0.0227642283, 0, 0.0326797403, 0)
MainLabel.Size = UDim2.new(0, 556, 0, 50)
MainLabel.Font = Enum.Font.GothamBold
MainLabel.Text = "WebhookTool"
MainLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MainLabel.TextSize = 23.000

WebhookUrl.Name = "WebhookUrl"
WebhookUrl.Parent = MainFrame
WebhookUrl.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
WebhookUrl.BorderColor3 = Color3.fromRGB(255, 255, 255)
WebhookUrl.Position = UDim2.new(0.32520324, 0, 0.230000943, 0)
WebhookUrl.Size = UDim2.new(0, 397, 0, 46)
WebhookUrl.Font = Enum.Font.GothamBold
WebhookUrl.Text = ""
WebhookUrl.TextColor3 = Color3.fromRGB(255, 255, 255)
WebhookUrl.TextScaled = true
WebhookUrl.TextSize = 14.000
WebhookUrl.TextWrapped = true

DelWebhook.Name = "DelWebhook"
DelWebhook.Parent = MainFrame
DelWebhook.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
DelWebhook.BorderColor3 = Color3.fromRGB(255, 255, 255)
DelWebhook.Position = UDim2.new(0.656910598, 0, 0.71830982, 0)
DelWebhook.Size = UDim2.new(0, 193, 0, 50)
DelWebhook.Font = Enum.Font.GothamBold
DelWebhook.Text = "Delete Webhook"
DelWebhook.TextColor3 = Color3.fromRGB(255, 255, 255)
DelWebhook.TextSize = 14.000

SpamWebhook.Name = "SpamWebhook"
SpamWebhook.Parent = MainFrame
SpamWebhook.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
SpamWebhook.BorderColor3 = Color3.fromRGB(255, 255, 255)
SpamWebhook.Position = UDim2.new(0.0422764234, 0, 0.71830982, 0)
SpamWebhook.Size = UDim2.new(0, 187, 0, 50)
SpamWebhook.Font = Enum.Font.GothamBold
SpamWebhook.Text = "Spam Webhook"
SpamWebhook.TextColor3 = Color3.fromRGB(255, 255, 255)
SpamWebhook.TextSize = 14.000

CheckWebhook.Name = "CheckWebhook"
CheckWebhook.Parent = MainFrame
CheckWebhook.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
CheckWebhook.BorderColor3 = Color3.fromRGB(255, 255, 255)
CheckWebhook.Position = UDim2.new(0.359349698, 0, 0.718309879, 0)
CheckWebhook.Size = UDim2.new(0, 175, 0, 50)
CheckWebhook.Font = Enum.Font.GothamBold
CheckWebhook.Text = "Check Webhook"
CheckWebhook.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckWebhook.TextSize = 14.000

SpamWebhookOther.Name = "SpamWebhookOther"
SpamWebhookOther.Parent = MainFrame
SpamWebhookOther.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
SpamWebhookOther.BorderColor3 = Color3.fromRGB(255, 255, 255)
SpamWebhookOther.Position = UDim2.new(0.0419999994, 0, 0.717999995, 0)
SpamWebhookOther.Size = UDim2.new(0, 187, 0, 50)
SpamWebhookOther.Visible = false
SpamWebhookOther.Font = Enum.Font.GothamBold
SpamWebhookOther.Text = "Spam Webhook - On"
SpamWebhookOther.TextColor3 = Color3.fromRGB(255, 255, 255)
SpamWebhookOther.TextSize = 14.000

SendWebhook.Name = "SendWebhook"
SendWebhook.Parent = MainFrame
SendWebhook.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
SendWebhook.BorderColor3 = Color3.fromRGB(255, 255, 255)
SendWebhook.Position = UDim2.new(0.344715446, 0, 0.881690145, 0)
SendWebhook.Size = UDim2.new(0, 193, 0, 28)
SendWebhook.Font = Enum.Font.GothamBold
SendWebhook.Text = "Send Webhook"
SendWebhook.TextColor3 = Color3.fromRGB(255, 255, 255)
SendWebhook.TextSize = 14.000

CheckFrame.Name = "CheckFrame"
CheckFrame.Parent = WebHookTool
CheckFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
CheckFrame.Position = UDim2.new(0.0314830393, 0, 0.0250578225, 0)
CheckFrame.Size = UDim2.new(0, 451, 0, 247)
CheckFrame.Visible = false

OutlineFrames_2.Name = "OutlineFrame(s)"
OutlineFrames_2.Parent = CheckFrame
OutlineFrames_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
OutlineFrames_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
OutlineFrames_2.Position = UDim2.new(0.013945315, 0, 0.301746577, 0)
OutlineFrames_2.Size = UDim2.new(0, 436, 0, 163)

Contents.Name = "Contents"
Contents.Parent = OutlineFrames_2
Contents.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Contents.BorderColor3 = Color3.fromRGB(255, 255, 255)
Contents.Position = UDim2.new(0.0168674719, 0, 0.0579710416, 0)
Contents.Size = UDim2.new(0, 419, 0, 138)
Contents.Font = Enum.Font.GothamBold
Contents.Text = "-- Content of the Webhook inside of the Webhook URL textbox will display here."
Contents.TextColor3 = Color3.fromRGB(255, 255, 255)
Contents.TextScaled = true
Contents.TextSize = 14.000
Contents.TextWrapped = true
Contents.TextXAlignment = "Left"
Contents.TextYAlignment = "Top"

X_2.Name = "X"
X_2.Parent = CheckFrame
X_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
X_2.BackgroundTransparency = 1.000
X_2.Position = UDim2.new(0.91707319, 0, 0, 0)
X_2.Size = UDim2.new(0, 35, 0, 36)
X_2.Font = Enum.Font.SourceSans
X_2.Text = ""
X_2.TextColor3 = Color3.fromRGB(0, 0, 0)
X_2.TextSize = 14.000

Icon_2.Name = "Icon"
Icon_2.Parent = X_2
Icon_2.BackgroundTransparency = 1.000
Icon_2.Position = UDim2.new(0.0571428575, 0, 0, 0)
Icon_2.Size = UDim2.new(0, 35, 0, 36)
Icon_2.Image = "rbxassetid://7072725342"

UIAspectRatioConstraint_2.Parent = Icon_2

MainLabel_2.Name = "MainLabel"
MainLabel_2.Parent = CheckFrame
MainLabel_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
MainLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
MainLabel_2.Position = UDim2.new(0.0158197619, 0, 0.0373526253, 0)
MainLabel_2.Size = UDim2.new(0, 383, 0, 50)
MainLabel_2.Font = Enum.Font.GothamBold
MainLabel_2.Text = "WebhookTool - Check"
MainLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
MainLabel_2.TextSize = 23.000

-- Scripts:

local function HENDBD_fake_script() -- X.LocalScript 
	local script = Instance.new('LocalScript', X)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent.Parent.WebHookTool:Remove()
	end)
end
coroutine.wrap(HENDBD_fake_script)()
local function LKWUGS_fake_script() -- DelWebhook.LocalScript 
	local script = Instance.new('LocalScript', DelWebhook)

	script.Parent.MouseButton1Down:Connect(function()
		wait(script.Parent.Parent.DelayBox.Text)
		syn.request({
			Url = script.Parent.Parent.WebhookUrl.Text,
			Method = "DELETE"
		})
	end)
end
coroutine.wrap(LKWUGS_fake_script)()
local function JJZK_fake_script() -- SpamWebhook.LocalScript 
	local script = Instance.new('LocalScript', SpamWebhook)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.SpamWebhook.Visible = false
		script.Parent.Parent.SpamWebhookOther.Visible = true
	script.Parent.Parent.SpamWebhook.Text = "Spam Webhook - Off"	
		
		getgenv().spam = true
		while wait(script.Parent.Parent.DelayBox.Text) do 
			if getgenv().spam == true then
	
		
		local webhook = script.Parent.Parent.WebhookUrl.Text
		local content = script.Parent.Parent.ContentBox.Text
		local data = {
			["content"] = content,
		}
		local encode = game:GetService("HttpService"):JSONEncode(data)
		local headers = {
			["content-type"] = "application/json"
		}
	
			syn.request({
				Url = webhook,
				Method = "POST",
				Body = encode,
				Headers = headers
			})
		end
			end
			
	end)
end
coroutine.wrap(JJZK_fake_script)()
local function RSAVQRZ_fake_script() -- CheckWebhook.LocalScript 
	local script = Instance.new('LocalScript', CheckWebhook)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent.CheckFrame.Visible = true
		wait()
	local synreq = syn.request({
			Url = script.Parent.Parent.WebhookUrl.Text,
			Method = "GET"
		})
	
		script.Parent.Parent.Parent.CheckFrame["OutlineFrame(s)"].Contents.Text = synreq.Body
		
	end)
end
coroutine.wrap(RSAVQRZ_fake_script)()
local function JBOO_fake_script() -- SpamWebhookOther.LocalScript 
	local script = Instance.new('LocalScript', SpamWebhookOther)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.SpamWebhook.Visible = true
		script.Parent.Parent.SpamWebhookOther.Visible = false
		script.Parent.Parent.SpamWebhook.Text = "Spam Webhook - Off"	
	
		getgenv().spam = false
		while wait(script.Parent.Parent.DelayBox.Text) do 
			if getgenv().spam == true then
	
	
				local webhook = script.Parent.Parent.WebhookUrl.Text
				local content = script.Parent.Parent.ContentBox.Text
				local data = {
					["content"] = content,
				}
				local encode = game:GetService("HttpService"):JSONEncode(data)
				local headers = {
					["content-type"] = "application/json"
				}
	
				syn.request({
					Url = webhook,
					Method = "POST",
					Body = encode,
					Headers = headers
				})
			end
		end
	
	end)
end
coroutine.wrap(JBOO_fake_script)()
local function OBIXLNU_fake_script() -- SendWebhook.LocalScript 
	local script = Instance.new('LocalScript', SendWebhook)

	script.Parent.MouseButton1Down:Connect(function()
		local data = {
			["content"] = script.Parent.Parent.ContentBox.Text,
		}
		local encode = game:GetService("HttpService"):JSONEncode(data)
		local headers = {
			["content-type"] = "application/json"
		}
		wait(script.Parent.Parent.DelayBox.Text)
		syn.request({
			Url = script.Parent.Parent.WebhookUrl.Text,
			Method = "POST",
			Body = encode,
			Headers = headers
		})
	end)
end
coroutine.wrap(OBIXLNU_fake_script)()
local function SNOV_fake_script() -- MainFrame.Dragify 
	local script = Instance.new('LocalScript', MainFrame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), 'Out', 'Linear', 0.00, true); -- drag speed
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(SNOV_fake_script)()
local function PWVL_fake_script() -- X_2.LocalScript 
	local script = Instance.new('LocalScript', X_2)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent.CheckFrame.Visible = false
		script.Parent.Parent.Parent.CheckFrame["OutlineFrame(s)"].Contents.Text = "-- Content of the Webhook inside of the Webhook URL textbox will display here."
	end)
end
coroutine.wrap(PWVL_fake_script)()
local function DNUR_fake_script() -- CheckFrame.Dragify 
	local script = Instance.new('LocalScript', CheckFrame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), 'Out', 'Linear', 0.00, true); -- drag speed
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(DNUR_fake_script)()
