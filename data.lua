--data.lua

require("prototypes.entity")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.tips")

-- only add tips category "misc" if not already exists
if not data.raw["tips-and-tricks-item-category"]["misc"] then
    data:extend({
        misc_category,
        misc_category_title
    })
end

data:extend({
    rocket_entity,
    rocket_item,
    rocket_recipe,
    rocket_tech,
    rocket_tips
})

-- integrations
require("integrations.bobwarfare.data")
require("integrations.bobplates.data")