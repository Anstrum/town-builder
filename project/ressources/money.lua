local Money = {}

	Money.amount = 0
	Money.perSecond = 0
	Money.name = "Money"

	function Money.update(dt)
		Money.amount = Money.amount + (Money.perSecond * dt)
	end

	function Money.getAmount()
		return math.floor(Money.amount)
	end

	function Money.Pay(amount)
		if Money.amount < amount then return false end
		Money.amount = Money.amount - amount
	end

return Money