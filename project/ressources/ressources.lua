local Ressources = {}

	Ressources.list = {}

	function Ressources.load()
		table.insert(Ressources.list, require("project.ressources.money"))
		table.insert(Ressources.list, require("project.ressources.wood"))
		table.insert(Ressources.list, require("project.ressources.stone"))
		table.insert(Ressources.list, require("project.ressources.coal"))
		table.insert(Ressources.list, require("project.ressources.iron-ore"))
	end

	function Ressources.update(dt)
		for i = 1, #Ressources.list do
			Ressources.list[i].update(dt)
			print(Ressources.list[i].name..": "..Ressources.list[i].getAmount())
		end
	end

	function Ressources.listAll()
		local ressourceList = {}
		for i = 1, #Ressources.list do
			table.insert(ressourceList, Ressources.list[i].name)
		end
		return ressourceList
	end
	

return Ressources