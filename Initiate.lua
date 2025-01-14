-- loadstring(game:HttpGet("https://raw.githubusercontent.com/wuw-shz/Dig-It/refs/heads/main/Initiate.lua"))()

local function Notify(Text)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "FrostByte Notification",
		Text = Text,
		Duration = 10
	})
end

local Code = game:HttpGet(`https://raw.githubusercontent.com/wuw-shz/Dig-It/9daeee81f1964de945139caabfa383f75accaf35/Games/DigIt.lua`)

if Code then
	Notify("Game found, the script is loading.")
	loadstring(Code)()
else
	Notify("Could not find a script for this game.")
end