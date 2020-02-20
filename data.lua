--data.lua

require("prototypes.entity")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

local bob_flag = data.raw.item["steel-gear-wheel"] and data.raw.item["steel-bearing"] and data.raw.item["invar-alloy"] and data.raw.item["titanium-plate"] and data.raw.item["titanium-gear-wheel"] and data.raw.item["nitinol-alloy"] and data.raw.item["nitinol-gear-wheel"] and data.raw.technology["invar-processing"] and data.raw.technology["titanium-processing"] and data.raw.technology["nitinol-processing"]
local adv_flag = data.raw.item["advanced-processing-unit"]

if bob_flag then
    -- if bobplates enabled, load tiered turrets
    data:extend({
        entity1,item1,recipe1,tech1,
        entity2,item2,recipe2,tech2,
        entity3,item3,recipe3,tech3,
        entity4,item4,recipe4,tech4,
        entity5,item5,tech5
    })
    if adv_flag then
        data:extend({recipe5_2})
    else
        data:extend({recipe5_1})
    end
else
    -- if not, load single boring gray turret
    data:extend({
        entity0,item0,recipe0,tech0
    })
end