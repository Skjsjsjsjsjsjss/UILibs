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

local Paragraph = Tab:CreateParagraph({Title = "Game:", Content = "None"})
