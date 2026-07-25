-- open source
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Pro666Pro/DraggableOrionLib/main/main.lua")))()
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
    local url = "https://roblox.com" .. placeId .. "/servers/0?sortOrder=Desc&limit=100"
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

-- auto bob itself lol
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

-- instead of being tab2 its tab3 now
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

Tab4:AddParagraph("Creators","silentabsolutedayn")
Tab4:AddParagraph("2nd creator","nerna coder-zemboxosx")
Tab4:AddParagraph("3rd creator","deltarune_tomorrow")
Tab4:AddParagraph("Thanks to..","Nexer open sourced scripts and kindness!")

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

Tab5:AddButton({
    Name = "Hide your username",
    Callback = function()
        print("button pressed")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- clear ur nickname
local function sanitizeCharacter(character)
    if not character then return end

    -- hiding humanoid nickname
    local humanoid = character:WaitForChild("Humanoid", 5)
    if humanoid then
        humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
        humanoid.DisplayName = ""
    end

    local head = character:WaitForChild("Head", 5)
    if not head then return end

    -- 2. hiding billboard ui
                for _, child in pairs(head:GetChildren()) do
        if child:IsA("BillboardGui") then
            child.Enabled = false
        end
    end

    -- 3. lets see if were good with chat
    head.ChildAdded:Connect(function(child)
        if child:IsA("BillboardGui") then
            child.Enabled = false
            -- is there anything in bubble?
            for _, desc in pairs(child:GetDescendants()) do
                if desc:IsA("TextLabel") and string.find(string.lower(desc.Text), string.lower(LocalPlayer.Name)) then
                    desc.Visible = false
                end
            end
        end
    end)
end

-- analyzing users for anothers and ourself 
if LocalPlayer.Character then
    sanitizeCharacter(LocalPlayer.Character)
end

LocalPlayer.CharacterAdded:Connect(function(character)
    sanitizeCharacter(character)
end)

-- protected cycle idk
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

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]

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

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]
OrionLib:Init()
