repeat task.wait() until game:IsLoaded()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Custom Lighting (Right Shift to toggle UI)", "Ocean")

-- lighting stuff below

local Lighting = game:GetService("Lighting")
local SunRays = Lighting:FindFirstChildOfClass("SunRaysEffect")
local Sky = Lighting:FindFirstChildOfClass("Sky")
local ColorCorrection = Lighting:FindFirstChildOfClass("ColorCorrectionEffect")
local Blur = Lighting:FindFirstChildOfClass("BlurEffect")
local Bloom = Lighting:FindFirstChildOfClass("BloomEffect")
local Atmosphere = Lighting:FindFirstChildOfClass("Atmosphere")

-- features and shit

local Tab = Window:NewTab("Sky Changer")
local Section = Tab:NewSection("basic skybox stuff")

Section:NewToggle("Show Celestial Bodies", "Planets, stars, etc.", function(state)
    if state then
        Sky.CelestialBodiesShown = true
    else
        Sky.CelestialBodiesShown = false
    end
end)

Section:NewSlider("Moon Size", "Moon Angular size", 60, 0, function(moonsize)
    Sky.MoonAngularSize = moonsize
end)

Section:NewTextBox("Skybox BK", "Back of the skybox", function(skybk)
	Sky.SkyboxBk = (skybk)
end)

Section:NewTextBox("Skybox DN", "Bottom of the skybox", function(skydn)
	Sky.SkyboxDn = (skydn)
end)

Section:NewTextBox("Skybox FT", "Front of the skybox", function(skyft)
	Sky.SkyboxFt = (skyft)
end)

Section:NewTextBox("Skybox LF", "Left of the skybox", function(skylf)
	Sky.SkyboxLf = (skylf)
end)

Section:NewTextBox("Skybox RT", "Right of the skybox", function(skyrt)
	Sky.SkyboxRt = (skyrt)
end)

Section:NewTextBox("Skybox UP", "Top of the skybox", function(skyup)
	Sky.SkyboxUp = (skyup)
end)

Section:NewTextBox("Star Amount", "Number of stars", function(StarAmount)
	Sky.StarCount = (StarAmount)
end)

Section:NewSlider("Sun Size", "Sun Angular size", 60, 0, function(sunsize)
    Sky.SunAngularSize = sunsize
end)

Section:NewButton("Pre-added skybox 1", "if 2 lazy to put in own skybox", function()
    Sky.SkyboxBk = "http://www.roblox.com/asset/?id=600830446"
    Sky.SkyboxDn = "http://www.roblox.com/asset/?id=600831635"
    Sky.SkyboxFt = "http://www.roblox.com/asset/?id=600832720"
    Sky.SkyboxLf = "http://www.roblox.com/asset/?id=600886090"
    Sky.SkyboxRt = "http://www.roblox.com/asset/?id=600833862"
    Sky.SkyboxUp = "http://www.roblox.com/asset/?id=600835177"
end)

Section:NewButton("Pre-added skybox 2", "if 2 lazy to put in own skybox", function()
    Sky.SkyboxBk = "rbxassetid://653719502"
    Sky.SkyboxDn = "rbxassetid://653718790"
    Sky.SkyboxFt = "rbxassetid://653719067"
    Sky.SkyboxLf = "rbxassetid://653719190"
    Sky.SkyboxRt = "rbxassetid://653718931"
    Sky.SkyboxUp = "rbxassetid://653719321"
    Sky.StarCount = 1336
    Sky.CelestialBodiesShown = true
end)

--sunrayssss

local Tab = Window:NewTab("Sun Rays")
local Section = Tab:NewSection("Increase numbers by 0.01 or 0.05")

Section:NewTextBox("Intensity", "SunRays Intensity", function(srintensity)
	SunRays.Intensity = (srintensity)
end)

Section:NewTextBox("Spread", "SunRays Spread", function(srspread)
	SunRays.Spread = (srspread)
end)

--ColorCorrection changer

local Tab = Window:NewTab("Color Correction")
local Section = Tab:NewSection("Not all games support this if I'm not wrong")
Section:NewLabel("Increase by 0.01 or 0.05")

Section:NewToggle("Toggle CCorrection", "you stupid if u dont know what it does", function(statee)
    if statee then
        ColorCorrection.Enabled = true
    else
        ColorCorrection.Enabled = false
    end
end)

Section:NewTextBox("Brightness", "Color Correction Brightness", function(CCB)
	ColorCorrection.Brightness = (CCB)
end)

Section:NewTextBox("Contrast", "Color Correction Contrast", function(CCC)
	ColorCorrection.Contrast = (CCC)
end)

Section:NewTextBox("Saturation", "Color Correction Saturation", function(CCS)
	ColorCorrection.Saturation = (CCS)
end)

Section:NewColorPicker("Color", "Color Correction Color", Color3.fromRGB(255,253,238), function(cccolor)
    ColorCorrection.Color = (cccolor)
end)

-- bloom modifier

local Tab = Window:NewTab("Bloom Effect")
local Section = Tab:NewSection("Bloom settings woohoo")

Section:NewToggle("Toggle Bloom", "????", function(bloomstate)
    if bloomstate then
        Bloom.Enabled = true
    else
        Bloom.Enabled = false
    end
end)

Section:NewTextBox("Intensity", "Bloom intensity", function(bi)
	Bloom.Intensity = (bi)
end)

Section:NewTextBox("Size", "Bloom size", function(bs)
	Bloom.Size = (bs)
end)

Section:NewTextBox("Threshold", "Lower value = more bloom", function(bt)
	Bloom.Threshold = (bt)
end)

-- blur modifier

local Tab = Window:NewTab("Blur Effect")
local Section = Tab:NewSection("Blur settings")

Section:NewToggle("Toggle Blur", "????", function(blurstate)
    if blurstate then
        Blur.Enabled = true
    else
        Blur.Enabled = false
    end
end)

Section:NewTextBox("Size", "Blur size", function(brs)
	Blur.Size = (brs)
end)

-- atmosphere settings what WHAT NO WAY IM ALMOS DONE WITH THIS SHIT

local Tab = Window:NewTab("Atmosphere")
local Section = Tab:NewSection("Atmosphere settings, its like fog but more advanced")

Section:NewTextBox("Density", "the name says what it is", function(AD)
	Atmosphere.Density = (AD)
end)

Section:NewTextBox("Offset", "idk", function(AO)
	Atmosphere.Offset = (AO)
end)

Section:NewTextBox("Glare", "dont know this either", function(AG)
	Atmosphere.Glare = (AG)
end)

Section:NewTextBox("Haze", "void?", function(AH)
	Atmosphere.Haze = (AH)
end)

Section:NewColorPicker("Color", "Color", Color3.fromRGB(200,170,108), function(acolor)
    Atmosphere.Color = (acolor)
end)

Section:NewColorPicker("Decay", "dunno", Color3.fromRGB(92,60,14), function(adecay)
    Atmosphere.Decay = (adecay)
end)

local Tab = Window:NewTab("More stuff")
local Section = Tab:NewSection("MOREEEEE")

Section:NewButton("Daylight cycle", "sun goes around wow rejoin to turn off", function()
    while true do
        Lighting.ClockTime = Lighting.ClockTime + 0.00125
        wait(0.0125)
    end 
end)

Section:NewButton("Rejoin", "Rejoin the current server", function()
    local ts = game:GetService("TeleportService")

    local p = game:GetService("Players").LocalPlayer

    ts:Teleport(game.PlaceId, p)
end)

Section:NewKeybind("Toggle UI", "Default: Right Shift", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)
