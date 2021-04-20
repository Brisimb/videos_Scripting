--localscript:

local RE = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent")
local Emote = script.Parent

Emote.MouseButton1Click:Connect(function()
	RE:FireServer()
end)

--Script:

local RE = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent")
local EmoteGui = game.ServerStorage:WaitForChild("EmoteGui")
RE.OnServerEvent:Connect(function(player)
	print("Conectada")
	local char = player.Character
	local Clon = EmoteGui:Clone()
	Clon.Parent = char:WaitForChild("Head")
end)