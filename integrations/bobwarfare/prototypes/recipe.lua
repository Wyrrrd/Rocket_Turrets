--recipe

rocket_mk2_recipe = {
  type = "recipe",
  name = "rocket-turret-mk2",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-turret", 1},
    {"iron-gear-wheel", 10},
    {"steel-plate", 20},
    {"advanced-circuit", 20},
  },
  result = "rocket-turret-mk2",
	order = "c-a"
}

rocket_mk3_recipe = {
  type = "recipe",
  name = "rocket-turret-mk3",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-turret-mk2", 1},
    {"iron-gear-wheel", 10},
    {"steel-plate", 20},
    {"advanced-circuit", 20},
  },
  result = "rocket-turret-mk3",
	order = "c-a"
}

rocket_mk4_recipe = {
  type = "recipe",
  name = "rocket-turret-mk4",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-turret-mk3", 1},
    {"iron-gear-wheel", 10},
    {"steel-plate", 20},
    {"processing-unit", 20},
  },
  result = "rocket-turret-mk4",
	order = "c-a"
}

rocket_mk5_recipe = {
  type = "recipe",
  name = "rocket-turret-mk5",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-turret-mk4", 1},
    {"iron-gear-wheel", 10},
    {"steel-plate", 20},
    {"processing-unit", 20},
  },
  result = "rocket-turret-mk5",
	order = "c-a"
}