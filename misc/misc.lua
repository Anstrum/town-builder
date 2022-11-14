Screen = {}
	Screen.width = 1024
	Screen.height = 700

Mouse = {}
	Mouse.x = 0
	Mouse.y = 0
	function Mouse.update()
		Mouse.x = love.mouse.getX()
		Mouse.y = love.mouse.getY()
	end