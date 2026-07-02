local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local oldGui = LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("Hacker67MenuV2")
if oldGui then oldGui:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Hacker67MenuV2"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local states = {
	WalkSpeed = false,
	JumpBoost = false,
	InfJump = false,
	Noclip = false,
	Fling = false
}

local function styleFrame(frame, color, radius)
	frame.BackgroundColor3 = color
	frame.BorderSizePixel = 0
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, radius)
	corner.Parent = frame
end

local function styleButton(btn, normalColor, font, text, size)
	btn.BackgroundColor3 = normalColor
	btn.BorderSizePixel = 0
	btn.Font = font
	btn.Text = text
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.TextSize = size
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 6)
	corner.Parent = btn
end

local KeyFrame = Instance.new("Frame")
KeyFrame.Name = "KeyFrame"
KeyFrame.Size = UDim2.new(0, 320, 0, 180)
KeyFrame.Position = UDim2.new(0.5, -160, 0.4, -90)
styleFrame(KeyFrame, Color3.fromRGB(25, 25, 28), 10)
KeyFrame.Active = true
KeyFrame.Draggable = true
KeyFrame.Parent = ScreenGui

local KeyShadow = Instance.new("Frame")
KeyShadow.Size = UDim2.new(1, 4, 1, 4)
KeyShadow.Position = UDim2.new(0, -2, 0, -2)
styleFrame(KeyShadow, Color3.fromRGB(15, 15, 18), 12)
KeyShadow.ZIndex = 0
KeyShadow.Parent = KeyFrame

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 40)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.Text = "H67 | GATEWAY SECURITY"
KeyTitle.TextColor3 = Color3.fromRGB(160, 160, 170)
KeyTitle.TextSize = 14
KeyTitle.Parent = KeyFrame

local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(0.8, 0, 0, 36)
KeyInput.Position = UDim2.new(0.1, 0, 0.3, 0)
styleFrame(KeyInput, Color3.fromRGB(35, 35, 40), 6)
KeyInput.Font = Enum.Font.Gotham
KeyInput.Text = ""
KeyInput.PlaceholderText = "Enter Access Key..."
KeyInput.PlaceholderColor3 = Color3.fromRGB(100, 100, 110)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextSize = 14
KeyInput.Parent = KeyFrame

local KeySubmit = Instance.new("TextButton")
KeySubmit.Size = UDim2.new(0.8, 0, 0, 36)
KeySubmit.Position = UDim2.new(0.1, 0, 0.6, 10)
styleButton(KeySubmit, Color3.fromRGB(75, 40, 180), Enum.Font.GothamBold, "VERIFY KEY", 14)
KeySubmit.Parent = KeyFrame

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 240, 0, 360)
MainFrame.Position = UDim2.new(0.1, 0, 0.3, 0)
styleFrame(MainFrame, Color3.fromRGB(18, 18, 22), 12)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false
MainFrame.Parent = ScreenGui

local GlowLine = Instance.new("Frame")
GlowLine.Size = UDim2.new(1, 0, 0, 3)
styleFrame(GlowLine, Color3.fromRGB(0, 220, 140), 0)
GlowLine.Parent = MainFrame

local MainTitle = Instance.new("TextLabel")
MainTitle.Size = UDim2.new(1, -40, 0, 40)
MainTitle.Position = UDim2.new(0, 12, 0, 0)
MainTitle.BackgroundTransparency = 1
MainTitle.Font = Enum.Font.GothamBold
MainTitle.Text = "Hacker67 Menu v2"
MainTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
MainTitle.TextSize = 15
MainTitle.TextXAlignment = Enum.TextXAlignment.Left
MainTitle.Parent = MainFrame

local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 24, 0, 24)
MinimizeBtn.Position = UDim2.new(1, -32, 0, 8)
styleButton(MinimizeBtn, Color3.fromRGB(30, 30, 35), Enum.Font.GothamBold, "—", 12)
MinimizeBtn.Parent = MainFrame

local MiniLog = Instance.new("TextButton")
MiniLog.Name = "MiniLog"
MiniLog.Size = UDim2.new(0, 50, 0, 50)
MiniLog.Position = UDim2.new(0.02, 0, 0.4, 0)
styleFrame(MiniLog, Color3.fromRGB(18, 18, 22), 25)
MiniLog.Font = Enum.Font.GothamBold
MiniLog.Text = "H67"
MiniLog.TextColor3 = Color3.fromRGB(0, 220, 140)
MiniLog.TextSize = 14
MiniLog.Visible = false
MiniLog.Active = true
MiniLog.Draggable = true
MiniLog.Parent = ScreenGui

local MiniStroke = Instance.new("UIStroke")
MiniStroke.Color = Color3.fromRGB(0, 220, 140)
MiniStroke.Thickness = 2
MiniStroke.Parent = MiniLog

MinimizeBtn.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
	MiniLog.Position = UDim2.new(0, MainFrame.AbsolutePosition.X, 0, MainFrame.AbsolutePosition.Y)
	MiniLog.Visible = true
end)

MiniLog.MouseButton1Click:Connect(function()
	MiniLog.Visible = false
	MainFrame.Position = UDim2.new(0, MiniLog.AbsolutePosition.X, 0, MiniLog.AbsolutePosition.Y)
	MainFrame.Visible = true
end)

local ButtonLayout = Instance.new("UIListLayout")
ButtonLayout.Padding = UDim.new(0, 8)
ButtonLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
ButtonLayout.SortOrder = Enum.SortOrder.LayoutOrder

local ButtonContainer = Instance.new("Frame")
ButtonContainer.Size = UDim2.new(1, 0, 1, -50)
ButtonContainer.Position = UDim2.new(0, 0, 0, 45)
ButtonContainer.BackgroundTransparency = 1
ButtonContainer.Parent = MainFrame
ButtonLayout.Parent = ButtonContainer

local function createToggle(name, layoutOrder, callback)
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(0.9, 0, 0, 42)
	btn.LayoutOrder = layoutOrder
	styleButton(btn, Color3.fromRGB(28, 28, 32), Enum.Font.GothamBold, name .. ": OFF", 13)
	btn.Parent = ButtonContainer
	
	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(40, 40, 45)
	stroke.Thickness = 1
	stroke.Parent = btn

	btn.MouseButton1Click:Connect(function()
		states[name] = not states[name]
		callback(states[name], btn, stroke)
	end)
end

createToggle("WalkSpeed", 1, function(isActive, btn, stroke)
	local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local hum = char:FindFirstChildOfClass("Humanoid")
	if hum then
		if isActive then
			hum.WalkSpeed = 100
			btn.Text = "WalkSpeed: ON"
			btn.BackgroundColor3 = Color3.fromRGB(0, 80, 55)
			stroke.Color = Color3.fromRGB(0, 220, 140)
		else
			hum.WalkSpeed = 16
			btn.Text = "WalkSpeed: OFF"
			btn.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
			stroke.Color = Color3.fromRGB(40, 40, 45)
		end
	end
end)

createToggle("JumpBoost", 2, function(isActive, btn, stroke)
	local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local hum = char:FindFirstChildOfClass("Humanoid")
	if hum then
		if isActive then
			hum.UseJumpPower = true
			hum.JumpPower = 150
			btn.Text = "JumpBoost: ON"
			btn.BackgroundColor3 = Color3.fromRGB(0, 80, 55)
			stroke.Color = Color3.fromRGB(0, 220, 140)
		else
			hum.JumpPower = 50
			btn.Text = "JumpBoost: OFF"
			btn.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
			stroke.Color = Color3.fromRGB(40, 40, 45)
		end
	end
end)

createToggle("InfinityJump", 3, function(isActive, btn, stroke)
	if isActive then
		btn.Text = "InfJump: ON"
		btn.BackgroundColor3 = Color3.fromRGB(0, 80, 55)
		stroke.Color = Color3.fromRGB(0, 220, 140)
	else
		btn.Text = "InfJump: OFF"
		btn.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
		stroke.Color = Color3.fromRGB(40, 40, 45)
	end
end)

UserInputService.JumpRequest:Connect(function()
	if states["InfinityJump"] then
		local char = LocalPlayer.Character
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		if hum then
			char:FindFirstChildOfClass("Part").Velocity = Vector3.new(char:FindFirstChildOfClass("Part").Velocity.X, hum.JumpPower, char:FindFirstChildOfClass("Part").Velocity.Z)
		end
	end
end)

createToggle("Noclip", 4, function(isActive, btn, stroke)
	if isActive then
		btn.Text = "Noclip: ON"
		btn.BackgroundColor3 = Color3.fromRGB(0, 80, 55)
		stroke.Color = Color3.fromRGB(0, 220, 140)
	else
		btn.Text = "Noclip: OFF"
		btn.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
		stroke.Color = Color3.fromRGB(40, 40, 45)
	end
end)

createToggle("Fling", 5, function(isActive, btn, stroke)
	if isActive then
		btn.Text = "Fling: ON"
		btn.BackgroundColor3 = Color3.fromRGB(0, 80, 55)
		stroke.Color = Color3.fromRGB(0, 220, 140)
	else
		btn.Text = "Fling: OFF"
		btn.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
		stroke.Color = Color3.fromRGB(40, 40, 45)
	end
end)

RunService.Stepped:Connect(function()
	local char = LocalPlayer.Character
	if not char then return end
	
	if states["Noclip"] then
		for _, part in pairs(char:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = false
			end
		end
	end
	
	if states["Fling"] then
		local hrp = char:FindFirstChild("HumanoidRootPart")
		if hrp then
			hrp.Velocity = Vector3.new(0, 0, 0)
			hrp.RotVelocity = Vector3.new(0, 15000, 0)
		end
	end
end)

LocalPlayer.CharacterAdded:Connect(function(char)
	local hum = char:WaitForChild("Humanoid")
	if states["WalkSpeed"] then hum.WalkSpeed = 100 end
	if states["JumpBoost"] then hum.UseJumpPower = true hum.JumpPower = 150 end
end)

KeySubmit.MouseButton1Click:Connect(function()
	if KeyInput.Text == "6767" then
		KeyFrame:Destroy()
		MainFrame.Visible = true
	else
		KeyInput.Text = ""
		KeySubmit.Text = "WRONG KEY!"
		KeySubmit.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
		task.wait(1.5)
		KeySubmit.Text = "VERIFY KEY"
		KeySubmit.BackgroundColor3 = Color3.fromRGB(75, 40, 180)
	end
end)
