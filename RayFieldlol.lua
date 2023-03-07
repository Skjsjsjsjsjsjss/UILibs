local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "LOLHUB",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "sirius", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "LOLHUB",
      Subtitle = "Key System",
      Note = "Key: ShutUpNiggaJoo",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "ShutUpNiggaJoo"
   }
})

local Tab = Window:CreateTab("speed of legends", 4483362458)

local Section = Tab:CreateSection(" ")

Rayfield:Notify({
   Title = "Key",
   Content = "Valid!",
   Duration = 3.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("LOL")
      end
   },
},
})

local Toggle = Tab:CreateToggle({
   Name = "Get Hoops",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   local children = workspace.Hoops:GetChildren()
for i, child in ipairs(children) do
    if child.Name == "Hoop" then 
child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end    
end
   end,
})

local Paragraph = Tab:CreateParagraph({Title = "Game:", Content = "Speed Of Legends"})

local Tab = Window:CreateTab("Blox Fruits", 4483362458)

local Toggle = Tab:CreateToggle({
   Name = "TP Fruit",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   local h = game.Players.LocalPlayer.Character.HumanoidRootPart
 
for i, v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool")  then
        if v.Fruit then
              h.CFrame = v.Fruit.CFrame + Vector3.new(0,4,0)
              wait(1)
        end
    end
    if v:IsA("Model") and v.Name == "Fruit " then
      if v.Fruit then
              h.CFrame = v.Fruit.CFrame + Vector3.new(0,4,0)
              wait(1)
        end
    end
end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "ESP chest",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   for i , v in pairs (workspace:GetDescendants()) do
  if string.find(v.Name, "Chest") then
    if v:IsA("Part") then
      if v.Transparency == 0 then
                local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		BillboardGui.Parent = v
		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		BillboardGui.Active = true
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Size = UDim2.new(0, 100, 0, 25)
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderSizePixel = 0
		TextLabel.Size = UDim2.new(0, 100, 0, 25)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = "Chest"
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14
		TextLabel.TextWrapped = true
		if v.Name == "Chest1" then 
		    TextLabel.TextColor3 = Color3.fromRGB(109,109,109)
		end
		if v.Name == "Chest2" then 
		    TextLabel.TextColor3 = Color3.fromRGB(173,158,21)
		end
		if v.Name == "Chest3" then 
		    TextLabel.TextColor3 = Color3.fromRGB(85, 255, 255)
		end
      end
    end
  end
end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "ESP Flower",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   for i , v in pairs (workspace:GetDescendants()) do
    if v:IsA("Part") then
      if string.find(v.Name, "Flower") then
          if v.Transparency == 0 then
            local BillboardGui = Instance.new("BillboardGui")
    		local TextLabel = Instance.new("TextLabel")
    		BillboardGui.Parent = v
    		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    		BillboardGui.Active = true
    		BillboardGui.AlwaysOnTop = true
    		BillboardGui.LightInfluence = 1
    		BillboardGui.Size = UDim2.new(0, 100, 0, 25)
    		TextLabel.Parent = BillboardGui
    		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    		TextLabel.BackgroundTransparency = 1
    		TextLabel.BorderSizePixel = 0
    		TextLabel.Size = UDim2.new(0, 100, 0, 25)
    		TextLabel.Font = Enum.Font.SourceSans
    		TextLabel.Text = v.Name
    		TextLabel.TextColor3 = v.Color
    		TextLabel.TextScaled = true
    		TextLabel.TextSize = 14
    		TextLabel.TextWrapped = true
    		if v.Name == "Flower1" then 
    			TextLabel.Text = "Blue Flower"
    		end
    		if v.Name == "Flower2" then
    		        TextLabel.Text = "Red Flower"
    		end
          end
      end
    end
end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "ESP Fruit",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   for i, v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool")  then
        if v.Fruit then
                local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		BillboardGui.Parent = v.Fruit
		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		BillboardGui.Active = true
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Size = UDim2.new(0, 100, 0, 25)
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderSizePixel = 0
		TextLabel.Size = UDim2.new(0, 100, 0, 25)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = v.Name
		TextLabel.TextColor3 = v.Fruit.Color
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14
		TextLabel.TextWrapped = true
        end
    end
    if v:IsA("Model") and v.Name == "Fruit " then
      if v.Fruit then
                local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		BillboardGui.Parent = v
		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		BillboardGui.Active = true
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Size = UDim2.new(0, 100, 0, 25)
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderSizePixel = 0
		TextLabel.Size = UDim2.new(0, 100, 0, 25)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = "Fruit"
		TextLabel.TextColor3 = v.Fruit.Color
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14
		TextLabel.TextWrapped = true
        end
    end
end
   end,
})

local Tab = Window:CreateTab("Break In", 4483362458)

local Toggle = Tab:CreateToggle({
   Name = "Become Swat(Do In Lobby)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   local A_1 = "SwatGun"
local A_2 = true
local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
Event:FireServer(A_1, A_2)
   end,
})

local Tab = Window:CreateTab("scripts", 4483362458)

local Toggle = Tab:CreateToggle({
   Name = "FullBright",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   local s = Instance.new("PointLight", game.Players.LocalPlayer.Character.Head)
   s.Brightness = .3
   s.Range = 100

game.Lighting.Changed:connect(function()
game.Lighting.TimeOfDay = "14:00:00"
game.Lighting.FogEnd = 9999
game.Lighting.Brightness = 2
game.Lighting.ColorCorrection.Brightness = 0.1
game.Lighting.ColorCorrection.Saturation = 0.1
game.Lighting.Bloom.Intensity = 0.1
end)

   end,
})

local Toggle = Tab:CreateToggle({
   Name = "speed 50",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Noclip",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Loaded')
print('Press "E" to noclip')
   end,
})

local Paragraph = Tab:CreateParagraph({Title = "Game:", Content = "None"})
