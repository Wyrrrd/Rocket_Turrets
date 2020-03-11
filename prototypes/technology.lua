-- technology

rocket_tech = {
	type = "technology",
	name = "rocket-turret",
	icon = "__Rocket_Turrets__/graphics/technology/rocket-turret.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rocket-turret",
		},
	},
	prerequisites =
	{
		"rocketry",
		"turrets",
		"steel-processing",
	},
	unit =
	{
		count = 75,
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"military-science-pack", 1},
		},
		time = 20
	},
	order = "c-a"
}