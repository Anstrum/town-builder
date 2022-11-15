local Stone = {}

	Stone.amount = 0
	Stone.perSecond = 0
	Stone.name = "Stone"

	function Stone.update(dt)
		Stone.amount = Stone.amount + (Stone.perSecond * dt)
	end

	function Stone.getAmount()
		return math.floor(Stone.amount)
	end

	function Stone.Pay(amount)
		if Stone.amount < amount then return false end
		Stone.amount = Stone.amount - amount
	end

return Stone