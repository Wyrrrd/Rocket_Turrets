require("integrations.info.wiki.wiki")

if script.active_mods["wiki"] then
  local initialize_wiki
  if script.active_mods["bobplates"] then
    initialize_wiki = function()
      remote.call("wiki","register_mod_wiki",rocketturrets_bob_wiki)
    end
  else
    initialize_wiki = function()
      remote.call("wiki","register_mod_wiki",rocketturrets_wiki)
    end
  end
    
  script.on_init(function() initialize_wiki() end)
  script.on_load(function() initialize_wiki() end) 
end