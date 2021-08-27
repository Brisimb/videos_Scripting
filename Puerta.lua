local TweenService = game:GetService("TweenService")

local Puerta1 = script.Parent.Puerta1
local Puerta2 = script.Parent.Puerta2

local PosicionPuerta1 = script.Parent.PosicionPuerta1
local PosicionPuerta2 = script.Parent.PosicionPuerta2

local Detector1 = script.Parent.Detector1
local Detector2 = script.Parent.Detector2


local infoPuertas = TweenInfo.new(
	1,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.In,
	0,
	true,
	0
)


local abrirPuerta1 = {
	CFrame = CFrame.new(PosicionPuerta1.Position)
}

local abrirPuerta2 = {
	CFrame = CFrame.new(PosicionPuerta2.Position)
}

local movimientoPuerta1 = TweenService:Create(Puerta1, infoPuertas, abrirPuerta1)
local movimientoPuerta2 = TweenService:Create(Puerta2, infoPuertas, abrirPuerta2)


Detector1.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		movimientoPuerta1:Play()
		movimientoPuerta2:Play()
		wait(2)
	end
end)

Detector2.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		movimientoPuerta1:Play()
		movimientoPuerta2:Play()
	end
end)

