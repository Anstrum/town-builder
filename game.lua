local Game = {}

	Game.ressources = require("project.ressources.ressources")


	function Game.load()
		Game.ressources.load()
		local ressourceList = Game.ressources.listAll()
		for i = 1, #ressourceList do
			print(ressourceList[i])
		end
	end
 


	function Game.update(dt)
		Game.ressources.update(dt)
	end



	function Game.draw()

	end


return Game