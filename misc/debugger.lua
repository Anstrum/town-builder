local Debugger = {}

	Debugger.displayUIDebug = false
	Debugger.printLogs = true


	function Debugger.keyPressed(key)
		if key == "f6" then
			Debugger.displayUIDebug = not Debugger.displayUIDebug
		end
	end

	function Debugger.draw()
	end


return Debugger