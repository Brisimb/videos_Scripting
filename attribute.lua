script.Parent.Touched:Connect(function(hit)
	local danio = script.Parent:GetAttribute("danio")
	if hit.Parent:FindFirstChild("Humanoid") then
		hit.Parent.Humanoid.Health -= danio 
	end
end)

	script.Parent:GetAttributeChangedSignal("danio"):Connect(function()
		local danio = script.Parent:GetAttribute("danio")
		print("a cambiado a"..danio)
	end)

script.Parent.AttributeChanged:Connect(function(nombreAtt)
	print(nombreAtt.. "Ha cambiado")
end)

for name, value in pairs(script.Parent:GetAttributes()) do
	print(name, value)
end

--[[

  	Tines que poner nombres alfanumericos
 	No puedes escribir RBX
	No puedes colocar espacios
	
--]]

script.Parent:SetAttribute("dano", true)
print(script.Parent:GetAttribute("dano"))

