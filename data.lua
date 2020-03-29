--data.lua

require("prototypes.entity")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

data:extend({
    rocket_entity,
    rocket_item,
    rocket_recipe,
    rocket_tech
})

-- integrations
require("integrations.bobplates.data")
require("integrations.info.informatron.data")
require("integrations.info.wiki.data")