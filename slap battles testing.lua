local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local BadgeService = game:GetService("BadgeService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")

local lp = Players.LocalPlayer
local placeId = game.PlaceId

if placeId == 106620300132058 then
    local Window = OrionLib:MakeWindow({
        Name = "Femboy Hub - Plate ID",
        HidePremium = false,
        SaveConfig = false,
        ConfigFolder = "PlateConfig"
    })

    local Tab = Window:MakeTab({
        Name = "Plate",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    Tab:AddButton({
        Name = "Plate",
        Callback = function()
            local RED_COLOR = Color3.fromRGB(255, 0, 0)

            local function cleanAndNoclip()
                local character = lp.Character
                if not character then return end

                for _, part in pairs(workspace:GetDescendants()) do
                    if part:IsA("BasePart") then
                        if part.Color == RED_COLOR then
                            part:Destroy() 
                        end
                        
                        if part:IsDescendantOf(character) then
                            part.CanCollide = false
                        end
                    end
                end
            end

            RunService.Stepped:Connect(cleanAndNoclip)
        end
    })

    OrionLib:Init()

elseif placeId == 7234087065 then
    local Window = OrionLib:MakeWindow({
        Name = "Femboy Hub - ID 7234087065",
        HidePremium = false,
        SaveConfig = false,
        ConfigFolder = "CustomIDConfig"
    })

    local Tab = Window:MakeTab({
        Name = "Fan & Riftshot",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    Tab:AddButton({
        Name = "Auto-Get Fan",
        Callback = function()
            local character = lp.Character or lp.CharacterAdded:Wait()
            local HumanoidRootPart = character:WaitForChild("HumanoidRootPart")
            
            local function CreateMessage()
                local msg = Instance.new("Message")
                msg.Parent = workspace
                return msg
            end

            local msg = CreateMessage()
            msg.Text = "Getting Fan..."
            
            for i = 1, 50 do
                HumanoidRootPart:PivotTo(workspace.QuestStuff.Key.CFrame)
                task.wait()
            end
            task.wait(1.5)
            game:GetService("ReplicatedStorage").RemoteEvents.SuitUpClown:FireServer()
            task.wait(0.25)
            game:GetService("ReplicatedStorage").RemoteEvents.KeyQuest:FireServer()
            task.wait(0.25)
            game:GetService("ReplicatedStorage").RemoteEvents.KeyAcquired:FireServer()
            task.wait(0.25)
            game:GetService("ReplicatedStorage").RemoteEvents.GOHOME:FireServer()
            task.wait(0.25)
            game:GetService("ReplicatedStorage").RemoteEvents.KeyBadgeReward:FireServer()
            
            if msg then msg:Destroy() end
        end
    })

    Tab:AddButton({
        Name = "Auto-Get Riftshot",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260, 16, 477)
            task.wait(0.8)
            game:GetService("ReplicatedStorage").RemoteEvents.TargetPractice.OnComplete:FireServer() 
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260, 16, 477)
            task.wait(1)
            game:GetService("ReplicatedStorage").RemoteEvents.TargetPractice.OnComplete:FireServer()
        end
    })

    Tab:AddButton({
        Name = "Auto Boxing Gloves",
        Callback = function()
            local targetCFrame = CFrame.new(
                4231.91, 3505.89, 269.59, 
                0.993, -0.000, 0.120, 
                0.000, 1.000, 0.000, 
                -0.120, -0.000, 0.993
            )

            local character = lp.Character or lp.CharacterAdded:Wait()
            character:PivotTo(targetCFrame)

            task.wait(1.5)

            fireclickdetector(workspace.BoxingGloves.ClickDetector)
        end
    })

    Tab:AddButton({
        Name = "Auto-Get UTG",
        Callback = function()
            local targetCFrame = CFrame.new(
                -1233.92, 9900.16, 704.24, 
                0.936, -0.000, -0.352, 
                0.000, 1.000, 0.000, 
                0.352, -0.000, 0.936
            )

            if placeId == 115782629143468 then
                local character = lp.Character or lp.CharacterAdded:Wait()
                character:PivotTo(targetCFrame)
            else
                TeleportService:Teleport(115782629143468, lp)
            end
        end
    })

    Tab:AddButton({
        Name = "Auto-Get Clock",
        Callback = function()
            local character = lp.Character or lp.CharacterAdded:Wait()
            local HumanoidRootPart = character:WaitForChild("HumanoidRootPart")

            local function CreateMessage()
                local msg = Instance.new("Message")
                msg.Parent = workspace
                return msg
            end

            local msg = CreateMessage()
            msg.Text = "Getting Clock..."
            local tpdata = (queue_on_teleport or queueonteleport)
            if tpdata then
                tpdata((GlobalTPData or '') .. ' msg.Text = "Getting Clock..." for i=1,2 do for i,v in ipairs(workspace:GetDescendants()) do if v.ClassName == "ClickDetector" then fireclickdetector(v) end end task.wait(2.5) end while task.wait() do HumanoidRootPart:PivotTo(CFrame.new(26.34,4,-1.84)) end')
            end
            task.wait(.5)
            while task.wait() do
                if workspace:FindFirstChild("Buildings") and workspace.Buildings:FindFirstChild("wizard twoer") and workspace.Buildings["wizard twoer"]:FindFirstChild("Cone") then
                    HumanoidRootPart:PivotTo(workspace.Buildings["wizard twoer"].Cone.CFrame * CFrame.new(0,15,0))
                end
            end
        end
    })

    OrionLib:Init()

elseif placeId == 115782629143468 then
    local Window = OrionLib:MakeWindow({
        Name = "Femboy Hub - UTG ID",
        HidePremium = false,
        SaveConfig = false,
        ConfigFolder = "UTGConfig"
    })

    local Tab = Window:MakeTab({
        Name = "UTG",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    Tab:AddButton({
        Name = "Auto-Get UTG",
        Callback = function()
            local targetCFrame = CFrame.new(
                -1233.92, 9900.16, 704.24, 
                0.936, -0.000, -0.352, 
                0.000, 1.000, 0.000, 
                0.352, -0.000, 0.936
            )

            local character = lp.Character or lp.CharacterAdded:Wait()
            character:PivotTo(targetCFrame)
        end
    })

    OrionLib:Init()

elseif placeId == 79885102123162 then
    local Window = OrionLib:MakeWindow({
        Name = "Femboy Hub",
        HidePremium = false,
        SaveConfig = false,
        ConfigFolder = "CollectorConfig"
    })

    local Tab = Window:MakeTab({
        Name = "Collector",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    Tab:AddButton({
        Name = "Auto-Get Collector",
        Callback = function()
            task.spawn(function()
                local function touch(part)
                    if part and firetouchinterest then
                        local char = lp.Character
                        local hrp = char and char:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            firetouchinterest(hrp, part, 0)
                            task.wait(0.1)
                            firetouchinterest(hrp, part, 1)
                        end
                    end
                end

                local hexaPath = Workspace:FindFirstChild("Map") 
                    and Workspace.Map:FindFirstChild("obstacle/puzzles") 
                    and Workspace.Map["obstacle/puzzles"]:FindFirstChild("CastleIsland") 
                    and Workspace.Map["obstacle/puzzles"].CastleIsland:FindFirstChild("Hexa_Path")

                if hexaPath then
                    for _, v in ipairs(hexaPath:GetChildren()) do
                        if v and v:IsA("BasePart") then
                            v.Size = Vector3.new(100, 1, 100)
                        end
                    end
                end

                repeat
                    task.wait(0.2)
                    local gloveLocation = Workspace:FindFirstChild("Map") and Workspace.Map:FindFirstChild("GloveLocation")
                    
                    if gloveLocation then
                        for _, location in ipairs(gloveLocation:GetChildren()) do
                            if location then
                                local targetPart = location:FindFirstChildWhichIsA("BasePart", true)
                                local char = lp.Character or lp.CharacterAdded:Wait()
                                local hrp = char:FindFirstChild("HumanoidRootPart")

                                if hrp and targetPart then
                                    hrp.CFrame = targetPart.CFrame
                                end

                                task.wait(5)

                                for _, glove in ipairs(location:GetChildren()) do
                                    if glove then
                                        local solved = glove:GetAttribute("Solved")
                                        local visible = glove:GetAttribute("Visible")
                                        local touchTarget = glove:GetChildren()[1]

                                        if (solved ~= nil and solved == false) and visible == false then
                                            glove:SetAttribute("Solved", true)
                                            task.wait(1)
                                            touch(touchTarget)
                                        elseif (solved == nil or solved == true) and visible == true then
                                            touch(touchTarget)
                                        else
                                            continue
                                        end
                                    end
                                end
                            end
                        end
                    end
                until BadgeService:UserHasBadgeAsync(lp.UserId, 1902849233175110)
            end)
        end
    })

    OrionLib:Init()

elseif placeId == 132277598079047 then
    local Window = OrionLib:MakeWindow({
        Name = "Femboy Hub",
        HidePremium = false,
        SaveConfig = false,
        ConfigFolder = "SlenderConfig"
    })

    local Tab = Window:MakeTab({
        Name = "Slender",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    Tab:AddButton({
        Name = "Collection Pages",
        Callback = function()
            task.spawn(function()
                local folder = Workspace:WaitForChild("Pages", 10)
                if folder then
                    for _, obj in ipairs(folder:GetChildren()) do
                        if obj:FindFirstChild("Part") and obj.Part:FindFirstChildWhichIsA("ProximityPrompt") then
                            local char = lp.Character or lp.CharacterAdded:Wait()
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
            end)
        end
    })

    OrionLib:Init()

else
    local Window = OrionLib:MakeWindow({
        Name = "Femboy Hub",
        HidePremium = false,
        SaveConfig = true,
        ConfigFolder = "OrionTest"
    })

    local currentJob = game.JobId
    local req = (syn and syn.request) or (http and http.request) or http_request or request

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

    local Tab1 = Window:MakeTab({ Name = "Slap Battles Badges", Icon = "rbxassetid://4483345998" })

    Tab1:AddButton({
        Name = "Plate",
        Callback = function()
            TeleportService:Teleport(106620300132058, lp)
        end
    })

    Tab1:AddButton({
        Name = "Brazil Badge",
        Callback = function()
            local char = lp.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-1119.05, 309.54, -5.09, 0.039, -0.000, 0.999, -0.000, 1.000, 0.000, -0.999, -0.000, 0.039)
            end
        end
    })

    Tab1:AddButton({
        Name = "Collector (Teleport)",
        Callback = function()
            TeleportService:Teleport(79885102123162, lp)
        end
    })

    Tab1:AddButton({
        Name = "Auto UTG",
        Callback = function()
            TeleportService:Teleport(115782629143468, lp)
        end
    })

    Tab1:AddButton({
        Name = "Auto Slender",
        Callback = function()
            task.spawn(function()
                if placeId == 6403373529 or placeId == 9015014224 then
                    local function gethrp()
                        local c = lp.Character or lp.CharacterAdded:Wait()
                        return c:WaitForChild("HumanoidRootPart", 5)
                    end

                    local function equipGlove(glove)
                        local stats = lp:FindFirstChild("leaderstats")
                        if stats and stats:FindFirstChild("Glove") and stats.Glove.Value ~= glove then
                            if lp.Character and not lp.Character:FindFirstChild("entered") then
                                local g = Workspace.Lobby:FindFirstChild(glove)
                                if g and g:FindFirstChild("ClickDetector") then
                                    fireclickdetector(g.ClickDetector)
                                    task.wait(0.5)
                                end
                            end
                        end
                    end

                    local function reset()
                        if lp.Character and lp.Character:FindFirstChild("Humanoid") then
                            lp.Character.Humanoid.Health = 0
                        end
                        lp.CharacterAdded:Wait()
                        task.wait(1)
                    end

                    equipGlove("Balloony")
                    local root = gethrp()
                    if root then
                        root.CFrame = CFrame.new(-1210.02, 331.92, 3.47, 0.018, 0, 1, 0, 1, 0, -1, 0, 0.018)
                    end

                    local tape = Workspace:WaitForChild("TapeRecorder", 10)
                    if tape and tape:FindFirstChild("Front") then
                        root = gethrp()
                        if root then
                            root.CFrame = tape.Front.CFrame * CFrame.new(0, 0, -1)
                        end
                        task.wait(0.2)
                        
                        if tape.Front:FindFirstChild("ProximityPrompt") then
                            fireproximityprompt(tape.Front.ProximityPrompt)
                        end
                        task.wait(0.15)

                        local code = ""
                        local rec = true
                        local sfx = tape.Front:FindFirstChild("DigitsSFX")

                        while rec do
                            task.wait()
                            if sfx then
                                for i = 0, 9 do
                                    local d = tostring(i)
                                    local snd = sfx:FindFirstChild(d)
                                    if snd and snd.Playing then
                                        code = code .. d
                                        task.wait(1)
                                        break
                                    end
                                end
                            end
                            
                            if tape.Front.ProximityPrompt.Enabled then
                                rec = false
                            end
                        end

                        reset()
                        equipGlove("Pocket")

                        root = gethrp()
                        if root then
                            root.CFrame = CFrame.new(-1210.02, 331.92, 3.47, 0.018, 0, 1, 0, 1, 0, -1, 0, 0.018)
                            task.wait(0.5)
                            root.CFrame = CFrame.new(123.28, 255.30, 1.05, 0.998, 0, -0.055, 0, 1, 0, 0.055, 0, 0.998)
                            task.wait(0.5)
                            root.CFrame = CFrame.new(17944.88, -130.16, -3492.70, -0.998, 0, -0.070, 0, 1, 0, 0.070, 0, -0.998)
                            task.wait(0.5)
                        end

                        local rem = ReplicatedStorage:FindFirstChild("GeneralAbility")
                        if rem and root then
                            rem:FireServer(root.CFrame)
                        end

                        local pocket = nil
                        local t = tick() + 10
                        repeat
                            task.wait(0.2)
                            for _, v in ipairs(Workspace:GetChildren()) do
                                if v:IsA("Model") and string.find(v.Name, "'s Pocket") then
                                    if v:FindFirstChildWhichIsA("ProximityPrompt", true) then
                                        pocket = v
                                        break
                                    end
                                end
                            end
                        until pocket or tick() > t

                        if pocket then
                            local prompt = pocket:FindFirstChildWhichIsA("ProximityPrompt", true)
                            if prompt then
                                local parent = prompt.Parent
                                root = gethrp()
                                if root then
                                    if parent:IsA("BasePart") then
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
                end
            end)
        end    
    })

    Tab1:AddButton({
        Name = "Auto Recall",
        Callback = function()
            local rsanswrr
            repeat 
                task.wait() 
                ReplicatedStorage.RecallReset:FireServer(nil, true) 
                rsanswrr = ReplicatedStorage.RecallLastInteractionSteps:InvokeServer(false) 
            until rsanswrr == "Simon says walk through the portal to collect your reward"
            task.wait(2) 
            lp.Character.HumanoidRootPart:PivotTo(Workspace.RepressedMemories.Portal.CFrame)
        end
    })

    Tab1:AddButton({
        Name = "Poltergeist (ONLY HALLOWEEN)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/nerna-coder/Poltergeist/refs/heads/main/Slap%20battles.lua"))()
        end    
    })

    Tab1:AddButton({
        Name = "Instant ice skate",
        Callback = function()
            ReplicatedStorage.IceSkate:FireServer("Freeze")
        end    
    })

    Tab1:AddButton({
        Name = "Instant lamp",
        Callback = function()
            local Event = ReplicatedStorage.nightmare
            local equip = debug.getupvalues(require(ReplicatedStorage.BACKEND.Lib.Network).fireServer)[3]("SelectGlove")
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
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Thiago3246/KillstreakHelper/main/Source.luau"))()
        end    
    })

    Tab1:AddButton({
        Name = "Auto Bob (75k+ slaps)",
        Callback = function()
            local equip = debug.getupvalues(require(ReplicatedStorage.BACKEND.Lib.Network).fireServer)[3]("SelectGlove")
            equip:FireServer("God's Hand")
            task.wait(0.5)
            ReplicatedStorage.TimestopJump:FireServer()
            ReplicatedStorage.Timestopchoir:FireServer()
            ReplicatedStorage.Timestop:FireServer()
            task.wait(0.1)
            equip:FireServer("Replica")
            task.wait(0.5)
            local hrp = lp.Character:WaitForChild("HumanoidRootPart")
            hrp.CFrame = CFrame.new(-1210.05, 328.22, 2.48, 0.748, -0.000, 0.664, -0.000, 1.000, 0.000, -0.664, -0.000, 0.748)
            task.wait(2)
            local DuplicateEvent = ReplicatedStorage.Duplicate
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

    Tab1:AddButton({
        Name = "Instnat firework. Player 1 (helper)",
        Callback = function()
            ReplicatedStorage:WaitForChild("GeneralAbility"):FireServer()
            task.wait(0.2)
            lp.Character.HumanoidRootPart.CFrame = CFrame.new(-1210.05, 328.22, 2.48, 0.748, -0.000, 0.664, -0.000, 1.000, 0.000, -0.664, -0.000, 0.748)
        end    
    })

    Tab1:AddButton({
        Name = "Instant Firework. Player 2 (main acc)",
        Callback = function()
            local hrp = lp.Character:WaitForChild("HumanoidRootPart")
            hrp.CFrame = CFrame.new(-1210.05, 328.22, 2.48, 0.748, -0.000, 0.664, -0.000, 1.000, 0.000, -0.664, -0.000, 0.748)
            task.wait(0.3)
            ReplicatedStorage.Firework:InvokeServer()
            ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Cake Mix")
            task.wait(0.1)
            ReplicatedStorage.AlchemistEvent:FireServer("EquipItem", "Cake Mix")
            task.wait(0.5)
            local ovenModel = Workspace:FindFirstChild("Cube", true)
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
            local function target(v)
                if v:IsA("BasePart") and v.Color == Color3.fromRGB(255, 0, 0) then
                    v:Destroy()
                end
            end
            for _, v in Workspace:GetDescendants() do target(v) end
            Workspace.DescendantAdded:Connect(target)
            RunService.Stepped:Connect(function()
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

    Tab1:AddButton({
        Name = "Eggler for shellbert (1)",
        Callback = function()
            TeleportService:Teleport(129665246576996)
        end
    })

    Tab1:AddButton({
        Name = "Eggler for shellbert (2)",
        Callback = function()
            local playerData = ReplicatedStorage:FindFirstChild("PlayerData")
            local userFolder = playerData and playerData:FindFirstChild(lp.Name)
            local badgeQuestProgress = userFolder and userFolder:FindFirstChild("BadgeQuestProgress")
            
            if not badgeQuestProgress then
                return
            end

            local questData = badgeQuestProgress.Value
            local success, data = pcall(function()
                return HttpService:JSONDecode(questData)
            end)
            
            if not success or type(data) ~= "table" then
                return
            end
            
            local easterQuest = data["_questChainEasterHunter"]
            
            if easterQuest then
                local completed = easterQuest.completed
                local rewarded = easterQuest.rewarded
                local collectedEggs = (easterQuest.counters and easterQuest.counters.collectedEggs) or 0
                
                local function safeClick()
                    local eggTp = Workspace:FindFirstChild("EggTeleport")
                    if eggTp and eggTp:FindFirstChild("ClickDetector") then
                        fireclickdetector(eggTp.ClickDetector)
                    end
                end

                if not completed and not rewarded then
                    if collectedEggs == 10 then
                        safeClick()
                    end
                elseif completed and rewarded and collectedEggs == 10 then
                    safeClick()
                end
            end
        end
    })

    Tab1:AddButton({
        Name = "Claim Shellbert Reward Glove (Instantly)",
        Callback = function()
            local remotes = ReplicatedStorage:FindFirstChild("Remotes")
            local gloveReward = remotes and remotes:FindFirstChild("GloveReward")
            local replicate = gloveReward and gloveReward:FindFirstChild("Replicate")

            if replicate then
                replicate:FireServer()
            end

            task.wait(0.2)

            local rewardGlove = Workspace:FindFirstChild("RewardGlove")
            local targetGlove = rewardGlove and rewardGlove:FindFirstChild("RewardGlove")
            local char = lp.Character
            
            if char and char:FindFirstChild("HumanoidRootPart") and targetGlove then
                char.HumanoidRootPart.CFrame = targetGlove.CFrame
            end
        end
    })

    Tab1:AddButton({
        Name = "Insta Lotus (disable verify teleports!)",
        Callback = function()
            loadstring(game:HttpGet('https://pastefy.app/Ds8bqkE9/raw'))()
        end    
    })

    Tab1:AddButton({
        Name = "Auto get doorkeeper (disable verify teleports!)",
        Callback = function()
            loadstring(game:HttpGet('https://pastefy.app/zbj5RgPl/raw'))()
        end    
    })

    local Tab3 = Window:MakeTab({ Name = "Slap Farmers", Icon = "rbxassetid://4483345998" })

    Tab3:AddButton({
        Name = "Nexer slap farm v2 (OP!)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NewNexer/NexerHub/refs/heads/main/SB/SFs/SFComponents%3D2.0EGRR.luau"))()
        end    
    })

    Tab3:AddButton({
        Name = "St1mlx mastery helper (key)",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/st1mlx/bebebe/refs/heads/main/SBHub'))()
        end    
    })

    local Tab4 = Window:MakeTab({ Name = "Credits", Icon = "rbxassetid://4483345998" })

    Tab4:AddParagraph("Creators", "silentabsolutedayn")
    Tab4:AddParagraph("2nd creator", "nerna coder-zemboxosx")
    Tab4:AddParagraph("3rd creator", "deltarune_tomorrow")
    Tab4:AddParagraph("Thanks to..", "Nexer open sourced scripts and kindness!")
    Tab4:AddParagraph("Thanks to..", "Scripter for shellbert fix, huge appreciation!")

    local Tab5 = Window:MakeTab({ Name = "Funny", Icon = "rbxassetid://4483345998" })

    Tab5:AddButton({
        Name = "Click this if you support spliot! Don't if you don't know who it is",
        Callback = function()
            lp:Kick("if u support spliot then go fucking kill yourself")
        end    
    })

    local Tab6 = Window:MakeTab({ Name = "Useful", Icon = "rbxassetid://4483345998" })

    Tab6:AddButton({
        Name = "Hide your username",
        Callback = function()
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
                            if desc:IsA("TextLabel") and string.find(string.lower(desc.Text), string.lower(lp.Name)) then
                                desc.Visible = false
                            end
                        end
                    end
                end)
            end

            if lp.Character then sanitizeCharacter(lp.Character) end
            lp.CharacterAdded:Connect(sanitizeCharacter)

            RunService.RenderStepped:Connect(function()
                char = lp.Character
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

    Tab6:AddButton({
        Name = "Teleport GUI",
        Callback = function()
            local ScreenGui = Instance.new("ScreenGui")
            local Frame = Instance.new("Frame")
            local DragHeader = Instance.new("Frame")
            local Title = Instance.new("TextLabel")
            local CloseButton = Instance.new("TextButton")
            local ScrollingFrame = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            local OpenButton = Instance.new("TextButton")

            ScreenGui.Parent = lp:WaitForChild("PlayerGui")
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

            for _, loc in ipairs(locations) do
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
                    if lp and lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
                        lp.Character.HumanoidRootPart.CFrame = loc.cframe
                    end
                end)
            end
        end   
    })

    Tab6:AddButton({
        Name = "Noclip",
        Callback = function()
            local character = lp.Character or lp.CharacterAdded:Wait()
            local conn
            conn = RunService.Stepped:Connect(function()
                if character and character:Parent() then
                    for _, part in pairs(character:GetDescendants()) do
                        if part:IsA("BasePart") and part.CanCollide then
                            part.CanCollide = false
                        end
                    end
                else
                    conn:Disconnect()
                end
            end)
            lp.CharacterAdded:Connect(function(newChar)
                character = newChar
            end)
        end    
    })

    local Tab7 = Window:MakeTab({
        Name = "Helper logic",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local localPlayer = Players.LocalPlayer

    _G.HelperAccountName = _G.HelperAccountName or ""
    _G.RecipientAccountName = _G.RecipientAccountName or ""
    _G.VoidTrackerActive = _G.VoidTrackerActive or false

    if not _G.VoidTrackerActive then
        _G.VoidTrackerActive = true
        task.spawn(function()
            while true do
                task.wait(0.2)
                if _G.HelperAccountName ~= "" and _G.RecipientAccountName ~= "" then
                    local helperObj = Players:FindFirstChild(_G.HelperAccountName)
                    local recipientObj = Players:FindFirstChild(_G.RecipientAccountName)
                    
                    if helperObj and recipientObj then
                        local charH = helperObj.Character
                        local charR = recipientObj.Character
                        
                        if charH and charR and charH:FindFirstChild("HumanoidRootPart") and charR:FindFirstChild("HumanoidRootPart") then
                            local posH = charH.HumanoidRootPart.Position
                            local posR = charR.HumanoidRootPart.Position
                            
                            if math.abs(posH.X) > 95000 and math.abs(posH.Z) > 95000 and math.abs(posR.X) > 95000 and math.abs(posR.Z) > 95000 then
                                if localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid") then
                                    localPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
                                    task.wait(5)
                                end
                            end
                        end
                    end
                end
            end
        end)
    end

    local function findAndTeleport(enteredText, roleType)
        if enteredText == "" then return end
        
        local targetPlayer = nil
        for _, p in pairs(Players:GetPlayers()) do
            if p.Name:lower():find(enteredText:lower()) or p.DisplayName:lower():find(enteredText:lower()) then
                targetPlayer = p
                break
            end
        end
        
        if targetPlayer and targetPlayer.Name ~= localPlayer.Name then
            if roleType == "Helper" then
                _G.HelperAccountName = targetPlayer.Name
                _G.RecipientAccountName = localPlayer.Name
            elseif roleType == "Recipient" then
                _G.RecipientAccountName = targetPlayer.Name
                _G.HelperAccountName = localPlayer.Name
            end
            
            local character = localPlayer.Character
            if character then
                local rootPart = character:WaitForChild("HumanoidRootPart", 5)
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if rootPart and humanoid then
                    humanoid.PlatformStand = true
                    task.wait(0.05)
                    rootPart.CFrame = CFrame.new(100000, 5000, 100000)
                    rootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                    task.wait(0.1)
                    humanoid.PlatformStand = false
                end
            end
        end
    end

    Tab7:AddTextbox({
        Name = "Helper (Your alt name)",
        Default = "",
        TextDisappear = false,
        Callback = function(text)
            findAndTeleport(text, "Helper")
        end
    })

    Tab7:AddTextbox({
        Name = "Recipient (Your main account)",
        Default = "",
        TextDisappear = false,
        Callback = function(text)
            findAndTeleport(text, "Recipient")
        end
    })
Tab4:AddButton({
    Name = "Brick fling assistant",
    Callback = function()
        print("button pressed")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local lp = Players.LocalPlayer
local pgui = lp:FindFirstChildOfClass("PlayerGui")
local parent = (pcall(function() return CoreGui.Name end) and CoreGui) or pgui

local sg = Instance.new("ScreenGui")
sg.Name = "LegoBrickFlingGui"
sg.ResetOnSpawn = false
sg.Parent = parent

-- Увеличен размер Frame, чтобы влезли новые элементы
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 240, 0, 275)
frame.Position = UDim2.new(0.5, -120, 0.5, -137)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = sg

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(80, 80, 90)
stroke.Thickness = 2
stroke.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 0, 30)
title.Position = UDim2.new(0, 15, 0, 5)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left
title.Text = "Lego Brick Helper"
title.Parent = frame

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 24, 0, 24)
close.Position = UDim2.new(1, -30, 0, 8)
close.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.Font = Enum.Font.SourceSansBold
close.TextSize = 14
close.Text = "X"
close.Parent = frame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = close

local btnSpawn = Instance.new("TextButton")
btnSpawn.Size = UDim2.new(1, -30, 0, 35)
btnSpawn.Position = UDim2.new(0, 15, 0, 40)
btnSpawn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
btnSpawn.TextColor3 = Color3.fromRGB(255, 255, 255)
btnSpawn.Font = Enum.Font.SourceSansBold
btnSpawn.TextSize = 14
btnSpawn.Text = "Spawn Brick"
btnSpawn.Parent = frame

local btnSpawnCorner = Instance.new("UICorner")
btnSpawnCorner.CornerRadius = UDim.new(0, 6)
btnSpawnCorner.Parent = btnSpawn

local btnFling = Instance.new("TextButton")
btnFling.Size = UDim2.new(1, -30, 0, 35)
btnFling.Position = UDim2.new(0, 15, 0, 85)
btnFling.BackgroundColor3 = Color3.fromRGB(45, 125, 45)
btnFling.TextColor3 = Color3.fromRGB(255, 255, 255)
btnFling.Font = Enum.Font.SourceSansBold
btnFling.TextSize = 14
btnFling.Text = "Fling Aura: OFF"
btnFling.Parent = frame

local btnFlingCorner = Instance.new("UICorner")
btnFlingCorner.CornerRadius = UDim.new(0, 6)
btnFlingCorner.Parent = btnFling

-- ПОЛЕ ВВОДА НИКА ДЛЯ АИМБОТА
local nameBox = Instance.new("TextBox")
nameBox.Size = UDim2.new(1, -30, 0, 35)
nameBox.Position = UDim2.new(0, 15, 0, 130)
nameBox.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
nameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
nameBox.Font = Enum.Font.SourceSans
nameBox.TextSize = 14
nameBox.Text = ""
nameBox.PlaceholderText = "Enter player name..."
nameBox.ClearTextOnFocus = false
nameBox.Parent = frame

local nameBoxCorner = Instance.new("UICorner")
nameBoxCorner.CornerRadius = UDim.new(0, 6)
nameBoxCorner.Parent = nameBox

-- КНОПКА ВКЛЮЧЕНИЯ АИМБОТА
local btnAimbot = Instance.new("TextButton")
btnAimbot.Size = UDim2.new(1, -30, 0, 35)
btnAimbot.Position = UDim2.new(0, 15, 0, 175)
btnAimbot.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
btnAimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
btnAimbot.Font = Enum.Font.SourceSansBold
btnAimbot.TextSize = 14
btnAimbot.Text = "Aimbot Target: OFF"
btnAimbot.Parent = frame

local btnAimbotCorner = Instance.new("UICorner")
btnAimbotCorner.CornerRadius = UDim.new(0, 6)
btnAimbotCorner.Parent = btnAimbot

local sliderFrame = Instance.new("Frame")
sliderFrame.Size = UDim2.new(1, -30, 0, 40)
sliderFrame.Position = UDim2.new(0, 15, 0, 220)
sliderFrame.BackgroundTransparency = 1
sliderFrame.Parent = frame

local sliderLabel = Instance.new("TextLabel")
sliderLabel.Size = UDim2.new(1, 0, 0, 15)
sliderLabel.Position = UDim2.new(0, 0, 0, 0)
sliderLabel.BackgroundTransparency = 1
sliderLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
sliderLabel.Font = Enum.Font.SourceSansBold
sliderLabel.TextSize = 12
sliderLabel.TextXAlignment = Enum.TextXAlignment.Left
sliderLabel.Text = "Rotational Power: 5000"
sliderLabel.Parent = sliderFrame

local sliderBackground = Instance.new("Frame")
sliderBackground.Size = UDim2.new(1, 0, 0, 6)
sliderBackground.Position = UDim2.new(0, 0, 0, 22)
sliderBackground.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
sliderBackground.BorderSizePixel = 0
sliderBackground.Parent = sliderFrame

local sliderBackgroundCorner = Instance.new("UICorner")
sliderBackgroundCorner.CornerRadius = UDim.new(0, 3)
sliderBackgroundCorner.Parent = sliderBackground

local sliderFill = Instance.new("Frame")
sliderFill.Size = UDim2.new(0.5, 0, 1, 0)
sliderFill.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
sliderFill.BorderSizePixel = 0
sliderFill.Parent = sliderBackground

local sliderFillCorner = Instance.new("UICorner")
sliderFillCorner.CornerRadius = UDim.new(0, 3)
sliderFillCorner.Parent = sliderFill

local sliderButton = Instance.new("TextButton")
sliderButton.Size = UDim2.new(0, 14, 0, 14)
sliderButton.Position = UDim2.new(0.5, -7, 0.5, -7)
sliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sliderButton.Text = ""
sliderButton.Parent = sliderBackground

local sliderButtonCorner = Instance.new("UICorner")
sliderButtonCorner.CornerRadius = UDim.new(1, 0)
sliderButtonCorner.Parent = sliderButton

local flingActive = false
local aimbotActive = false
local flingPower = 5000
local minPower = 0
local maxPower = 20000
local lbrickEvent = game:GetService("ReplicatedStorage"):WaitForChild("lbrick")

btnSpawn.MouseButton1Click:Connect(function()
    lbrickEvent:FireServer()
end)

btnFling.MouseButton1Click:Connect(function()
    flingActive = not flingActive
    if flingActive then
        btnFling.Text = "Fling Aura: ON"
        btnFling.BackgroundColor3 = Color3.fromRGB(125, 45, 45)
    else
        btnFling.Text = "Fling Aura: OFF"
        btnFling.BackgroundColor3 = Color3.fromRGB(45, 125, 45)
    end
end)

btnAimbot.MouseButton1Click:Connect(function()
    aimbotActive = not aimbotActive
    if aimbotActive then
        btnAimbot.Text = "Aimbot Target: ON"
        btnAimbot.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
    else
        btnAimbot.Text = "Aimbot Target: OFF"
        btnAimbot.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
    end
end)

close.MouseButton1Click:Connect(function()
    flingActive = false
    aimbotActive = false
    sg:Destroy()
end)

local isSliding = false

local function updateSlider(input)
    local percentage = math.clamp((input.Position.X - sliderBackground.AbsolutePosition.X) / sliderBackground.AbsoluteSize.X, 0, 1)
    sliderFill.Size = UDim2.new(percentage, 0, 1, 0)
    sliderButton.Position = UDim2.new(percentage, -7, 0.5, -7)
    flingPower = math.round(minPower + (percentage * (maxPower - minPower)))
    sliderLabel.Text = "Rotational Power: " .. tostring(flingPower)
end

sliderButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isSliding = true
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        isSliding = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if isSliding and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updateSlider(input)
    end
end)

local percentage = (flingPower - minPower) / (maxPower - minPower)
sliderFill.Size = UDim2.new(percentage, 0, 1, 0)
sliderButton.Position = UDim2.new(percentage, -7, 0.5, -7)

-- Функция поиска игрока по части имени в папке Players
local function getTargetPlayer()
    local text = nameBox.Text:lower()
    if text == "" then return nil end
    
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= lp and (p.Name:lower():sub(1, #text) == text or p.DisplayName:lower():sub(1, #text) == text) then
            return p
        end
    end
    return nil
end

RunService.Stepped:Connect(function()
    if not flingActive then return end
    
    local brick = workspace:FindFirstChild("Union")
    if not brick or not brick:IsA("BasePart") then return end
    
    if aimbotActive then
        -- РЕЖИМ АИМБОТА: Таргетим только одного выбранного игрока
        local targetPlayer = getTargetPlayer()
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetHrp = targetPlayer.Character.HumanoidRootPart
            
            firetouchinterest(brick, targetHrp, 0)
            firetouchinterest(brick, targetHrp, 1)
            
            brick.CanCollide = false
            brick.RotVelocity = Vector3.new(flingPower, flingPower, flingPower)
            brick.CFrame = targetHrp.CFrame * CFrame.new(0, -1, 0)
        end
    else
        -- ОБЫЧНЫЙ РЕЖИМ: Массовый флинг всех подряд
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= lp and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                local targetHrp = p.Character.HumanoidRootPart
                
                firetouchinterest(brick, targetHrp, 0)
                firetouchinterest(brick, targetHrp, 1)
                
                brick.CanCollide = false
                brick.RotVelocity = Vector3.new(flingPower, flingPower, flingPower)
                brick.CFrame = targetHrp.CFrame * CFrame.new(0, -1, 0)
            end
        end
    end
end)
                
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

Tab5:AddButton({
    Name = "Run Abuser",
    Callback = function()
        print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/dihmuncher23-lang/Run-abuser/refs/heads/main/Run%20abuser"))()
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

Tab5:AddButton({
    Name = "MR controller",
    Callback = function()
        print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/dihmuncher23-lang/Run-abuser/refs/heads/main/Cheeky"))()
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

Tab5:AddButton({
    Name = "Barrel abuser",
    Callback = function()
        print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/dihmuncher23-lang/Run-abuser/refs/heads/main/Barrel"))()
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

Tab5:AddButton({
    Name = "Virus abuser",
    Callback = function()
        print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/dihmuncher23-lang/Run-abuser/refs/heads/main/VirusGlove"))()
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

Tab5:AddButton({
    Name = "Sparky controller",
    Callback = function()
        print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/dihmuncher23-lang/Run-abuser/refs/heads/main/Sparky"))()
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

Tab5:AddButton({
    Name = "Gummy mastery abuser",
    Callback = function()
        print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/dihmuncher23-lang/Run-abuser/refs/heads/main/Gummy"))()
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

Tab5:AddButton({
    Name = "Bus abuser",
    Callback = function()
        print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/dihmuncher23-lang/Run-abuser/refs/heads/main/Bus"))()
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

Tab5:AddButton({
    Name = "Rob mastery abuser (do not quick transform)",
    Callback = function()
        print("button pressed")
loadstring(game:HttpGet("https://raw.githubusercontent.com/dihmuncher23-lang/Run-abuser/refs/heads/main/Rob%20abuser"))()
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]
    
    OrionLib:Init()
end
