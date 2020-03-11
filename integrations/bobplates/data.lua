require("integrations.bobplates.prototypes.entity")
require("integrations.bobplates.prototypes.item")
require("integrations.bobplates.prototypes.recipe")
require("integrations.bobplates.prototypes.technology")

if mods["bobplates"] then
    -- if bobplates enabled, modify mk1 turret
    
    data.raw["ammo-turret"]["rocket-turret"].folded_animation.layers[1].filename = "__Rocket_Turrets__/graphics/entity/rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].folded_animation.layers[1].hr_version["filename"] = "__Rocket_Turrets__/graphics/entity/hr-rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].preparing_animation.layers[1].filename = "__Rocket_Turrets__/graphics/entity/rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].preparing_animation.layers[1].hr_version["filename"] = "__Rocket_Turrets__/graphics/entity/hr-rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].attacking_animation.layers[1].filename = "__Rocket_Turrets__/graphics/entity/rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].attacking_animation.layers[1].hr_version["filename"] = "__Rocket_Turrets__/graphics/entity/hr-rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].folding_animation.layers[1].filename = "__Rocket_Turrets__/graphics/entity/rocket-mk1-sheet.png"
    data.raw["ammo-turret"]["rocket-turret"].folding_animation.layers[1].hr_version["filename"] = "__Rocket_Turrets__/graphics/entity/hr-rocket-mk1-sheet.png"
    data.raw["item"]["rocket-turret"].icon = "__Rocket_Turrets__/graphics/icon/turret-rocket-mk1-icon.png"
    data.raw["technology"]["rocket-turret"].icon = "__Rocket_Turrets__/graphics/technology/rocket-turret-mk1.png"

    -- if bobplates enabled, load tiered turrets
    
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
        rocket_mk5_tech
    })

    if data.raw.item["advanced-processing-unit"] then
        data:extend({rocket_mk5_recipe2})
    else
        data:extend({rocket_mk5_recipe1})
    end
end