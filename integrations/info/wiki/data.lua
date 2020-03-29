require("integrations.info.wiki.wiki")

if mods["wiki"] then
	if mods["bobplates"] then
		wiki_register_mod_wiki(rocketturrets_bob_wiki)
	else
		wiki_register_mod_wiki(rocketturrets_wiki)
	end
end