require("integrations.bobwarfare.prototypes.entity")
require("integrations.bobwarfare.prototypes.item")
require("integrations.bobwarfare.prototypes.recipe")
require("integrations.bobwarfare.prototypes.technology")

if mods["bobwarfare"] then
    -- if bobwarfare enabled, modify vanilla turret to be mk1 turret
    
    data.raw["ammo-turret"]["rocket-turret"].folded_animation.layers[1].filename = "__Rocket_Turrets__/graphics/entity/rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].folded_animation.layers[1].hr_version["filename"] = "__Rocket_Turrets__/graphics/entity/hr-rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].folding_animation.layers[1].filename = "__Rocket_Turrets__/graphics/entity/rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].folding_animation.layers[1].hr_version["filename"] = "__Rocket_Turrets__/graphics/entity/hr-rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].prepared_animation.layers[1].filename = "__Rocket_Turrets__/graphics/entity/rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].prepared_animation.layers[1].hr_version["filename"] = "__Rocket_Turrets__/graphics/entity/hr-rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].preparing_animation.layers[1].filename = "__Rocket_Turrets__/graphics/entity/rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].preparing_animation.layers[1].hr_version["filename"] = "__Rocket_Turrets__/graphics/entity/hr-rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].attacking_animation.layers[1].filename = "__Rocket_Turrets__/graphics/entity/rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].attacking_animation.layers[1].hr_version["filename"] = "__Rocket_Turrets__/graphics/entity/hr-rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].icon = "__Rocket_Turrets__/graphics/icon/turret-rocket-mk1-icon.png"
    data.raw["ammo-turret"]["rocket-turret"].fast_replaceable_group = "turret"
    data.raw["item"]["rocket-turret"].icon = "__Rocket_Turrets__/graphics/icon/turret-rocket-mk1-icon.png"
    data.raw["technology"]["rocket-turret"].icon = "__Rocket_Turrets__/graphics/technology/rocket-turret-mk1.png"

    -- if bobwarfare enabled, change tips&tricks page

    data.raw["tips-and-tricks-item"]["rocketturrets"].image = "__Rocket_Turrets__/graphics/tips_modded.png"
    data.raw["tips-and-tricks-item"]["rocketturrets"].name = "rocketturrets_modded"
    data.raw["tips-and-tricks-item"]["rocketturrets"].trigger = {
        type = "or",
        triggers = {
            {
                type = "build-entity",
                entity = "rocket-turret"
            },
            {
                type = "build-entity",
                entity = "rocket-turret-mk2"
            },
            {
                type = "build-entity",
                entity = "rocket-turret-mk3"
            },
            {
                type = "build-entity",
                entity = "rocket-turret-mk4"
            },
            {
                type = "build-entity",
                entity = "rocket-turret-mk5"
            }
        }
    }
    data.raw["tips-and-tricks-item"]["rocketturrets_modded"] = data.raw["tips-and-tricks-item"]["rocketturrets"]
    data.raw["tips-and-tricks-item"]["rocketturrets"] = nil

    -- if bobwarfare enabled, load tiered turrets
    
    data:extend({
        rocket_mk2_entity,
        rocket_mk2_item,
        rocket_mk2_recipe,
        rocket_mk2_tech,

        rocket_mk3_entity,
        rocket_mk3_item,
        rocket_mk3_recipe,
        rocket_mk3_tech,

        rocket_mk4_entity,
        rocket_mk4_item,
        rocket_mk4_recipe,
        rocket_mk4_tech,

        rocket_mk5_entity,
        rocket_mk5_item,
        rocket_mk5_recipe,
        rocket_mk5_tech,
    })
end