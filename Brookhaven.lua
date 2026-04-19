-- Dhanush Music & Tools - Brookhaven Script
local Library = loadstring(game:HttpGet("https://githubusercontent.com"))()
local Window = Library.CreateLib("Dhanush Music & Tools", "Midnight")

-- Main Tab
local Main = Window:NewTab("Vehicles")
local MainSection = Main:NewSection("Skateboard & Hoverboard")

MainSection:NewButton("Equip Skateboard", "Free Skateboard nikalein", function()
    game:GetService("ReplicatedStorage").RE:FindFirstChild("v"):FireServer("Skateboard")
end)

MainSection:NewButton("Equip Hoverboard", "Premium Hoverboard Try Karein", function()
    -- Brookhaven ka premium event trigger karne ki koshish
    game:GetService("ReplicatedStorage").RE:FindFirstChild("v"):FireServer("Hoverboard")
end)

-- Music Tab
local Music = Window:NewTab("Music System")
local MusicSection = Music.NewSection("Server Music (Needs Music Pass)")

MusicSection:NewTextBox("Enter Music ID", "Yahan ID daalein aur Enter dabayein", function(id)
    -- Music pass hone par hi server par bajega
    game:GetService("ReplicatedStorage").RE:FindFirstChild("m"):FireServer("PlaySong", id)
end)

MusicSection:NewButton("Stop Music", "Gana band karein", function()
    game:GetService("ReplicatedStorage").RE:FindFirstChild("m"):FireServer("PlaySong", "0")
end)

-- Player Tab (Ek Extra tohfa)
local Player = Window:NewTab("Player Settings")
local PlayerSection = Player:NewSection("Character Control")

PlayerSection:NewSlider("Walkspeed", "Tez doudne ke liye", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewButton("Reset Speed", "Normal speed karein", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

-- Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "Dhanush Music Loaded!",
    Text = "Enjoy your Brookhaven Script",
    Duration = 5
})
