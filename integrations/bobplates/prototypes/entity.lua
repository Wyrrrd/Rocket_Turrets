-- Sheet definition

function rocket_mk2_sheet(inputs)
return
{
  layers = 
  {
    {
      filename = "__Rocket_Turrets__/integrations/bobplates/graphics/entity/rocket-mk2-sheet.png",
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
      filename = "__Rocket_Turrets__/integrations/bobplates/graphics/entity/hr-rocket-mk2-sheet.png",
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

function rocket_mk3_sheet(inputs)
return
{
  layers = 
  {
    {
      filename = "__Rocket_Turrets__/integrations/bobplates/graphics/entity/rocket-mk3-sheet.png",
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
      filename = "__Rocket_Turrets__/integrations/bobplates/graphics/entity/hr-rocket-mk3-sheet.png",
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

function rocket_mk4_sheet(inputs)
return
{
  layers = 
  {
    {
      filename = "__Rocket_Turrets__/integrations/bobplates/graphics/entity/rocket-mk4-sheet.png",
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
      filename = "__Rocket_Turrets__/integrations/bobplates/graphics/entity/hr-rocket-mk4-sheet.png",
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

function rocket_mk5_sheet(inputs)
return
{
  layers = 
  {
    {
      filename = "__Rocket_Turrets__/integrations/bobplates/graphics/entity/rocket-mk5-sheet.png",
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
      filename = "__Rocket_Turrets__/integrations/bobplates/graphics/entity/hr-rocket-mk5-sheet.png",
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

rocket_mk2_entity = {
  type = "ammo-turret",
  name = "rocket-turret-mk2",
  icon = "__Rocket_Turrets__/integrations/bobplates/graphics/icon/turret-rocket-mk2-icon.png",
  icon_size = 32,
  flags = {"placeable-player", "player-creation"},
  minable = {mining_time = 0.7, result = "rocket-turret-mk2"},
  max_health = 500,
  corpse = "small-remnants",
  collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
  selection_box = {{-1, -1 }, {1, 1}},
  rotation_speed = 0.008,
  preparing_speed = 0.04,
  folding_speed = 0.04,
  dying_explosion = "medium-explosion",
  inventory_size = 1,
  automated_ammo_count = 10,
  attacking_speed = 0.085,
  
  folded_animation = rocket_mk2_sheet{direction_count = 4, line_length = 1},
  preparing_animation = rocket_mk2_sheet{direction_count = 4, line_length = 1},
  prepared_animation = rocket_mk2_sheet{},
  attacking_animation = rocket_mk2_sheet{},
  folding_animation = rocket_mk2_sheet{direction_count = 4, line_length = 1, run_mode = "backward"},
  
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  fast_replaceable_group = "turret",
  
  attack_parameters =
  {
    type = "projectile",
    ammo_category = "rocket",
    cooldown = 75,
    projectile_creation_distance = 1.2,
    projectile_center = {-0.15625, -0.07812},
    damage_modifier = 1.25,
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
    range = 34,
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

rocket_mk3_entity = {
  type = "ammo-turret",
  name = "rocket-turret-mk3",
  icon = "__Rocket_Turrets__/integrations/bobplates/graphics/icon/turret-rocket-mk3-icon.png",
  icon_size = 32,
  flags = {"placeable-player", "player-creation"},
  minable = {mining_time = 0.7, result = "rocket-turret-mk3"},
  max_health = 600,
  corpse = "small-remnants",
  collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
  selection_box = {{-1, -1 }, {1, 1}},
  rotation_speed = 0.008,
  preparing_speed = 0.04,
  folding_speed = 0.04,
  dying_explosion = "medium-explosion",
  inventory_size = 1,
  automated_ammo_count = 10,
  attacking_speed = 0.09,
  
  folded_animation = rocket_mk3_sheet{direction_count = 4, line_length = 1},
  preparing_animation = rocket_mk3_sheet{direction_count = 4, line_length = 1},
  prepared_animation = rocket_mk3_sheet{},
  attacking_animation = rocket_mk3_sheet{},
  folding_animation = rocket_mk3_sheet{direction_count = 4, line_length = 1, run_mode = "backward"},
  
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  fast_replaceable_group = "turret",
  
  attack_parameters =
  {
    type = "projectile",
    ammo_category = "rocket",
    cooldown = 75,
    projectile_creation_distance = 1.2,
    projectile_center = {-0.15625, -0.07812},
    damage_modifier = 1.5,
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
    range = 36,
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

rocket_mk4_entity = {
  type = "ammo-turret",
  name = "rocket-turret-mk4",
  icon = "__Rocket_Turrets__/integrations/bobplates/graphics/icon/turret-rocket-mk4-icon.png",
  icon_size = 32,
  flags = {"placeable-player", "player-creation"},
  minable = {mining_time = 0.7, result = "rocket-turret-mk4"},
  max_health = 700,
  corpse = "small-remnants",
  collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
  selection_box = {{-1, -1 }, {1, 1}},
  rotation_speed = 0.008,
  preparing_speed = 0.04,
  folding_speed = 0.04,
  dying_explosion = "medium-explosion",
  inventory_size = 2,
  automated_ammo_count = 10,
  attacking_speed = 0.95,
  
  folded_animation = rocket_mk4_sheet{direction_count = 4, line_length = 1},
  preparing_animation = rocket_mk4_sheet{direction_count = 4, line_length = 1},
  prepared_animation = rocket_mk4_sheet{},
  attacking_animation = rocket_mk4_sheet{},
  folding_animation = rocket_mk4_sheet{direction_count = 4, line_length = 1, run_mode = "backward"},
  
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  fast_replaceable_group = "turret",
  
  attack_parameters =
  {
    type = "projectile",
    ammo_category = "rocket",
    cooldown = 75,
    projectile_creation_distance = 1.2,
    projectile_center = {-0.15625, -0.07812},
    damage_modifier = 1.75,
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
    range = 38,
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

rocket_mk5_entity = {
  type = "ammo-turret",
  name = "rocket-turret-mk5",
  icon = "__Rocket_Turrets__/integrations/bobplates/graphics/icon/turret-rocket-mk5-icon.png",
  icon_size = 32,
  flags = {"placeable-player", "player-creation"},
  minable = {mining_time = 0.7, result = "rocket-turret-mk5"},
  max_health = 800,
  corpse = "small-remnants",
  collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
  selection_box = {{-1, -1 }, {1, 1}},
  rotation_speed = 0.008,
  preparing_speed = 0.04,
  folding_speed = 0.04,
  dying_explosion = "medium-explosion",
  inventory_size = 3,
  automated_ammo_count = 10,
  attacking_speed = 0.1,
  
  folded_animation = rocket_mk5_sheet{direction_count = 4, line_length = 1},
  preparing_animation = rocket_mk5_sheet{direction_count = 4, line_length = 1},
  prepared_animation = rocket_mk5_sheet{},
  attacking_animation = rocket_mk5_sheet{},
  folding_animation = rocket_mk5_sheet{direction_count = 4, line_length = 1, run_mode = "backward"},
  
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  fast_replaceable_group = "turret",
  
  attack_parameters =
  {
    type = "projectile",
    ammo_category = "rocket",
    cooldown = 75,
    projectile_creation_distance = 1.2,
    projectile_center = {-0.15625, -0.07812},
    damage_modifier = 2,
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
    range = 40,
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