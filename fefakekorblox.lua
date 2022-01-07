getgenv().fefakekorblox = true
while wait() do 
    if getgenv().fefakekorblox == true then
        if game.Players.LocalPlayer.Character.Humanoid then 
             if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            game.Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg"):Remove()
            wait(0.1)
            local Replacement = Instance.new("Part",game.Players.LocalPlayer.Character)
            Replacement.Name = "RightUpperLeg"
            Replacement.CanCollide = false
            Replacement.Transparency = 1
            else
                game.Players.LocalPlayer.Character:FindFirstChild("Right Leg"):Remove()
                local Replacement = Instance.new("Part",game.Players.LocalPlayer.Character)
            Replacement.Name = "Right Leg"
            Replacement.CanCollide = false
            Replacement.Transparency = 1
        end
    end
    end
    end
