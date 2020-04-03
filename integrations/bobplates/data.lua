require("integrations.bobplates.ingredients")

local add_prerequisite = function (tech, prereq)
    table.insert(data.raw.technology[tech].prerequisites,prereq)
end

if mods["bobplates"] and mods["bobwarfare"] then
    -- if bobplates enabled, change tiered turret recipes and tech (if existing)
    
    data.raw.recipe["rocket-turret-mk2"].ingredients = rocket_mk2_ingred

    data.raw.recipe["rocket-turret-mk3"].ingredients = rocket_mk3_ingred
    table.insert(data.raw.technology["rocket-turret-mk3"].prerequisites,"zinc-processing")
    table.insert(data.raw.technology["rocket-turret-mk3"].prerequisites,"invar-processing")

    data.raw.recipe["rocket-turret-mk4"].ingredients = rocket_mk4_ingred
    table.insert(data.raw.technology["rocket-turret-mk4"].prerequisites,"titanium-processing")

    data.raw.recipe["rocket-turret-mk5"].ingredients = rocket_mk5_ingred
    table.insert(data.raw.technology["rocket-turret-mk5"].prerequisites,"nitinol-processing")

end