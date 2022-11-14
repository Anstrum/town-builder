io.stdout:setvbuf("no")
love.graphics.setDefaultFilter("nearest")


require("misc.misc")
Game = require("game")
Debugger = require("misc.debugger")



function love.load()
	love.window.setMode(Screen.width, Screen.height)
	Game.load()
end


function love.update(dt)
	Mouse.update()
	Game.update(dt)
end


function love.draw()
	if Debugger.displayUIDebug then
		Debugger.displayLogs()
	end
	Game.draw()
end