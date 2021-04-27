local a = "Puntos"
local incremento = 2
local tiempo = 4


while true do
	wait(tiempo)
	for i,v in pairs(game.Players:GetPlayers()) do
		if v:FindFirstChild("leaderstats") then
			v.leaderstats:WaitForChild(a).Value += incremento
		end
	end
end


