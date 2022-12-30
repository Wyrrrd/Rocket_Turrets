--recipe

rocket_recipe = {
  type = "recipe",
  name = "rocket-turret",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-launcher", 4},
    {"iron-gear-wheel", 10},
    {"steel-plate", 20},
    {"electronic-circuit", 20},
  },
  result = "rocket-turret",
	order = "c-a"
}