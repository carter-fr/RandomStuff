local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Ninja Legends", _G.Theme)

local AutoFarm = Window:NewTab("AutoFarm")
local AutoFarmSection = AutoFarm:NewSection("AutoFarm")


AutoFarmSection:NewLabel("Made by carterfr#9709")

AutoFarmSection:NewToggle("Auto Swing", "Automatically swings your sword for you!", function(v)
    getgenv().autoswing = v
    while true do
        if not getgenv().autoswing then return end
        for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:FindFirstChild("ninjitsuGain") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                break
            end
        end
        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
        wait(0.1)
    end
end)


AutoFarmSection:NewToggle("Auto Sell", "Automatically sells!", function(sell)
    getgenv().autosell = sell
   while wait() do 
    if getgenv().autosell == true then 
        local CFrameLog = Instance.new("Part", game.Lighting)
CFrameLog.CFrame = game:GetService("Workspace").sellAreaCircles.sellAreaCircle2.circleInner.CFrame
CFrameLog.CanCollide = false
CFrameLog.Transparency = 1
CFrameLog.Name = "CFrameLog"
game:GetService("Workspace").sellAreaCircles.sellAreaCircle2.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
game:GetService("Workspace").sellAreaCircles.sellAreaCircle2.circleInner.CFrame = game.Lighting.CFrameLog.CFrame
wait()
game.Lighting.CFrameLog:Destroy()
    end
end
end)

AutoFarmSection:NewToggle("Auto Coin", "Automatically pick up coins!", function(coin)
getgenv().autocoin = coin
    while wait(0.2) do
        if getgenv().autocoin == true then
    for i,v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
    if v.Name == "Coin" then 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    end
    end
    end
    end
end)


AutoFarmSection:NewToggle("Auto Chi", "Automatically pick up chi!", function(chi1)
    getgenv().autochi = chi1
    while wait(0.2) do 
        if getgenv().autochi == true then
    for i,v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
    if v.Name == "Blue Chi Crate" then 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    end
    end
    end
    end
    end)


AutoFarmSection:NewToggle("AutoFarm Hoops", "Autofarm all of the hoops in the sky!", function(hoopfarm)
            getgenv().hoopfarm = hoopfarm
            while wait() do
          if getgenv().hoopfarm == true then
            for i,v in pairs(workspace.Hoops:GetDescendants()) do
            if v.ClassName == "MeshPart" then

            v.touchPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end
    end)

local AutoBuy = Window:NewTab("AutoBuy")
local AutoBuySection = AutoBuy:NewSection("AutoBuy")

AutoBuySection:NewToggle("Auto Buy Swords", "Automatically buys swords when you have enough money!", function(buysword)
    getgenv().buyswords = buysword
   while wait() do
       if getgenv().buyswords == true then
        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyAllSwords","Inner Peace Island")
    end
end
end)

AutoBuySection:NewToggle("Auto Buy Belts", "Automatically buys belts when you have enough money!", function(buybelts)
    getgenv().buybelts = buybelts
  while wait() do
      if getgenv().buybelts == true then
        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyAllBelts","Inner Peace Island")
      end
end
end)


AutoBuySection:NewToggle("Auto Buy Ranks", "Automatically buys ranks for you when you have enough money!", function(buyrank)
    getgenv().buyrank = buyrank
while wait() do
   if getgenv().buyrank == true then
    for i = 1,#game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren() do
    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyRank", game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()[i].Name)
    end
 end
 end
end)


AutoBuySection:NewToggle("Auto Buy Skills", "Automatically buys skills for you when you have enough money!", function(buyskill)
       getgenv().buyskill = buyskill
while wait() do
       if getgenv().buyskill == true then
        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyAllSkills", "Inner Peace Island")
    end
end
end)

AutoBuySection:NewToggle("Auto Buy Shuriken", "Automatically buys shurikens for you when you have enough money!", function(buyshuriken)
       getgenv().buyshuriken = buyshuriken
while wait() do
       if getgenv().buyshuriken == true then
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("buyAllShurikens", "Inner Peace Island")
end
end
end)

local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc")


MiscSection:NewButton("Unlock Every Island", "Unlocks all islands!", function()
    local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        wait(0.1)
    end
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
end)

MiscSection:NewButton("Get All Elements", "Master all of the elements!", function()
    game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Electral Chaos")
    wait()
    game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Eternity Storm")
    wait()
    game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Shadowfire")
    wait()
    game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Frost")
    wait()
    game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Inferno")
    wait()
    game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Lightning")
    wait()
    game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Masterful Wrath")
    wait()
    game:GetService("ReplicatedStorage").rEvents.elementMasteryEvent:FireServer("Shadow Charge")
    end)    

MiscSection:NewButton("Hide Name", "Hides your name and rank for you AND other players!", function()
    game.Players.LocalPlayer.Character.Head.nameGui:Remove()
end)

MiscSection:NewButton("Go Invisible!", "Makes your character invisible!", function()
game.Players.LocalPlayer.ninjaEvent:FireServer("goInvisible")
end)

MiscSection:NewToggle("Infinite Jump", "Have an infinite ammount of double jumps!", function(infdj)
    getgenv().infdj = infdj
    if getgenv().infdj == true then
        local JumpStore = Instance.new("StringValue", game.Lighting)
        JumpStore.Name = "JumpStore"
        JumpStore.Value = tostring(game.Players.LocalPlayer.multiJumpCount.Value)
        wait(0.1)
        while wait() do
        game.Players.LocalPlayer.multiJumpCount.Value = 999999999999999999
        end
    else
        game.Players.LocalPlayer.multiJumpCount.Value = tostring(game.Lighting.JumpStore.Value)
        wait(0.1)
        game.Lighting.JumpStore:Remove()
    end
end)


MiscSection:NewSlider("WalkSpeed", "Adjusts your players walkspeed!", 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

MiscSection:NewSlider("JumpPower", "Adjusts your players jumppower!", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
MiscSection:NewSlider("FOV", "Adjusts your players FOV!", 150, 0, function(v)
   game.Workspace.Camera.FieldOfView = (v)
end)
