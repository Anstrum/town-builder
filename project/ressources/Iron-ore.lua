local IronOre = {}

	IronOre.amount = 0
	IronOre.perSecond = 0
	IronOre.name = "IronOre"

	function IronOre.update(dt)
		IronOre.amount = IronOre.amount + (IronOre.perSecond * dt)
	end

	function IronOre.getAmount()
		return math.floor(IronOre.amount)
	end

	function IronOre.Pay(amount)
		if IronOre.amount < amount then return false end
		IronOre.amount = IronOre.amount - amount
	end

return IronOre