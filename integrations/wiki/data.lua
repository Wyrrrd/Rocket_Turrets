require("integrations.wiki.wiki")

if mods["wiki"] then
	if mods["bobwarfare"] then
		wiki_register_mod_wiki(rocketturrets_bob_wiki)
	else
		wiki_register_mod_wiki(rocketturrets_wiki)
	end
end