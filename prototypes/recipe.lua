--recipe
data:extend({
{
  type = "recipe",
  name = "rocket-turret-mk1",
  enabled = false,
  energy_required = 10,
  ingredients =
  {
    {"rocket-launcher", 10},
    {"iron-gear-wheel", 5},
    {"steel-plate", 20},
    {"electronic-circuit", 15},
  },
  result = "rocket-turret-mk1",
},
{
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
},
{
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
},
{
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
},
{
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
},
})

if data.raw.item["advanced-processing-unit"] then
	data.raw.recipe["rocket-turret-mk5"].ingredients = {
    {"rocket-turret-mk4", 1},
    {"nitinol-gear-wheel", 10},
    {"nitinol-alloy", 20},
    {"advanced-processing-unit", 20},
}
end