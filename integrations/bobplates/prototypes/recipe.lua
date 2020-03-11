--recipe

rocket_mk2_recipe = {
  type = "recipe",
  name = "rocket-turret-mk2",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-turret-mk1", 1},
    {"steel-gear-wheel", 10},
    {"steel-plate", 20},
    {"battery", 5},	
    {"electronic-circuit", 5},
  },
  result = "rocket-turret-mk2",
}

rocket_mk3_recipe = {
  type = "recipe",
  name = "rocket-turret-mk3",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-turret-mk2", 1},
    {"steel-bearing", 10},
    {"invar-alloy", 20},
    {"advanced-circuit", 20},
  },
  result = "rocket-turret-mk3",
}

rocket_mk4_recipe = {
  type = "recipe",
  name = "rocket-turret-mk4",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-turret-mk3", 1},
    {"titanium-gear-wheel", 10},
    {"titanium-plate", 20},
    {"processing-unit", 20},
  },
  result = "rocket-turret-mk4",
}

rocket_mk5_recipe1 = {
  type = "recipe",
  name = "rocket-turret-mk5",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-turret-mk4", 1},
    {"nitinol-gear-wheel", 10},
    {"nitinol-alloy", 20},
    {"processing-unit", 20},
  },
  result = "rocket-turret-mk5",
}

rocket_mk5_recipe2 = {
  type = "recipe",
  name = "rocket-turret-mk5",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-turret-mk4", 1},
    {"nitinol-gear-wheel", 10},
    {"nitinol-alloy", 20},
    {"advanced-processing-unit", 20},
  },
  result = "rocket-turret-mk5",
}