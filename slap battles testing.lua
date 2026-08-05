local Rayfield
local success, err = pcall(function()
    Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end)

if not success or not Rayfield then
    warn("Ошибка при загрузке Rayfield UI: " .. tostring(err))
    return
end

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

if placeId == 128229958211947 then
    local Window = Rayfield:CreateWindow({
        Name = "Femboy Hub - Shellbert",
        LoadingTitle = "Femboy Hub",
        LoadingSubtitle = "by silentabsolutedayn",
        ConfigurationSaving = { Enabled = false }
    })

    local Tab = Window:CreateTab("Shellbert", 4483345998)

    Tab:CreateButton({
        Name = "Auto-Get Shellbert",
        Callback = function()
            local char = lp.Character or lp.CharacterAdded:Wait()
            local HumanoidRootPart = char:WaitForChild("HumanoidRootPart", 5)

            local remotes = ReplicatedStorage:WaitForChild("Remotes", 5)
            if not remotes then return end

            for i = 1, 3 do
                pcall(function()
                    remotes.Cutscene.OnComplete:FireServer("Scene1")
                    task.wait(0.1)
                    remotes.PhaseTransition.Switch:FireServer()
                    task.wait(0.1)
                    remotes.PhaseTransition.Finished:FireServer()
                    task.wait(0.1)
                    remotes.Cutscene.OnLoaded:FireServer("Scene2")
                    task.wait(0.1)
                    remotes.Cutscene.OnComplete:FireServer("Scene2")
                    task.wait(0.1)
                    remotes.GloveReward.Replicate:FireServer()
                    task.wait(0.1)
                end)
            end

            task.wait(2)

            if HumanoidRootPart then
                for i = 1, 50 do
                    if Workspace:FindFirstChild("RewardGlove") and Workspace.RewardGlove:FindFirstChild("RewardGlove") then
                        HumanoidRootPart:PivotTo(Workspace.RewardGlove.RewardGlove.CFrame)
                    end
                    task.wait(0.05)
                end
            end
        end
    })

elseif placeId == 129665246576996 then
    local Window = Rayfield:CreateWindow({
        Name = "Femboy Hub - Eggler",
        LoadingTitle = "Femboy Hub",
        LoadingSubtitle = "by silentabsolutedayn",
        ConfigurationSaving = { Enabled = false }
    })

    local Tab = Window:CreateTab("Eggler", 4483345998)

    Tab:CreateButton({
        Name = "Auto-Get eggler",
        Callback = function()
            local char = lp.Character or lp.CharacterAdded:Wait()
            local folder = workspace:FindFirstChild("TrialCompletedPoints")

            if char and char:FindFirstChild("HumanoidRootPart") and folder then
                local cf = char.HumanoidRootPart.CFrame
                for i = 1, 3 do
                    local trial = folder:FindFirstChild("Trial " .. i)
                    if trial and trial:FindFirstChild("root") then
                        trial.root.CFrame = cf
                    end
                end
            end
        end
    })

    Tab:CreateButton({
        Name = "Auto-Get Shellbert",
        Callback = function()
            local tpdata = (queue_on_teleport or queueonteleport)
            local code = [[
                for i=1,3 do 
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Cutscene"):WaitForChild("OnComplete"):FireServer("Scene1") 
                    task.wait(0.1) 
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PhaseTransition"):WaitForChild("Switch"):FireServer() 
                    task.wait(0.1) 
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PhaseTransition"):WaitForChild("Finished"):FireServer() 
                    task.wait(0.1) 
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Cutscene"):WaitForChild("OnLoaded"):FireServer("Scene2") 
                    task.wait(0.1) 
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Cutscene"):WaitForChild("OnComplete"):FireServer("Scene2") 
                    task.wait(0.1) 
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GloveReward"):WaitForChild("Replicate"):FireServer() 
                    task.wait(0.1) 
                end 
                task.wait(2) 
                local char = game:GetService("Players").LocalPlayer.Character
                if char and char:FindFirstChild("HumanoidRootPart") then
                    for i=1,50 do 
                        if workspace:FindFirstChild("RewardGlove") then
                            char.HumanoidRootPart:PivotTo(workspace.RewardGlove.RewardGlove.CFrame) 
                        end
                        task.wait(0.05)
                    end 
                end
            ]]

            if tpdata then
                pcall(function()
                    tpdata((GlobalTPData or "") .. code)
                end)
            end

            task.spawn(function()
                local remotes = ReplicatedStorage:WaitForChild("Remotes", 5)
                if not remotes then return end

                for i = 1, 50 do
                    pcall(function()
                        remotes.FourthTrialTeleport:FireServer()
                        remotes.InviteFriends.PlayWithParty:FireServer()
                        remotes.InviteFriends.CancelPartyTeleport:FireServer()
                    end)
                    task.wait(0.2)
                end
            end)
        end
    })

elseif placeId == 106620300132058 then
    local Window = Rayfield:CreateWindow({
        Name = "Femboy Hub - Plate ID",
        LoadingTitle = "Femboy Hub",
        LoadingSubtitle = "by silentabsolutedayn",
        ConfigurationSaving = { Enabled = false }
    })

    local Tab = Window:CreateTab("Plate", 4483345998)

    Tab:CreateButton({
        Name = "Plate",
        Callback = function()
            local RED_COLOR = Color3.fromRGB(255, 0, 0)

            local function cleanAndNoclip()
                local character = lp.Character
                if not character then return end

                for _, part in pairs(workspace:GetDescendants()) do
                    if part:IsA("BasePart") then
                        if part.Color == RED_COLOR then
                            pcall(function() part:Destroy() end) 
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

elseif placeId == 7234087065 then
    local Window = Rayfield:CreateWindow({
        Name = "Femboy Hub - ID 7234087065",
        LoadingTitle = "Femboy Hub",
        LoadingSubtitle = "by silentabsolutedayn",
        ConfigurationSaving = { Enabled = false }
    })

    local Tab = Window:CreateTab("Fan & Riftshot", 4483345998)

    Tab:CreateButton({
        Name = "Auto-Get Fan",
        Callback = function()
            local character = lp.Character or lp.CharacterAdded:Wait()
            local HumanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
            if not HumanoidRootPart then return end

            for i = 1, 50 do
                if workspace:FindFirstChild("QuestStuff") and workspace.QuestStuff:FindFirstChild("Key") then
                    HumanoidRootPart:PivotTo(workspace.QuestStuff.Key.CFrame)
                end
                task.wait(0.02)
            end
            task.wait(1.5)

            local remotes = ReplicatedStorage:FindFirstChild("RemoteEvents")
            if remotes then
                pcall(function()
                    remotes.SuitUpClown:FireServer()
                    task.wait(0.25)
                    remotes.KeyQuest:FireServer()
                    task.wait(0.25)
                    remotes.KeyAcquired:FireServer()
                    task.wait(0.25)
                    remotes.GOHOME:FireServer()
                    task.wait(0.25)
                    remotes.KeyBadgeReward:FireServer()
                end)
            end
        end
    })

    Tab:CreateButton({
        Name = "Auto-Get Riftshot",
        Callback = function()
            pcall(function()
                if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
                    lp.Character.HumanoidRootPart.CFrame = CFrame.new(-260, 16, 477)
                    task.wait(0.8)
                    if ReplicatedStorage:FindFirstChild("RemoteEvents") and ReplicatedStorage.RemoteEvents:FindFirstChild("TargetPractice") then
                        ReplicatedStorage.RemoteEvents.TargetPractice.OnComplete:FireServer() 
                    end
                    lp.Character.HumanoidRootPart.CFrame = CFrame.new(-260, 16, 477)
                    task.wait(1)
                    if ReplicatedStorage:FindFirstChild("RemoteEvents") and ReplicatedStorage.RemoteEvents:FindFirstChild("TargetPractice") then
                        ReplicatedStorage.RemoteEvents.TargetPractice.OnComplete:FireServer()
                    end
                end
            end)
        end
    })

    Tab:CreateButton({
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

            if workspace:FindFirstChild("BoxingGloves") and workspace.BoxingGloves:FindFirstChild("ClickDetector") then
                fireclickdetector(workspace.BoxingGloves.ClickDetector)
            end
        end
    })

    Tab:CreateButton({
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

    Tab:CreateButton({
        Name = "Auto-Get Clock",
        Callback = function()
            local character = lp.Character or lp.CharacterAdded:Wait()
            local HumanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
            if not HumanoidRootPart then return end

            local tpdata = (queue_on_teleport or queueonteleport)
            if tpdata then
                pcall(function()
                    tpdata((GlobalTPData or '') .. ' for i=1,2 do for i,v in ipairs(workspace:GetDescendants()) do if v.ClassName == "ClickDetector" then fireclickdetector(v) end end task.wait(2.5) end while task.wait() do game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:PivotTo(CFrame.new(26.34,4,-1.84)) end')
                end)
            end
            task.wait(.5)
            
            for i = 1, 100 do
                task.wait(0.1)
                if workspace:FindFirstChild("Buildings") and workspace.Buildings:FindFirstChild("wizard twoer") and workspace.Buildings["wizard twoer"]:FindFirstChild("Cone") then
                    HumanoidRootPart:PivotTo(workspace.Buildings["wizard twoer"].Cone.CFrame * CFrame.new(0,15,0))
                end
            end
        end
    })

elseif placeId == 115782629143468 then
    local Window = Rayfield:CreateWindow({
        Name = "Femboy Hub - UTG ID",
        LoadingTitle = "Femboy Hub",
        LoadingSubtitle = "by silentabsolutedayn",
        ConfigurationSaving = { Enabled = false }
    })

    local Tab = Window:CreateTab("UTG", 4483345998)

    Tab:CreateButton({
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

elseif placeId == 79885102123162 then
    local Window = Rayfield:CreateWindow({
        Name = "Femboy Hub",
        LoadingTitle = "Femboy Hub",
        LoadingSubtitle = "by silentabsolutedayn",
        ConfigurationSaving = { Enabled = false }
    })

    local Tab = Window:CreateTab("Collector", 4483345998)

    Tab:CreateButton({
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

elseif placeId == 132277598079047 then
    local Window = Rayfield:CreateWindow({
        Name = "Femboy Hub",
        LoadingTitle = "Femboy Hub",
        LoadingSubtitle = "by silentabsolutedayn",
        ConfigurationSaving = { Enabled = false }
    })

    local Tab = Window:CreateTab("Slender", 4483345998)

    Tab:CreateButton({
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

elseif placeId == 101113181694564 then
    local Window = Rayfield:CreateWindow({
        Name = "Femboy Hub - Shellbert",
        LoadingTitle = "Femboy Hub",
        LoadingSubtitle = "by silentabsolutedayn",
        ConfigurationSaving = { Enabled = false }
    })

    local Tab = Window:CreateTab("Shellbert", 4483345998)

    Tab:CreateButton({
        Name = "Auto-Get conker",
        Callback = function()
            task.spawn(function()
                local remotes = ReplicatedStorage:WaitForChild("Remotes", 5)
                if remotes and remotes:FindFirstChild("Dialogue") then
                    remotes.Dialogue.FinishedNPCDialogue:FireServer()
                end

                task.wait(1)
                if Workspace:FindFirstChild("Map") and Workspace.Map.Props.BasketCollection.Basket:FindFirstChild("ClickDetector") then
                    fireclickdetector(Workspace.Map.Props.BasketCollection.Basket.ClickDetector)
                end
                
                task.wait(7.5)

                while task.wait() do
                    local char = lp.Character
                    local hrp = char and char:FindFirstChild("HumanoidRootPart")
                    
                    if hrp then
                        hrp.CFrame = CFrame.new(36, 4, 1.5)

                        local conker = Workspace:FindFirstChild("Conker")
                        if conker then
                            firetouchinterest(hrp, conker, 0)
                            firetouchinterest(hrp, conker, 1)
                        end

                        pcall(function()
                            ReplicatedStorage.Remotes.tool.use:FireServer("slap")
                            if Workspace:FindFirstChild("NPCs") then
                                for _, v in ipairs(Workspace.NPCs:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") then
                                        ReplicatedStorage.Remotes.tool.hit:FireServer(
                                            "slap",
                                            {["Instance"] = v.HumanoidRootPart}
                                        )
                                    end
                                end
                            end
                        end)
                        
                        pcall(function()
                            if Workspace.Map.CoreAssets.Bowl:FindFirstChild("ProximityPrompt") then
                                fireproximityprompt(Workspace.Map.CoreAssets.Bowl.ProximityPrompt)
                            end
                        end)
                    end
                end
            end)
        end
    })

else
    local Window = Rayfield:CreateWindow({
        Name = "Femboy Hub",
        LoadingTitle = "Femboy Hub",
        LoadingSubtitle = "by silentabsolutedayn",
        ConfigurationSaving = { Enabled = true, FolderName = "FemboyHubConfig", FileName = "Config" }
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

    local Tab1 = Window:CreateTab("Slap Battles Badges", 4483345998)

    Tab1:CreateButton({
        Name = "Auto-Get lag",
        Callback = function()
            pcall(function()
                if ReplicatedStorage:FindFirstChild("Events") and ReplicatedStorage.Events:FindFirstChild("celestial") then
                    ReplicatedStorage.Events.celestial:FireServer("air_time_guy")
                end
            end)
        end
    })

    Tab1:CreateButton({
        Name = "Auto-Get the schlob",
        Callback = function()
            task.spawn(function()
                pcall(function()
                    local LocalPlayer = lp
                    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                    local Humanoid = Character:WaitForChild("Humanoid")

                    local equip = debug.getupvalues(require(ReplicatedStorage.BACKEND.Lib.Network).fireServer)[3]("SelectGlove")

                    local function getLatestCloud()
                        local latest = nil
                        for _, v in pairs(Workspace:GetChildren()) do
                            if v.Name:find("_Cloud") and v:FindFirstChild("VehicleSeat") then
                                latest = v
                            end
                        end
                        return latest
                    end

                    HumanoidRootPart:PivotTo(CFrame.new(243, -16, 0))
                    task.wait(0.3)

                    equip:FireServer("Cloud")
                    task.wait(0.2)
                    ReplicatedStorage.CloudAbility:FireServer()
                    task.wait(0.3)

                    HumanoidRootPart:PivotTo(CFrame.new(243.14, -15.72, -8.10, 1, 0, -0.021, 0, 1, 0, 0.021, 0, 1))
                    task.wait(0.2)

                    equip:FireServer("fish")
                    task.wait(0.3)

                    HumanoidRootPart:PivotTo(CFrame.new(120, 360, -3))

                    local cloudModel = nil
                    local seat = nil
                    for i = 1, 20 do
                        local cloud = getLatestCloud()
                        if cloud and cloud:FindFirstChild("VehicleSeat") then
                            cloudModel = cloud
                            seat = cloud.VehicleSeat
                            break
                        end
                        task.wait(0.1)
                    end

                    if seat then
                        repeat
                            HumanoidRootPart.CFrame = seat.CFrame + Vector3.new(0, 2, 0)
                            seat:Sit(Humanoid)
                            task.wait(0.1)
                        until Humanoid.Sit == true
                    end

                    task.wait(0.8)

                    local targetCloudCFrame = CFrame.new(196.48, 147.59, 88.80, 0.234, 0.000, 0.972, -0.000, 1.000, 0.000, -0.972, -0.000, 0.234)

                    if cloudModel then
                        cloudModel:PivotTo(targetCloudCFrame)
                    end

                    task.wait(1.5)

                    Humanoid.Sit = false
                    task.wait(0.1)

                    ReplicatedStorage.GeneralAbility:FireServer()

                    task.wait(0.7)

                    local plate = Workspace:WaitForChild("Arena"):WaitForChild("Plate")
                    for i = 1, 400 do
                        HumanoidRootPart.CFrame = plate.CFrame * CFrame.new(0, 1.5, 0)
                        task.wait(0.005)
                    end

                    Humanoid.Health = 0
                end)
            end)
        end
    })

    Tab1:CreateButton({
        Name = "Auto-Get Conker",
        Callback = function()
            local s = [[
if not game:IsLoaded() then game.Loaded:Wait() end
task.wait(0.5)

local workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

ReplicatedStorage.Remotes.Dialogue.FinishedNPCDialogue:FireServer()

task.wait(1)
fireclickdetector(workspace.Map.Props.BasketCollection.Basket.ClickDetector)
task.wait(7.5)

while task.wait() do
    hrp.CFrame = CFrame.new(36, 4, 1.5)

    if workspace:FindFirstChild("Conker") then
        firetouchinterest(hrp, workspace.Conker, 0)
        firetouchinterest(hrp, workspace.Conker, 1)
    end

    ReplicatedStorage.Remotes.tool.use:FireServer("slap")
    for i, v in ipairs(workspace.NPCs:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
            ReplicatedStorage.Remotes.tool.hit:FireServer(
                "slap",
                {["Instance"] = v.HumanoidRootPart}
            )
        end
    end
    
    fireproximityprompt(workspace.Map.CoreAssets.Bowl.ProximityPrompt)
end
]]

            local qtp = queue_on_teleport or queueonteleport
            if game.PlaceId == 101113181694564 then
                loadstring(s)()
            else
                if qtp then
                    qtp(s)
                end
                TeleportService:Teleport(101113181694564, lp)
            end
        end
    })

    Tab1:CreateButton({
        Name = "Plate",
        Callback = function()
            TeleportService:Teleport(106620300132058, lp)
        end
    })

    Tab1:CreateButton({
        Name = "Brazil Badge",
        Callback = function()
            local char = lp.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(-1119.05, 309.54, -5.09, 0.039, -0.000, 0.999, -0.000, 1.000, 0.000, -0.999, -0.000, 0.039)
            end
        end
    })

    Tab1:CreateButton({
        Name = "Collector (Teleport)",
        Callback = function()
            TeleportService:Teleport(79885102123162, lp)
        end
    })

    Tab1:CreateButton({
        Name = "Auto UTG",
        Callback = function()
            TeleportService:Teleport(115782629143468, lp)
        end
    })

    Tab1:CreateButton({
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

    Tab1:CreateButton({
        Name = "Auto Recall",
        Callback = function()
            local rsanswrr
            repeat 
                task.wait() 
                if ReplicatedStorage:FindFirstChild("RecallReset") then
                    ReplicatedStorage.RecallReset:FireServer(nil, true) 
                end
                if ReplicatedStorage:FindFirstChild("RecallLastInteractionSteps") then
                    rsanswrr = ReplicatedStorage.RecallLastInteractionSteps:InvokeServer(false) 
                end
            until rsanswrr == "Simon says walk through the portal to collect your reward"
            task.wait(2) 
            if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") and Workspace:FindFirstChild("RepressedMemories") then
                lp.Character.HumanoidRootPart:PivotTo(Workspace.RepressedMemories.Portal.CFrame)
            end
        end
    })

    Tab1:CreateButton({
        Name = "Poltergeist (ONLY HALLOWEEN)",
        Callback = function()
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/nerna-coder/Poltergeist/refs/heads/main/Slap%20battles.lua"))()
            end)
        end    
    })

    Tab1:CreateButton({
        Name = "Instant ice skate",
        Callback = function()
            if ReplicatedStorage:FindFirstChild("IceSkate") then
                ReplicatedStorage.IceSkate:FireServer("Freeze")
            end
        end    
    })

    Tab1:CreateButton({
        Name = "Instant lamp",
        Callback = function()
            pcall(function()
                local Event = ReplicatedStorage:FindFirstChild("nightmare")
                if Event then
                    for i = 35, 120 do
                        Event:FireServer("LightBroken")
                        task.wait(0.05)
                    end
                end
            end)
        end    
    })

    Tab1:CreateButton({
        Name = "Auto 250 and Disarm (bubble) uses kill helper!",
        Callback = function()
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Thiago3246/KillstreakHelper/main/Source.luau"))()
            end)
        end    
    })

    Tab1:CreateButton({
        Name = "Auto Bob (75k+ slaps)",
        Callback = function()
            pcall(function()
                local DuplicateEvent = ReplicatedStorage:FindFirstChild("Duplicate")
                if DuplicateEvent then
                    for i = 1, 150000 do
                        DuplicateEvent:FireServer(true)
                        if i % 100 == 0 then
                            task.wait()
                        end
                    end
                end
                task.wait(1)
                hop()
            end)
        end    
    })

    Tab1:CreateButton({
        Name = "Instnat firework. Player 1 (helper)",
        Callback = function()
            if ReplicatedStorage:FindFirstChild("GeneralAbility") then
                ReplicatedStorage.GeneralAbility:FireServer()
            end
            task.wait(0.2)
            if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
                lp.Character.HumanoidRootPart.CFrame = CFrame.new(-1210.05, 328.22, 2.48, 0.748, -0.000, 0.664, -0.000, 1.000, 0.000, -0.664, -0.000, 0.748)
            end
        end    
    })

    Tab1:CreateButton({
        Name = "Instant Firework. Player 2 (main acc)",
        Callback = function()
            local hrp = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
            if not hrp then return end
            hrp.CFrame = CFrame.new(-1210.05, 328.22, 2.48, 0.748, -0.000, 0.664, -0.000, 1.000, 0.000, -0.664, -0.000, 0.748)
            task.wait(0.3)
            pcall(function()
                if ReplicatedStorage:FindFirstChild("Firework") then ReplicatedStorage.Firework:InvokeServer() end
                if ReplicatedStorage:FindFirstChild("AlchemistEvent") then
                    ReplicatedStorage.AlchemistEvent:FireServer("AddItem", "Cake Mix")
                    task.wait(0.1)
                    ReplicatedStorage.AlchemistEvent:FireServer("EquipItem", "Cake Mix")
                end
            end)
        end    
    })

    Tab1:CreateButton({
        Name = "Auto get plate (with auto executed noclip)",
        Callback = function()
            local function target(v)
                if v:IsA("BasePart") and v.Color == Color3.fromRGB(255, 0, 0) then
                    pcall(function() v:Destroy() end)
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

    Tab1:CreateButton({
        Name = "Insta Lotus (disable verify teleports!)",
        Callback = function()
            pcall(function()
                loadstring(game:HttpGet('https://pastefy.app/Ds8bqkE9/raw'))()
            end)
        end    
    })

    Tab1:CreateButton({
        Name = "Auto get doorkeeper (disable verify teleports!)",
        Callback = function()
            pcall(function()
                loadstring(game:HttpGet('https://pastefy.app/zbj5RgPl/raw'))()
            end)
        end    
    })

    local Tab3 = Window:CreateTab("Slap Farmers", 4483345998)

    Tab3:CreateButton({
        Name = "Nexer slap farm v2 (OP!)",
        Callback = function()
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/NewNexer/NexerHub/refs/heads/main/SB/SFs/SFComponents%3D2.0EGRR.luau"))()
            end)
        end    
    })

    Tab3:CreateButton({
        Name = "St1mlx mastery helper (key)",
        Callback = function()
            pcall(function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/st1mlx/bebebe/refs/heads/main/SBHub'))()
            end)
        end    
    })

    local Tab4 = Window:CreateTab("Credits", 4483345998)

    Tab4:CreateParagraph({Title = "Creators", Content = "silentabsolutedayn"})
    Tab4:CreateParagraph({Title = "2nd creator", Content = "nerna coder-zemboxosx"})
    Tab4:CreateParagraph({Title = "3rd creator", Content = "deltarune_tomorrow"})
    Tab4:CreateParagraph({Title = "Thanks to..", Content = "Nexer open sourced scripts and kindness!"})
    Tab4:CreateParagraph({Title = "Thanks to..", Content = "Scripter for shellbert fix, huge appreciation!"})

    local Tab5 = Window:CreateTab("Funny", 4483345998)

    Tab5:CreateButton({
        Name = "Click this if you support spliot! Don't if you don't know who it is",
        Callback = function()
            lp:Kick("if u support spliot then go fucking kill yourself")
        end    
    })

    Tab5:CreateButton({
        Name = "Run Abuser",
        Callback = function()
            pcall(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/dihmuncher23-lang/Run-abuser/refs/heads/main/Run%20abuser"))()
            end)
        end    
    })

    local Tab6 = Window:CreateTab("Useful", 4483345998)

    Tab6:CreateButton({
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
            end

            if lp.Character then 
                sanitizeCharacter(lp.Character) 
            end
            lp.CharacterAdded:Connect(sanitizeCharacter)
        end    
    })

    Tab6:CreateButton({
        Name = "Noclip",
        Callback = function()
            local character = lp.Character or lp.CharacterAdded:Wait()
            RunService.Stepped:Connect(function()
                if character and character:Parent() then
                    for _, part in pairs(character:GetDescendants()) do
                        if part:IsA("BasePart") and part.CanCollide then
                            part.CanCollide = false
                        end
                    end
                end
            end)
            lp.CharacterAdded:Connect(function(newChar)
                character = newChar
            end)
        end
    })
end
