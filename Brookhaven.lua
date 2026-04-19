-- [[ dhanush music - GLOBAL ]] --
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- THEME
local Theme = {
    Background = Color3.fromRGB(15, 15, 15),
    Accent = Color3.fromRGB(0, 255, 150), -- Neon Green
    Text = Color3.fromRGB(255, 255, 255)
}

-- GLOBAL PLAYLIST
local playlist = {
    {Name = "Global Hit 1", ID = "1837826620"},
    {Name = "Party Vibe", ID = "1843404009"},
    {Name = "Bass Boost", ID = "1846088038"}
}

-- UI SETUP
local sg = Instance.new("ScreenGui", player.PlayerGui)
sg.Name = "DhanushGlobalUI"

local frame = Instance.new("Frame", sg)
frame.Size = UDim2.new(0, 200, 0, 250)
frame.Position = UDim2.new(0.5, -100, 0.4, 0)
frame.BackgroundColor3 = Theme.Background
frame.Draggable = true
frame.Active = true

-- BUTTON GENERATOR
for i, song in pairs(playlist) do
    local btn = Instance.new("TextButton", frame)
    btn.Text = song.Name
    btn.Size = UDim2.new(0.9, 0, 0, 35)
    btn.Position = UDim2.new(0.05, 0, 0, 10 + (i * 40))
    btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    btn.TextColor3 = Theme.Text
    
    btn.MouseButton1Click:Connect(function()
        -- THIS LINE MAKES IT GLOBAL IN BROOKHAVEN
        -- It tells the game to play your ID through your character/car
        ReplicatedStorage.RemoteEvents.MusicID:FireServer(song.ID) 
        print("Sent to Server: " .. song.Name)
    end)
end

