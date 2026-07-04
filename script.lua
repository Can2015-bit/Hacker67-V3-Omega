-- [[ HACKER67 ADMIN GUI - REBUILT & UPGRADED ]] --
local Players = Game:GetService("Players")
local UserInputService = Game:GetService("UserInputService")
local RunService = Game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- 1. ANA EKRAN (SCREEN GUI) OPERASYONU
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Hacker67_Ultimate"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- 2. ANAHTAR (KEY) SİSTEMİ PENCERESİ
local KeyFrame = Instance.new("Frame")
KeyFrame.Name = "KeyFrame"
KeyFrame.Size = UDim2.new(0, 350, 0, 200)
KeyFrame.Position = UDim2.new(0.5, -175, 0.5, -100)
KeyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
KeyFrame.BorderSizePixel = 0
KeyFrame.Active = true
KeyFrame.Draggable = true
KeyFrame.Parent = ScreenGui

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 8)
KeyCorner.Parent = KeyFrame

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 40)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Text = "HACKER67 - ENTER KEY"
KeyTitle.TextColor3 = Color3.fromRGB(0, 255, 150)
KeyTitle.TextSize = 18
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.Parent = KeyFrame

local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(0, 280, 0, 40)
KeyInput.Position = UDim2.new(0.5, -140, 0.4, 0)
KeyInput.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.Text = ""
KeyInput.PlaceholderText = "Enter Key Here..."
KeyInput.TextSize = 16
KeyInput.Font = Enum.Font.Gotham
KeyInput.Parent = KeyFrame

local KeyInputCorner = Instance.new("UICorner")
KeyInputCorner.CornerRadius = UDim.new(0, 6)
KeyInputCorner.Parent = KeyInput

local CheckButton = Instance.new("TextButton")
CheckButton.Size = UDim2.new(0, 150, 0, 35)
CheckButton.Position = UDim2.new(0.5, -75, 0.7, 10)
CheckButton.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
CheckButton.TextColor3 = Color3.fromRGB(20, 20, 20)
CheckButton.Text = "SUBMIT"
CheckButton.TextSize = 16
CheckButton.Font = Enum.Font.GothamBold
CheckButton.Parent = KeyFrame

local CheckCorner = Instance.new("UICorner")
CheckCorner.CornerRadius = UDim.new(0, 6)
CheckCorner.Parent = CheckButton

-- 3. MODERN ANA MENÜ (MAIN PANEL)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 400, 0, 300)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Visible = false
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

-- Üst Başlık Paneli
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 45)
TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleBarCorner = Instance.new("UICorner")
TitleBarCorner.CornerRadius = UDim.new(0, 10)
TitleBarCorner.Parent = TitleBar

local MainTitle = Instance.new("TextLabel")
MainTitle.Size = UDim2.new(0.7, 0, 1, 0)
MainTitle.Position = UDim2.new(0, 15, 0, 0)
MainTitle.BackgroundTransparency = 1
MainTitle.Text = "Hacker67 v2.0 // Admin Menu"
MainTitle.TextColor3 = Color3.fromRGB(0, 255, 150)
MainTitle.TextSize = 18
MainTitle.TextXAlignment = Enum.TextXAlignment.Left
MainTitle.Font = Enum.Font.GothamBold
MainTitle.Parent = TitleBar

-- Küçültme Çizgisi (Minimize Button)
local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 35, 0, 35)
MinimizeBtn.Position = UDim2.new(1, -45, 0, 5)
MinimizeBtn.BackgroundTransparency = 1
MinimizeBtn.Text = "—"
MinimizeBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
MinimizeBtn.TextSize = 20
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.Parent = TitleBar

-- 4. KAYDIRILABİLİR İÇERİK ALANI (SCROLLING FRAME)
local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Size = UDim2.new(1, -20, 1, -65)
ScrollFrame.Position = UDim2.new(0, 10, 0, 55)
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.BorderSizePixel = 0
ScrollFrame.ScrollBarThickness = 6
ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 150)
ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 420) -- Yeni yerler açıldıkça kayması için alan
ScrollFrame.Parent = MainFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ScrollFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

-- YENİ NEON LOGO (KÜÇÜLÜNCE ÇIKAN BUTON)
local LogoButton = Instance.new("TextButton")
LogoButton.Name = "LogoButton"
LogoButton.Size = UDim2.new(0, 60, 0, 60)
LogoButton.Position = UDim2.new(0, 20, 0, 20)
LogoButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
LogoButton.Text = "⚡"
LogoButton.TextSize = 30
LogoButton.TextColor3 = Color3.fromRGB(0, 255, 150)
LogoButton.Visible = false
LogoButton.Parent = ScreenGui

local LogoCorner = Instance.new("UICorner")
LogoCorner.CornerRadius = UDim.new(1, 0) -- Tam yuvarlak logo
LogoCorner.Parent = LogoButton

-- UI YARDIMCI FONKSİYONU: BUTON OLUŞTURUCU
local function createFeatureButton(name, text, color)
	local Btn = Instance.new("TextButton")
	Btn.Name = name
	Btn.Size = UDim2.new(1, -10, 0, 45)
	Btn.BackgroundColor3 = color or Color3.fromRGB(35, 35, 35)
	Btn.Text = text
	Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	Btn.TextSize = 14
	Btn.Font = Enum.Font.GothamMedium
	Btn.Parent = ScrollFrame
	
	local Corner = Instance.new("UICorner")
	Corner.CornerRadius = UDim.new(0, 6)
	Corner.Parent = Btn
	
	return Btn
end

-- MENÜ ELEMANLARINI EKLEME
local SpeedBtn    = createFeatureButton("SpeedBtn", "⚡ WalkSpeed (Toggle Fast)", Color3.fromRGB(45, 45, 45))
local NoclipBtn   = createFeatureButton("NoclipBtn", "🧱 Noclip (Pass Through Walls)", Color3.fromRGB(45, 45, 45))
local FlyBtn      = createFeatureButton("FlyBtn", "✈️ Fly Mode (E to Toggle Fly)", Color3.fromRGB(45, 45, 45))
local InfJumpBtn  = createFeatureButton("InfJumpBtn", "🦘 Infinite Jump", Color3.fromRGB(45, 45, 45))
local EspBtn      = createFeatureButton("EspBtn", "👁️ ESP (Show Players)", Color3.fromRGB(45, 45, 45))
local TeleportBtn = createFeatureButton("TeleportBtn", "📍 Get Teleport Tool", Color3.fromRGB(45, 45, 45))

-- ==========================================
-- FONKSİYONLAR VE HİLE LOGİKLERİ
-- ==========================================

-- A. ANAHTAR DOĞRULAMA SİSTEMİ (Yeni Karmaşık Şifre!)
local CORRECT_KEY = "Hacker67-Secure-X9"

CheckButton.MouseButton1Click:Connect(function()
	if KeyInput.Text == CORRECT_KEY then
		KeyFrame:Destroy()
		MainFrame.Visible = true
	else
		KeyInput.Text = ""
		KeyInput.PlaceholderText = "WRONG KEY! Try Again..."
		KeyInput.PlaceholderColor3 = Color3.fromRGB(255, 50, 50)
	end
end)

-- B. KÜÇÜLTME VE LOGO SİSTEMİ
MinimizeBtn.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
	LogoButton.Visible = true
end)

LogoButton.MouseButton1Click:Connect(function()
	LogoButton.Visible = false
	MainFrame.Visible = true
end)

-- 1. WalkSpeed Sistemi
local speedActive = false
SpeedBtn.MouseButton1Click:Connect(function()
	speedActive = not speedActive
	local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local hum = char:WaitForChild("Humanoid")
	if speedActive then
		hum.WalkSpeed = 100
		SpeedBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 80)
	else
		hum.WalkSpeed = 16
		SpeedBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	end
end)

-- 2. Noclip Sistemi
local noclipActive = false
NoclipBtn.MouseButton1Click:Connect(function()
	noclipActive = not noclipActive
	if noclipActive then
		NoclipBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 80)
	else
		NoclipBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	end
end)

RunService.Stepped:Connect(function()
	if noclipActive then
		local char = LocalPlayer.Character
		if char then
			for _, part in pairs(char:GetChildren()) do
				if part:IsA("BasePart") then
					part.CanCollide = false
				end
			end
		end
	end
end)

-- 3. Fly (Uçma) Sistemi
local flying = false
local flySpeed = 50
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastCtrl = {f = 0, b = 0, l = 0, r = 0}

local function startFly()
	local char = LocalPlayer.Character
	local torso = char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
	if not torso then return end
	
	flying = true
	FlyBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 80)
	
	local bg = Instance.new("BodyGyro", torso)
	bg.P = 9e4
	bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	bg.cframe = torso.CFrame
	
	local bv = Instance.new("BodyVelocity", torso)
	bv.velocity = Vector3.new(0, 0.1, 0)
	bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
	
	task.spawn(function()
		repeat wait()
			local hum = char:FindFirstChild("Humanoid")
			if hum then hum.PlatformStand = true end
			
			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				bv.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * flySpeed
				lastCtrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			else
				bv.velocity = Vector3.new(0, 0.1, 0)
			end
		until not flying
		
		bg:Destroy()
		bv:Destroy()
		local hum = char:FindFirstChild("Humanoid")
		if hum then hum.PlatformStand = false end
	end)
end

local function stopFly()
	flying = false
	FlyBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
end

FlyBtn.MouseButton1Click:Connect(function()
	if flying then stopFly() else startFly() end
end)

UserInputService.InputBegan:Connect(function(input, gpe)
	if gpe then return end
	if input.KeyCode == Enum.KeyCode.E then
		if flying then stopFly() else startFly() end
	elseif input.KeyCode == Enum.KeyCode.W then ctrl.f = 1
	elseif input.KeyCode == Enum.KeyCode.S then ctrl.b = -1
	elseif input.KeyCode == Enum.KeyCode.A then ctrl.l = -1
	elseif input.KeyCode == Enum.KeyCode.D then ctrl.r = 1
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.W then ctrl.f = 0
	elseif input.KeyCode == Enum.KeyCode.S then ctrl.b = 0
	elseif input.KeyCode == Enum.KeyCode.A then ctrl.l = 0
	elseif input.KeyCode == Enum.KeyCode.D then ctrl.r = 0
	end
end)

-- 4. Infinite Jump Sistemi
local infJumpActive = false
InfJumpBtn.MouseButton1Click:Connect(function()
	infJumpActive = not infJumpActive
	if infJumpActive then
		InfJumpBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 80)
	else
		InfJumpBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	end
end)

UserInputService.JumpRequest:Connect(function()
	if infJumpActive then
		local char = LocalPlayer.Character
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		if hum then
			hum:ChangeState("Jumping")
		end
	end
end)

-- 5. ESP (Wallhack) Sistemi
local espActive = false
local espObjects = {}

local function createESP(player)
	if player == LocalPlayer then return end
	player.CharacterAdded:Connect(function(char)
		if espActive then
			task.wait(0.5)
			local box = Instance.new("Highlight")
			box.Name = "EspBox"
			box.FillColor = Color3.fromRGB(255, 0, 0)
			box.FillTransparency = 0.5
			box.OutlineColor = Color3.fromRGB(255, 255, 255)
			box.Parent = char
			table.insert(espObjects, box)
		end
	end)
end

EspBtn.MouseButton1Click:Connect(function()
	espActive = not espActive
	if espActive then
		EspBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 80)
		for _, p in pairs(Players:GetPlayers()) do
			if p.Character then
				local box = Instance.new("Highlight")
				box.Name = "EspBox"
				box.FillColor = Color3.fromRGB(255, 0, 0)
				box.FillTransparency = 0.5
				box.OutlineColor = Color3.fromRGB(255, 255, 255)
				box.Parent = p.Character
				table.insert(espObjects, box)
			end
		end
	else
		EspBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		for _, obj in pairs(espObjects) do
			if obj then obj:Destroy() end
		end
		espObjects = {}
	end
end)
Players.PlayerAdded:Connect(createESP)

-- 6. Click Teleport Tool Sistemi
TeleportBtn.MouseButton1Click:Connect(function()
	local tool = Instance.new("Tool")
	tool.Name = "TP Tool (Click)"
	tool.RequiresHandle = false
	
	tool.Activated:Connect(function()
		local mouse = LocalPlayer:GetMouse()
		local char = LocalPlayer.Character
		if char and char:FindFirstChild("HumanoidRootPart") then
			char.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.p) + Vector3.new(0, 3, 0)
		end
	end)
	
	tool.Parent = LocalPlayer.Backpack
	TeleportBtn.Text = "Tool Added to Backpack!"
	task.wait(2)
	TeleportBtn.Text = "📍 Get Teleport Tool"
end)
