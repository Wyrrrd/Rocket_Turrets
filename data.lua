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
require("integrations.bobwarfare.data")
require("integrations.bobplates.data")
require("integrations.informatron.data")
require("integrations.wiki.data")
require("integrations.Booktorio.data")