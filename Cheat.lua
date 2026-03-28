local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local themeName = "RJTheme3"
local Window = Library.CreateLib("Cheats", themeName)

-- Функция для безопасного телепорта
local function teleportTo(cframe)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = cframe
    end
end

-- Проверка и ожидание загрузки персонажа
local function waitForCharacter()
    local player = game.Players.LocalPlayer
    if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
        player.CharacterAdded:Wait()
    end
    return player.Character
end

-- Вкладка "Cheats"
local CheatsTab = Window:NewTab("Cheats")
local CheatsSection = CheatsTab:NewSection("Cheats")

-- Слайдеры
CheatsSection:NewSlider("Speed", "Change WalkSpeed", 500, 0, function(s)
    local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = s
    end
end)

CheatsSection:NewSlider("Jump Power", "Change JumpPower", 500, 0, function(s)
    local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.JumpPower = s
    end
end)

-- Секция "SecretZone + Badge"
local SecretZoneSection = CheatsTab:NewSection("SecretZone + Badge")
SecretZoneSection:NewButton("SecretZone", "", function()
    teleportTo(CFrame.new(889.800232, 125.323059, 44193.7969))
end)
SecretZoneSection:NewButton("M87", "", function()
    teleportTo(CFrame.new(-7650.32373, 3125.56958, -4400.25049))
end)
SecretZoneSection:NewButton("GodFielBadge", "", function()
    teleportTo(CFrame.new(-7019.85547, 2929, -3115.92358))
end)
SecretZoneSection:NewButton("FatalCorruption badge", "", function()
    teleportTo(CFrame.new(-5944.18311, 6068.68164, -15049.4727, -1, 0, 0, 0, 1, 0, 0, 0, -1))
end)
SecretZoneSection:NewButton("idk badge", "", function()
    teleportTo(CFrame.new(-7265.52979, 3127.31372, -4299.09131))
end)
SecretZoneSection:NewButton("cube badge", "", function()
    teleportTo(CFrame.new(-3406.75439, 6278.23242, -10164.918, -0.706647992, 0.0356536172, -0.70666635, 0.0257450007, 0.999363899, 0.0246768296, 0.707096696, -0.000755290501, -0.707116485))
end)
SecretZoneSection:NewButton("idk badge 2x", "", function()
    teleportTo(CFrame.new(-6431.46924, 1580.38342, 134.701508, -0.706652284, 0.0356491283, -0.706662416, 0.0257348102, 0.999364078, 0.024680661, 0.707092941, -0.000745177269, -0.707120299))
end)

-- Вкладка "SecretSans"
local SecretTab = Window:NewTab("SecretSans")
local SecretSection = SecretTab:NewSection("Teleports")
SecretSection:NewButton("HyperDustInk", "", function()
    teleportTo(CFrame.new(118.201523, 90.9879303, 1906.19519))
end)
SecretSection:NewButton("Corrupted Insanity", "", function()
    teleportTo(CFrame.new(-2036.12158, 220.387589, -810.552612))
end)
SecretSection:NewButton("DustSansEndGoal", "", function()
    teleportTo(CFrame.new(118.201523, 136.98793, 1253.18896))
end)
SecretSection:NewButton("RenewedInsanity", "", function()
    teleportTo(CFrame.new(367.415771, 129.500168, 44187.8359))
end)
SecretSection:NewButton("hyperDust", "", function()
    teleportTo(CFrame.new(118.201523, 80.9879303, 1064.12183))
end)
SecretSection:NewButton("Furry666", "", function()
    teleportTo(CFrame.new(118.201523, 80.9879303, 533.189026))
end)
