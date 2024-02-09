local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("หมาขาว HUB", "Ocean")
local Tab = Window:NewTab("คนสร้าง")
local Section = Tab:NewSection("BYหมาขาว")
local Tab = Window:NewTab("ฟาม")
local Section = Tab:NewSection("ฟาม")
Section:NewToggle("แตงโม", "แตงโม", function(state)
    if state then
        _G.bringmob = true --ปิด=false  เปิด=true
        while _G.bringmob do wait()
        for i,v in pairs(game:GetService("Workspace").Farm.Watermelon:GetDescendants()) do
             if v.Name == "Sound" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
        wait(.1)
             end 
        end
        end
    else
        _G.bringmob = false --ปิด=false  เปิด=true
        while _G.bringmob do wait()
        for i,v in pairs(game:GetService("Workspace").Farm.Watermelon:GetDescendants()) do
             if v.Name == "Sound" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
        wait(.1)
             end 
        end
        end
    end
end)


local Tab = Window:NewTab("โพ")
local Section = Tab:NewSection("โพ")
Section:NewButton("แตงโม", "แตงโม", function()
    local CFrameEnd = CFrame.new(-3881.4585, 40.471096, 932.458496, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local Time = 0.0001
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Time), {CFrame = CFrameEnd}) tween:Play()
end)

Section:NewButton("Cooking", "Cooking", function()
    
    local args = {
        [1] = "Watermelonjuice",
        [2] = "1"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("cookingEvent"):FireServer(unpack(args))
    
end)

Section:NewButton("ขายแตงโม", "ขายแตงโม", function()
    local args = {
        [1] = "Watermelonjuice",
        [2] = "1"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("WorldMarket_Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    
end)

Section:NewToggle("auto cooking", "cooking", function(state)
    if state then
        _G.bringmob = true --ปิด=false  เปิด=true
        while _G.bringmob do wait()
        local args = {
             [1] = "Watermelonjuice",
             [2] = "1"
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("cookingEvent"):FireServer(unpack(args))
         wait(.1)
        end
        end
        end
    else

        _G.bringmob = false --ปิด=false  เปิด=true
        while _G.bringmob do wait()
        local args = {
             [1] = "Watermelonjuice",
             [2] = "1"
         }
         
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("cookingEvent"):FireServer(unpack(args))
         wait(.1)
        end
        end
        end
end)

    else
        local isOpen = false

while true do
    if isOpen then
        local args = {
            [1] = "Watermelonjuice",
            [2] = "1"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("cookingEvent"):FireServer(unpack(args))
        isOpen = false
    else
        local args = {
            [1] = "Watermelonjuice",
            [2] = "1"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("cookingEvent"):FireServer(unpack(args))    
        isOpen = true
    end
    wait(.1)
end
end
end
