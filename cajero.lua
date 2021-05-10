local boton = script.Parent
local input = script.Parent.Parent.input
local caja = {
	{["valor"] = 50 ;["cantidad"] = 4};
	{["valor"] = 20 ;["cantidad"] = 2};
	{["valor"] = 10 ; ["cantidad"] = 2};
}

local _dinero 
local _papel
local _div
local entregado = {}

boton.MouseButton1Click:Connect(function()
	entregado = {}
	_dinero = tonumber(input.Text)
	print("Nuevo Retiro de ".._dinero)
	for i,b in pairs(caja) do
		if _dinero > 0 then
			_div = math.floor(_dinero/b.valor)
			if _div > b.cantidad then
				_papel = b.cantidad
			else
				_papel = _div
			end
			table.insert(entregado,{["valor"] = b.valor; ["cantidad"] = _papel})
			_dinero = _dinero -(b.valor * _papel) 
		end
	end
	print(entregado)
end)