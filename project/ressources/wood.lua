local Wood = {}

	Wood.amount = 0
	Wood.perSecond = 0
	Wood.name = "Wood"

	function Wood.update(dt)
		Wood.amount = Wood.amount + (Wood.perSecond * dt)
	end

	function Wood.getAmount()
		return math.floor(Wood.amount)
	end

	function Wood.Pay(amount)
		if Wood.amount < amount then return false end
		Wood.amount = Wood.amount - amount
	end

return Wood