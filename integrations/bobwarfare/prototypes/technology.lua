rocket_mk2_tech = {
	type = "technology",
	name = "rocket-turret-mk2",
	icon = "__Rocket_Turrets__/graphics/technology/rocket-turret-mk2.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rocket-turret-mk2",
		},
	},
	prerequisites =
	{
		"rocket-turret",
	},
	unit =
	{
		count = 75,
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"military-science-pack", 1},
		},
		time = 20
	},
	order = "c-a"
}

rocket_mk3_tech = {
	type = "technology",
	name = "rocket-turret-mk3",
	icon = "__Rocket_Turrets__/graphics/technology/rocket-turret-mk3.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rocket-turret-mk3",
		},
	},
	prerequisites =
	{
		"rocket-turret-mk2",
	},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1}
		},
		time = 30
	},
	order = "c-a"
}

rocket_mk4_tech = {
	type = "technology",
	name = "rocket-turret-mk4",
	icon = "__Rocket_Turrets__/graphics/technology/rocket-turret-mk4.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rocket-turret-mk4",
		},
	},
	prerequisites =
	{
		"rocket-turret-mk3",
	},
	unit =
	{
		count = 100,
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1}
		},
		time = 30
	},
	order = "c-a"
}

rocket_mk5_tech = {
	type = "technology",
	name = "rocket-turret-mk5",
	icon = "__Rocket_Turrets__/graphics/technology/rocket-turret-mk5.png",
	icon_size = 128,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "rocket-turret-mk5",
		},
	},
	prerequisites =
	{
		"rocket-turret-mk4",
	},
	unit =
	{
		count = 125,
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
		},
		time = 30
	},
	order = "c-a"
}