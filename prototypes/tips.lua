-- tips and tricks

misc_category = {
  type = "tips-and-tricks-item-category",
  name = "misc",
  order = "z-[misc]"
}

misc_category_title = {
  type = "tips-and-tricks-item",
  name = "misc",
  category = "misc",
  order = "a",
  starting_status = "unlocked",
  is_title = true
}

rocket_tips = {
  type = "tips-and-tricks-item",
  name = "rocketturrets",
  tag = "[entity=rocket-turret]",
  category = "misc",
  indent = 1,
  order = "b-[rocketturrets]",
  trigger =
  {
    type = "build-entity",
    entity = "rocket-turret"
  },
  dependencies = {"introduction"},
  image = "__Rocket_Turrets__/graphics/tips.png"
}