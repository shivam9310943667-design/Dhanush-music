local Library = loadstring(game:HttpGet("https://githubusercontent.com"))()
local Window = Library.CreateLib("Dhanush Music & Tools", "Midnight")

local Main = Window:NewTab("Vehicles")
local MainSection = Main:NewSection("Skateboard & Hoverboard")

MainSection:NewButton("Equip Skateboard", "Get Skateboard", function()
    game:GetService("ReplicatedStorage").RE:FindFirstChild("v"):FireServer("Skateboard")
end)

MainSection:NewButton("Equip Hoverboard", "Get Hoverboard (Premium)", function()
    game:GetService("ReplicatedStorage").RE:FindFirstChild("v"):FireServer("Hoverboard")
end)

local Music = Window:NewTab("Music")
local MusicSection = Music:NewSection("Server Music")

MusicSection:NewTextBox("Enter ID", "Type Song ID and Press Enter", function(id)
    game:GetService("ReplicatedStorage").RE:FindFirstChild("m"):FireServer("PlaySong", id)
end)

MusicSection:NewButton("Stop Music", "Turn off music", function()
    game:GetService("ReplicatedStorage").RE:FindFirstChild("m"):FireServer("PlaySong", "0")
end)

local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Settings")

PlayerSection:NewSlider("WalkSpeed", "Set your Speed", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
