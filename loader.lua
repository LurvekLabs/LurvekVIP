local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer

if getgenv().LXExecuted then return end
getgenv().LXExecuted = true

local _0x4 = string.char(76,117,114,118,101,107,71,111,97,116)
local _0x5 = "https://raw.githubusercontent.com/TU_USUARIO/TU_REPO/main/script.lua"

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = math.random(100000,999999)
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 340, 0, 150)
Frame.Position = UDim2.new(0.5, -170, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 10)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Position = UDim2.new(0, 0, 0, 10)
Title.BackgroundTransparency = 1
Title.Text = "Lurvek VIP"
Title.TextColor3 = Color3.fromRGB(170, 100, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.85, 0, 0, 36)
TextBox.Position = UDim2.new(0.075, 0, 0.38, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.PlaceholderText = "Key..."
TextBox.Text = ""
TextBox.Font = Enum.Font.Gotham
TextBox.TextSize = 15
TextBox.ClearTextOnFocus = false
TextBox.Parent = Frame

local UICorner2 = Instance.new("UICorner", TextBox)
UICorner2.CornerRadius = UDim.new(0, 6)

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.85, 0, 0, 34)
Button.Position = UDim2.new(0.075, 0, 0.68, 0)
Button.BackgroundColor3 = Color3.fromRGB(170, 100, 255)
Button.Text = "Verify"
Button.TextColor3 = Color3.new(1, 1, 1)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 15
Button.Parent = Frame

local UICorner3 = Instance.new("UICorner", Button)
UICorner3.CornerRadius = UDim.new(0, 6)

Button.MouseButton1Click:Connect(function()
	local input = TextBox.Text

	if input == "" then
		Button.Text = "Empty"
		Button.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
		task.wait(1.1)
		Button.Text = "Verify"
		Button.BackgroundColor3 = Color3.fromRGB(170, 100, 255)
		return
	end

	Button.Text = "..."
	task.wait(0.35)

	if input == _0x4 then
		Button.Text = "Valid"
		Button.BackgroundColor3 = Color3.fromRGB(0, 180, 80)
		task.wait(0.5)
		ScreenGui:Destroy()

		local s, e = pcall(function()
			loadstring(game:HttpGet(_0x5))()
		end)

		if not s then
			warn(e)
		end
	else
		Button.Text = "Invalid"
		Button.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
		task.wait(1.4)
		Button.Text = "Verify"
		Button.BackgroundColor3 = Color3.fromRGB(170, 100, 255)
	end
end)
