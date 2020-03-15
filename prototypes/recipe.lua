--recipe

rocket_recipe = {
  type = "recipe",
  name = "rocket-turret",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-launcher", 10},
    {"iron-gear-wheel", 5},
    {"steel-plate", 20},
    {"advanced-circuit", 15},
  },
  result = "rocket-turret",
	order = "c-a"
}