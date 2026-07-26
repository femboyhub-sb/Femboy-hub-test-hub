local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/femboyhub-sb/femboylubary/refs/heads/main/libary.lua'))()

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

if placeId == 79885102123162 then
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
                OrionLib:MakeNotification({
                    Name = "Collector",
                    Content = "Getting Collector...",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })

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

                OrionLib:MakeNotification({
                    Name = "Collector",
                    Content = "Collector Badge Obtained!",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
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

    OrionLib:MakeNotification({
        Name = "Scripts here are useful!",
        Content = "Loaded successfully.",
        Image = "rbxassetid://4483345998",
        Time = 5
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
        Name = "Collector (Teleport)",
        Callback = function()
            TeleportService:Teleport(79885102123162, lp)
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
                OrionLib:MakeNotification({
                    Name = "Error",
                    Content = "Quest data not found!",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
                return
            end

            local questData = badgeQuestProgress.Value
            local success, data = pcall(function()
                return HttpService:JSONDecode(questData)
            end)
            
            if not success or type(data) ~= "table" then
                OrionLib:MakeNotification({
                    Name = "Error",
                    Content = "Failed to parse quest data",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
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
                    else
                        OrionLib:MakeNotification({
                            Name = "Error",
                            Content = "EggTeleport not found in Workspace!",
                            Image = "rbxassetid://4483345998",
                            Time = 5
                        })
                    end
                end

                if not completed and not rewarded then
                    if collectedEggs < 10 then
                        local eggsNeeded = 10 - collectedEggs
                        OrionLib:MakeNotification({
                            Name = "Easter Egg Hunter",
                            Content = string.format("Need %d more eggs! (Owned: %d/10)", eggsNeeded, collectedEggs),
                            Image = "rbxassetid://4483345998",
                            Time = 5
                        })
                    elseif collectedEggs == 10 then
                        safeClick()
                    end
                elseif completed and not rewarded then
                    OrionLib:MakeNotification({
                        Name = "Easter Egg Hunter",
                        Content = "Claim Reward From Quest First",
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    })
                elseif not completed and rewarded then
                    OrionLib:MakeNotification({
                        Name = "Easter Egg Hunter",
                        Content = "Bug detected, please rejoin",
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    })
                elseif completed and rewarded and collectedEggs == 10 then
                    safeClick()
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
            else
                OrionLib:MakeNotification({
                    Name = "Error",
                    Content = "RewardGlove model not found in Workspace!",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
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

    OrionLib:Init()
end
