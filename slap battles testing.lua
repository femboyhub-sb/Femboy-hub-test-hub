-- open source
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/DraggableOrionLib/main/main.lua"))()
local Window = OrionLib:MakeWindow({
    Name = "Femboy Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

-- notifications
OrionLib:MakeNotification({
    Name = "Scripts here are useful!",
    Content = "Notification content...",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- auto bob services
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local placeId = game.PlaceId
local currentJob = game.JobId
local req = (syn and syn.request) or (http and http.request) or http_request or request

-- auto bob server hop
local function hop()
    if not req then 
        return TeleportService:Teleport(placeId, lp) 
    end
    local url = "https://roblox.com" .. placeId .. "/servers/Public?sortOrder=Desc&limit=100"
    local res = req({Url = url, Method = "GET"})
    if res and res.Body then
        local data = HttpService:JSONDecode(res.Body)
        if data and data.data then
            for _, server in pairs(data.data) do
                if server.id ~= currentJob and server.playing < server.maxPlayers then
                    local success = pcall(function()
                        TeleportService:TeleportToPlaceInstance(placeId, server.id, lp)
                    end)
                    if success then return end
                end
            end
        end
    end
    TeleportService:Teleport(placeId, lp)
end

-- ================= Slap Battles Badges =================
local Tab1 = Window:MakeTab({
    Name = "Slap Battles Badges",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab1:AddButton({
    Name = "Auto Recall",
    Callback = function()
        print("button pressed")
        local rsanswrr
        repeat 
            task.wait() 
            game:GetService("ReplicatedStorage").RecallReset:FireServer(nil, true) 
            rsanswrr = game:GetService("ReplicatedStorage").RecallLastInteractionSteps:InvokeServer(false) 
        until rsanswrr == "Simon says walk through the portal to collect your reward"
        task.wait(2) 
        game.Players.LocalPlayer.Character.HumanoidRootPart:PivotTo(workspace.RepressedMemories.Portal.CFrame)
    end
})

Tab1:AddButton({
    Name = "Poltergeist (ONLY HALLOWEEN)",
    Callback = function()
        print("button pressed")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nerna-coder/Poltergeist/refs/heads/main/Slap%20battles.lua"))()
    end    
})

Tab1:AddButton({
    Name = "Instant ice skate",
    Callback = function()
        print("button pressed")
        game:GetService("ReplicatedStorage").IceSkate:FireServer("Freeze")
    end    
})

Tab1:AddButton({
    Name = "Instant lamp",
    Callback = function()
        print("button pressed")
        local Event = game:GetService("ReplicatedStorage").nightmare
        local equip = debug.getupvalues(require(game.ReplicatedStorage.BACKEND.Lib.Network).fireServer)[3]("SelectGlove")
        equip:FireServer("ZZZZZZZ")
        task.wait(0.5)
        for i = 35, 120 do
            Event:FireServer("LightBroken")
            task.wait(0.05)
        end
    end    
})

Tab1:AddButton({
    Name = "Auto 250 and Disarm (bubble) uses kill helper!",
    Callback = function()
        print("button pressed")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Thiago3246/KillstreakHelper/main/Source.luau"))()
    end    
})

Tab1:AddButton({
    Name = "Auto Bob (75k+ slaps)",
    Callback = function()
        print("button pressed")
        local equip = debug.getupvalues(require(game.ReplicatedStorage.BACKEND.Lib.Network).fireServer)[3]("SelectGlove")
        equip:FireServer("God's Hand")
        task.wait(0.5)
        game.ReplicatedStorage.TimestopJump:FireServer()
        game.ReplicatedStorage.Timestopchoir:FireServer()
        game.ReplicatedStorage.Timestop:FireServer()
        task.wait(0.1)
        equip:FireServer("Replica")
        task.wait(0.5)
        local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        hrp.CFrame = CFrame.new(-1210.05, 328.22, 2.48, 0.748, -0.000, 0.664, -0.000, 1.000, 0.000, -0.664, -0.000, 0.748)
        task.wait(2)
        local DuplicateEvent = game:GetService("ReplicatedStorage").Duplicate
        for i = 1, 150000 do
            DuplicateEvent:FireServer(true)
            if i % 100 == 0 then
                task.wait()
            end
        end
        task.wait(1)
        hop()
    end    
})

-- ================= Slap Farmers =================
local Tab3 = Window:MakeTab({
    Name = "Slap Farmers",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab3:AddButton({
    Name = "Nexer slap farm v2 (OP!)",
    Callback = function()
        print("button pressed")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NewNexer/NexerHub/refs/heads/main/SB/SFs/SFComponents%3D2.0EGRR.luau"))()
    end    
})

Tab3:AddButton({
    Name = "St1mlx mastery helper (key)",
    Callback = function()
        print("button pressed")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/st1mlx/bebebe/refs/heads/main/SBHub'))()
    end    
})

-- ================= Credits =================
local Tab4 = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab4:AddParagraph("Creators", "silentabsolutedayn")
Tab4:AddParagraph("2nd creator", "nerna coder-zemboxosx")
Tab4:AddParagraph("3rd creator", "deltarune_tomorrow")
Tab4:AddParagraph("Thanks to..", "Nexer open sourced scripts and kindness!")
Tab4:AddParagraph("Thanks to..", "Scripter for shellbert fix, huge appreciation!")

-- ================= Funny =================
local Tab5 = Window:MakeTab({
    Name = "Funny",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab5:AddButton({
    Name = "Click this if you support spliot! Don't if you don't know who it is",
    Callback = function()
        print("button pressed")
        game.Players.LocalPlayer:Kick("if u support spliot then go fucking kill yourself")
    end    
})
-- ================= Tab 5 =================
local Tab5 = Window:MakeTab({
    Name = "Useful",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab5:AddButton({
    Name = "Hide your username",
    Callback = function()
        print("button pressed")
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local LocalPlayer = Players.LocalPlayer

        local function sanitizeCharacter(character)
            if not character then return end
            local humanoid = character:WaitForChild("Humanoid", 5)
            if humanoid then
                humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                humanoid.DisplayName = ""
            end
            local head = character:WaitForChild("Head", 5)
            if not head then return end
            for _, child in pairs(head:GetChildren()) do
                if child:IsA("BillboardGui") then
                    child.Enabled = false
                end
            end
            head.ChildAdded:Connect(function(child)
                if child:IsA("BillboardGui") then
                    child.Enabled = false
                    for _, desc in pairs(child:GetDescendants()) do
                        if desc:IsA("TextLabel") and string.find(string.lower(desc.Text), string.lower(LocalPlayer.Name)) then
                            desc.Visible = false
                        end
                    end
                end
            end)
        end

        if LocalPlayer.Character then
            sanitizeCharacter(LocalPlayer.Character)
        end
        LocalPlayer.CharacterAdded:Connect(function(character)
            sanitizeCharacter(character)
        end)
        RunService.RenderStepped:Connect(function()
            local char = LocalPlayer.Character
            if char and char:FindFirstChild("Head") then
                for _, gui in pairs(char.Head:GetChildren()) do
                    if gui:IsA("BillboardGui") and gui.Enabled then
                        gui.Enabled = false
                    end
                end
            end
        end)
    end    
})

Tab5:AddButton({
    Name = "Teleport GUI",
    Callback = function()
        print("button pressed")
        local ScreenGui = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local DragHeader = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local CloseButton = Instance.new("TextButton")
        local ScrollingFrame = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local OpenButton = Instance.new("TextButton")

        ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        ScreenGui.ResetOnSpawn = false

        Frame.Parent = ScreenGui
        Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Frame.Position = UDim2.new(0.05, 0, 0.2, 0)
        Frame.Size = UDim2.new(0, 230, 0, 400)
        Frame.BorderSizePixel = 0

        DragHeader.Parent = Frame
        DragHeader.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        DragHeader.Size = UDim2.new(1, 0, 0, 30)
        DragHeader.BorderSizePixel = 0

        Title.Parent = DragHeader
        Title.Size = UDim2.new(1, -30, 1, 0)
        Title.BackgroundTransparency = 1
        Title.Text = "  Slap Teleport"
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.Font = Enum.Font.SourceSansBold
        Title.TextSize = 14
        Title.TextXAlignment = Enum.TextXAlignment.Left

        CloseButton.Parent = DragHeader
        CloseButton.Size = UDim2.new(0, 30, 0, 30)
        CloseButton.Position = UDim2.new(1, -30, 0, 0)
        CloseButton.BackgroundTransparency = 1
        CloseButton.Text = "Close"
        CloseButton.TextColor3 = Color3.fromRGB(255, 100, 100)
        CloseButton.Font = Enum.Font.SourceSansBold
        CloseButton.TextSize = 12

        CloseButton.MouseButton1Click:Connect(function()
            Frame.Visible = false
            OpenButton.Visible = true
        end)

        OpenButton.Parent = ScreenGui
        OpenButton.Size = UDim2.new(0, 70, 0, 30)
        OpenButton.Position = UDim2.new(0.05, 0, 0.15, 0)
        OpenButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        OpenButton.BorderSizePixel = 0
        OpenButton.Text = "Open"
        OpenButton.TextColor3 = Color3.fromRGB(100, 255, 100)
        OpenButton.Font = Enum.Font.SourceSansBold
        OpenButton.TextSize = 14
        OpenButton.Visible = false

        OpenButton.MouseButton1Click:Connect(function()
            Frame.Visible = true
            OpenButton.Visible = false
        end)

        ScrollingFrame.Parent = Frame
        ScrollingFrame.Position = UDim2.new(0, 5, 0, 35)
        ScrollingFrame.Size = UDim2.new(1, -10, 1, -40)
        ScrollingFrame.BackgroundTransparency = 1
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 460)
        ScrollingFrame.ScrollBarThickness = 6

        UIListLayout.Parent = ScrollingFrame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)

        local locations = {
            {name = "Main Island", cframe = CFrame.new(1.58, -5.17, 55.70, 0.096, 0.000, 0.995, 0.000, 1.000, -0.000, -0.995, 0.000, 0.096)},
            {name = "Right Island", cframe = CFrame.new(4.39, -5.07, 186.55, -0.999, -0.000, -0.041, -0.000, 1.000, 0.000, 0.041, 0.000, -0.999)},
            {name = "Left Island", cframe = CFrame.new(-16.71, -5.14, -195.11, 0.982, 0.000, 0.190, -0.000, 1.000, 0.000, -0.190, -0.000, 0.982)},
            {name = "Slap Arena Island (Apples)", cframe = CFrame.new(-191.60, -5.28, -10.29, -0.409, 0.000, 0.913, 0.000, 1.000, -0.000, -0.913, -0.000, -0.409)},
            {name = "Slap Spawn Area", cframe = CFrame.new(-376.18, 51.14, -11.84, -0.363, 0.000, 0.932, 0.000, 1.000, -0.000, -0.932, -0.000, -0.363)},
            {name = "Cloud Area", cframe = CFrame.new(-125.00, -4.56, 121.64, -0.356, -0.000, 0.934, -0.000, 1.000, -0.000, -0.934, -0.000, -0.356)},
            {name = "Default Arena", cframe = CFrame.new(118.63, 359.98, 16.11, 0.982, 0.000, -0.191, -0.000, 1.000, 0.000, 0.191, -0.000, 0.982)},
            {name = "Lighthouse Island", cframe = CFrame.new(209.33, -15.72, -0.78, 0.730, 0.000, -0.684, -0.000, 1.000, 0.000, 0.684, -0.000, 0.730)},
            {name = "Cannon Island", cframe = CFrame.new(266.92, 33.68, 198.92, 0.331, -0.000, -0.944, 0.000, 1.000, -0.000, 0.944, 0.000, 0.331)},
            {name = "Hitman (Quests)", cframe = CFrame.new(17897.19, -130.16, -3528.10, -0.972, -0.000, -0.237, 0.000, 1.000, -0.000, 0.237, -0.000, -0.972)},
            {name = "Lobby", cframe = CFrame.new(-1198.29, 327.91, -1.44, 0.008, 0.000, -1.000, -0.000, 1.000, 0.000, 1.000, 0.000, 0.008)}
        }

        local UserInputService = game:GetService("UserInputService")
        local dragging, dragInput, dragStart, startPos

        local function update(input)
            local delta = input.Position - dragStart
            Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        DragHeader.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = Frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)

        DragHeader.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)

        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)

        local function teleport(targetCFrame)
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                player.Character.HumanoidRootPart.CFrame = targetCFrame
            end
        end

        for i, loc in ipairs(locations) do
            local Button = Instance.new("TextButton")
            Button.Parent = ScrollingFrame
            Button.Size = UDim2.new(1, 0, 0, 32)
            Button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.Text = loc.name
            Button.Font = Enum.Font.SourceSans
            Button.TextSize = 14
            Button.BorderSizePixel = 0
            Button.MouseButton1Click:Connect(function()
                teleport(loc.cframe)
            end)
        end
    end   
})

Tab1:AddButton({
    Name = "Instnat firework. Player 1 (helper)",
    Callback = function()
        print("button pressed")
        game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()
        task.wait(0.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1210.05, 328.22, 2.48, 0.748, -0.000, 0.664, -0.000, 1.000, 0.000, -0.664, -0.000, 0.748)
    end    
})

Tab1:AddButton({
    Name = "Instant Firework. Player 2 (main acc)",
    Callback = function()
        print("button pressed")
        local player = game.Players.LocalPlayer
        local hrp = player.Character:WaitForChild("HumanoidRootPart")
        hrp.CFrame = CFrame.new(-1210.05, 328.22, 2.48, 0.748, -0.000, 0.664, -0.000, 1.000, 0.000, -0.664, -0.000, 0.748)
        task.wait(0.3)
        game:GetService("ReplicatedStorage").Firework:InvokeServer()
        game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("AddItem", "Cake Mix")
        task.wait(0.1)
        game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("EquipItem", "Cake Mix")
        task.wait(0.5)
        local ovenModel = workspace:FindFirstChild("Cube", true)
        if ovenModel then
            if ovenModel:IsA("Model") and ovenModel.PrimaryPart then
                hrp.CFrame = ovenModel.PrimaryPart.CFrame * CFrame.new(0, 0, -3)
            elseif ovenModel:IsA("BasePart") then
                hrp.CFrame = ovenModel.CFrame * CFrame.new(0, 3, 0)
            end
        else
            hrp.CFrame = CFrame.new(-1210.05, 328.22, 2.48, 0.748, -0.000, 0.664, -0.000, 1.000, 0.000, -0.664, -0.000, 0.748)
        end
    end    
})

Tab1:AddButton({
    Name = "Auto get plate (with auto executed noclip)",
    Callback = function()
        print("button pressed")
        local lp = game:GetService("Players").LocalPlayer
        local rs = game:GetService("RunService")
        local function target(v)
            if v:IsA("BasePart") and v.Color == Color3.fromRGB(255, 0, 0) then
                v:Destroy()
            end
        end
        for _, v in workspace:GetDescendants() do target(v) end
        workspace.DescendantAdded:Connect(target)
        rs.Stepped:Connect(function()
            local char = lp.Character
            if not char then return end
            for _, v in char:GetDescendants() do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end)
    end
})

Tab5:AddButton({
    Name = "Noclip",
    Callback = function()
        print("button pressed")
        local player = game.Players.LocalPlayer
        local runService = game:GetService("RunService")
        local character = player.Character or player.CharacterAdded:Wait()
        local noclipConnection
        noclipConnection = runService.Stepped:Connect(function()
            if character and character:Parent() then
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide then
                        part.CanCollide = false
                    end
                end
            else
                noclipConnection:Disconnect()
            end
        end)
        player.CharacterAdded:Connect(function(newChar)
            character = newChar
        end)
    end    
})

Tab1:AddButton({
    Name = "Eggler for shellbert (1)",
    Callback = function()
        game:GetService("TeleportService"):Teleport(129665246576996)
    end
})

-- Epilson Lorem Ipsum (Click Detector)
Tab1:AddButton({
    Name = "Eggler for shellbert (2)",
    Callback = function()
        local player = game.Players.LocalPlayer
        local badgeQuestProgress = game:GetService("ReplicatedStorage").PlayerData[player.Name].BadgeQuestProgress
        local questData = badgeQuestProgress.Value
        
        -- Parse the JSON data
        local success, data = pcall(function()
            return game:GetService("HttpService"):JSONDecode(questData)
        end)
        
        if not success then
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Failed to parse quest data",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            return
        end
        
        -- Get the Easter Hunter quest data
        local easterQuest = data["_questChainEasterHunter"]
        
        if easterQuest then
            local completed = easterQuest.completed
            local rewarded = easterQuest.rewarded
            local collectedEggs = easterQuest.counters.collectedEggs or 0
            
            -- Check conditions
            if completed == false and rewarded == false then
                if collectedEggs < 10 then
                    local eggsNeeded = 10 - collectedEggs
                    local eggText = eggsNeeded == 1 and "Egg" or "Eggs"
                    local ownedText = collectedEggs == 1 and "Egg" or "Eggs"
                    
                    OrionLib:MakeNotification({
                        Name = "Easter Egg Hunter",
                        Content = string.format("Finish Easter Egg Hunter Quest First (And Collect %d %s In Total [Owned: %d %s])", 
                            eggsNeeded, eggText, collectedEggs, ownedText),
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    })
                    
                elseif collectedEggs == 10 then
                    -- All eggs collected but quest not completed? Fire click detector
                    fireclickdetector(workspace.EggTeleport.ClickDetector)
                end
                
            elseif completed == true and rewarded == false then
                OrionLib:MakeNotification({
                    Name = "Easter Egg Hunter",
                    Content = "Claim Reward From Easter Egg Hunter Quest First",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
                
            elseif completed == false and rewarded == true then
                OrionLib:MakeNotification({
                    Name = "Easter Egg Hunter",
                    Content = "You Got Bug On Your Quest Please Rejoin",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
                
            elseif completed == true and rewarded == true and collectedEggs == 10 then
                -- Quest complete and reward claimed, fire click detector
                fireclickdetector(workspace.EggTeleport.ClickDetector)
            end
        else
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Easter Hunter quest not found in data",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Tab1:AddButton({
    Name = "Claim Shellbert Reward Glove (Instantly)",
    Callback = function()
game:GetService("ReplicatedStorage").Remotes.GloveReward.Replicate:FireServer()
task.wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.RewardGlove.RewardGlove.CFrame
    end
})

Tab1:AddButton({
    Name = "Insta Lotus (disable verify teleports!)",
    Callback = function()
        print("button pressed")
    -- if you're using delta, turn off your anti teleport first!
loadstring(game:HttpGet('https://pastefy.app/Ds8bqkE9/raw'))()
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

Tab1:AddButton({
    Name = "Auto get doorkeeper (disable verify teleports!)",
    Callback = function()
        print("button pressed")
loadstring(game:HttpGet('https://pastefy.app/zbj5RgPl/raw'))()
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

Tab1:AddButton({
    Name = "Auto get slender (EXPERIMENTAL)",
    Callback = function()
        print("button pressed")
root.CFrame = parent.CFrame
                    else
                        root.CFrame = pocket:GetPivot()
                    end
                end
                
                task.wait(0.3)
                prompt.HoldDuration = 0
                prompt.MaxActivationDistance = 9999
                prompt.RequiresLineOfSight = false

                task.wait(0.1)
                fireproximityprompt(prompt)
                task.wait(0.2)
                fireproximityprompt(prompt)
                task.wait(2)
            end
        end

        local pad = nil
        t = tick() + 10
        repeat
            task.wait(0.2)
            if pocket and pocket:FindFirstChild("PocketKeypad") then
                pad = pocket.PocketKeypad
            else
                local rf = Workspace:FindFirstChild("RoomsFolder")
                if rf then
                    for _, r in ipairs(rf:GetChildren()) do
                        if string.find(r.Name, "'s Room") and r:FindFirstChild("PocketKeypad") then
                            pad = r.PocketKeypad
                            break
                        end
                    end
                end
            end
        until pad or tick() > t

        if pad and pad:FindFirstChild("Buttons") then
            local btns = pad.Buttons
            if btns:FindFirstChild("Reset") and btns.Reset:FindFirstChild("ClickDetector") then
                fireclickdetector(btns.Reset.ClickDetector)
                task.wait(0.3)
            end

            for i = 1, #code do
                local char = code:sub(i, i)
                local b = btns:FindFirstChild(char)
                if b and b:FindFirstChild("ClickDetector") then
                    fireclickdetector(b.ClickDetector)
                    task.wait(0.4)
                end
            end

            task.wait(0.3)
            if btns:FindFirstChild("Enter") and btns.Enter:FindFirstChild("ClickDetector") then
                fireclickdetector(btns.Enter.ClickDetector)
                task.wait(1)
            end
        end

        local function getPages()
            local bRoom = Workspace:FindFirstChild("BountyHunterRoom")
            if bRoom then
                local m = bRoom:FindFirstChild("BountyHunterMysteryRoom")
                if m and m:FindFirstChild("Pages") then
                    for _, p in ipairs(m.Pages:GetChildren()) do
                        local cd = p:FindFirstChild("ClickDetector")
                        if cd then fireclickdetector(cd) end
                    end
                end
            end

            for _, o in ipairs(Workspace:GetDescendants()) do
                if o.Name == "Pages" or string.find(o.Name:lower(), "page") then
                    for _, p in ipairs(o:GetChildren()) do
                        local cd = p:FindFirstChild("ClickDetector")
                        if cd then fireclickdetector(cd) end
                    end
                end
            end
        end

        getPages()
        task.wait(0.5)
        reset()
    end

elseif game.PlaceId == 132277598079047 then
    local folder = workspace:WaitForChild("Pages", 10)
    if folder then
        for _, obj in ipairs(folder:GetChildren()) do
            if obj:FindFirstChild("Part") and obj.Part:FindFirstChildWhichIsA("ProximityPrompt") then
                local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
                local hrp = char:FindFirstChild("HumanoidRootPart")
                if hrp then
                    hrp.CFrame = obj.Part.CFrame
                    task.wait(0.2)
                    fireproximityprompt(obj.Part.ProximityPrompt)
                    task.wait(0.5)
                end
            end
        end
    end
end
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

OrionLib:Init()
