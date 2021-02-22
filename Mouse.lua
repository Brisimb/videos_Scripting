local player = game.Players.LocalPlayer
local blur = game.Lighting.Blur
local mouse = player:GetMouse()

mouse.Move:Connect(function()
	if  mouse.Target ~= nil and mouse.Target.Name == "Part" then
		blur.Enabled = false
	else
		blur.Enabled = true
	end
end)