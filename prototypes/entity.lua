-- Sheet definition

function rocket_sheet(inputs)
return
{
  layers = 
  {
    {
      filename = "__Rocket_Turrets__/graphics/entity/rocket-sheet.png",
      priority = "medium",
      scale = 1,
      width = 72,
      height = 80,
      direction_count = inputs.direction_count and inputs.direction_count or 64,
      frame_count = 1,
      line_length = inputs.line_length and inputs.line_length or 16,
      axially_symmetrical = false,
	  run_mode = inputs.run_mode and inputs.run_mode or "forward",
      shift = { 0.25, -0.5 },
	  hr_version =
	  {
      filename = "__Rocket_Turrets__/graphics/entity/hr-rocket-sheet.png",
      priority = "medium",
      scale = 0.5,
      width = 144,
      height = 160,
      direction_count = inputs.direction_count and inputs.direction_count or 64,
      frame_count = 1,
      line_length = inputs.line_length and inputs.line_length or 16,
      axially_symmetrical = false,
	  run_mode = inputs.run_mode and inputs.run_mode or "forward",
      shift = { 0.25, -0.5 },
	  }
    }
  }
}
end

-- Entity definition

rocket_entity = {
  type = "ammo-turret",
  name = "rocket-turret",
  icon = "__Rocket_Turrets__/graphics/icon/turret-rocket-icon.png",
  icon_size = 32,
  flags = {"placeable-player", "player-creation"},
  minable = {mining_time = 0.7, result = "rocket-turret"},
  max_health = 400,
  corpse = "small-remnants",
  collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
  selection_box = {{-1, -1 }, {1, 1}},
  rotation_speed = 0.008,
  preparing_speed = 0.04,
  folding_speed = 0.04,
  dying_explosion = "medium-explosion",
  inventory_size = 1,
  automated_ammo_count = 10,
  attacking_speed = 0.08,
  
  folded_animation = rocket_sheet{direction_count = 4, line_length = 1},
  preparing_animation = rocket_sheet{direction_count = 4, line_length = 1},
  prepared_animation = rocket_sheet{},
  attacking_animation = rocket_sheet{},
  folding_animation = rocket_sheet{direction_count = 4, line_length = 1, run_mode = "backward"},
  
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  
  attack_parameters =
  {
    type = "projectile",
    ammo_category = "rocket",
    cooldown = 75,
    projectile_creation_distance = 1.2,
    projectile_center = {-0.15625, -0.07812},
    damage_modifier = 1,
    shell_particle =
    {
      name = "shell-particle",
      direction_deviation = 0.1,
      speed = 0.1,
      speed_deviation = 0.03,
      center = {0, 0},
      creation_distance = -1.925,
      starting_frame_speed = 0.2,
      starting_frame_speed_deviation = 0.1
    },
    range = 32,
    min_range = 15,
    sound =
    {
      {
        filename = "__base__/sound/fight/rocket-launcher.ogg",
        volume = 0.8
      }
    },
  },

  call_for_help_radius = 40
}