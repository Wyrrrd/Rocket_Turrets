data:extend(
{
	{
		type = "technology",
		name = "rocket-turret-mk1",
		icon = "__Rocket_Turrets__/graphics/technology/rocket-turret-mk1.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "rocket-turret-mk1",
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
	},
	{
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
			"rocket-turret-mk1",
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
	},
	{
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
			"invar-processing",
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
	},
	{
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
			"titanium-processing",
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
	},
	{
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
			"nitinol-processing",
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
	},
})
