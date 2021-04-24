--local:
local RE = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent")
local UIS = game:GetService("UserInputService")
local part = game.Workspace.Part

UIS.InputBegan:Connect(function(input,GameProcessedEvent)
	if input.KeyCode == Enum.KeyCode.F then
		RE:FireServer(part)
	end
end)

--script:
local RE = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent")
RE.OnServerEvent:Connect(function(player, parte)
	while wait(.3) do
		parte.BrickColor =  BrickColor.Random()
	end
end)


--ejemplo2:


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