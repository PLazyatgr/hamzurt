-- Hamzurt GUI Final Script (tanpa loadstring)

-- Services
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local Mouse = player:GetMouse()

-- UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

-- Create main window
local Window = Library:MakeWindow({
    Name = "Hamzurt GUI",
    HidePremium = false,
    SaveConfig = true,
    IntroText = "Welcome to Hamzurt!",
    ConfigFolder = "HamzurtGUI"
})

-- Menu: Script Hub (Tombol S)
local scriptTab = Window:MakeTab({
    Name = "Script Hub",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Contoh 10 game dengan script hub (dengan UI bawaan)
local gameScripts = {
    ["Blox Fruits"] = "https://raw.githubusercontent.com/REDzHUBHUB/BloxFruit/main/README.md",
    ["Pet Simulator X"] = "https://raw.githubusercontent.com/VeriHub/VeriHubScript/main/PetSimulatorX",
    ["Arsenal"] = "https://raw.githubusercontent.com/RobloxHacksYT/Arsenal-Hack-GUI/main/ArsenalGUI.lua",
    ["King Legacy"] = "https://raw.githubusercontent.com/VeriHub/VeriHubScript/main/KingLegacy",
    ["Anime Fighters"] = "https://raw.githubusercontent.com/KonichiwaHub/AnimeFighters/main/Main.lua",
    ["Shindo Life"] = "https://raw.githubusercontent.com/NexusScriptHub/Shindo-Life/main/Shindo.lua",
    ["Brookhaven"] = "https://raw.githubusercontent.com/kjay1211/RobloxScripts/main/Brookhaven/Script.lua",
    ["Da Hood"] = "https://raw.githubusercontent.com/ScriptRipperz/DaHood/main/gui",
    ["Slap Battles"] = "https://raw.githubusercontent.com/REDzHUBHUB/SlapBattle/main/README.md",
    ["Rainbow Friends"] = "https://raw.githubusercontent.com/RandomRobloxScript/RainbowFriends/main/script"
}

-- Generate buttons for each game
for gameName, scriptUrl in pairs(gameScripts) do
    scriptTab:AddButton({
        Name = gameName,
        Callback = function()
            loadstring(game:HttpGet(scriptUrl))()
        end
    })
end

-- Menu: Troll FE (Tombol T)
local trollTab = Window:MakeTab({
    Name = "Troll FE",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

trollTab:AddButton({
    Name = "FE Fly",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabledFly/FEFly/main/main.lua"))()
    end
})

trollTab:AddButton({
    Name = "Fling GUI",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxScriptHub/Fling/main/FlingGUI.lua"))()
    end
})

-- Animasi saat execute
Library:MakeNotification({
    Name = "Hamzurt GUI Loaded!",
    Content = "Script berhasil di-load.",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- Logo 'H' sebagai toggle
local toggleGui = Instance.new("ImageButton")
toggleGui.Name = "HamzurtToggle"
toggleGui.Size = UDim2.new(0, 50, 0, 50)
toggleGui.Position = UDim2.new(0, 10, 0, 200)
toggleGui.Image = "rbxassetid://YOUR_IMAGE_ID_HERE" -- ganti dengan image logo 'H' yang kamu upload ke Roblox
toggleGui.BackgroundTransparency = 1
toggleGui.Parent = game:GetService("CoreGui")

toggleGui.MouseButton1Click:Connect(function()
    Library:ToggleUI()
end)
