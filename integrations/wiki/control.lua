require("integrations.wiki.wiki")

if script.active_mods["wiki"] then
  local initialize_wiki
  if script.active_mods["bobwarfare"] then
    initialize_wiki = function()
      remote.call("wiki","register_mod_wiki",rocketturrets_bob_wiki)
    end
  else
    initialize_wiki = function()
      remote.call("wiki","register_mod_wiki",rocketturrets_wiki)
    end
  end
    
  script.on_init(initialize_wiki)
  script.on_load(initialize_wiki) 
end