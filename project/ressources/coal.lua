local Coal = {}

	Coal.amount = 0
	Coal.perSecond = 0
	Coal.name = "Coal"

	function Coal.update(dt)
		Coal.amount = Coal.amount + (Coal.perSecond * dt)
	end

	function Coal.getAmount()
		return math.floor(Coal.amount)
	end

	function Coal.Pay(amount)
		if Coal.amount < amount then return false end
		Coal.amount = Coal.amount - amount
	end

return Coal