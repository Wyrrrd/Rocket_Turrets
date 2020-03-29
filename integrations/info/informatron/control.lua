if script.active_mods["informatron"] then
	remote.add_interface("rocketturrets", {
	  informatron_menu = function(data)
		return rocketturrets_menu(data.player_index)
	  end,
	  informatron_page_content = function(data)
		return rocketturrets_page_content(data.page_name, data.player_index, data.element)
	  end
	})
end

function rocketturrets_menu(player_index)
  return {}
end

function rocketturrets_page_content(page_name, player_index, element)
  if page_name == "rocketturrets" then
	if script.active_mods["bobplates"] then
		element.add{type="button", name="image_cover", style="rocketturrets_cover_bob"}
    	element.add{type="label", name="text_intro", caption={"rocketturrets.text_intro"}}
    	element.add{type="label", name="heading_turrets", caption={"rocketturrets.heading_turrets"}, style="heading_1_label"}
		element.add{type="button", name="image_turrets", style="rocketturrets_turrets_bob"}
		element.add{type="label", name="text_turrets", caption={"rocketturrets.text_turrets_bob"}}
	else
		element.add{type="button", name="image_cover", style="rocketturrets_cover"}
    	element.add{type="label", name="text_intro", caption={"rocketturrets.text_intro"}}
    	element.add{type="label", name="heading_turrets", caption={"rocketturrets.heading_turrets"}, style="heading_1_label"}
		element.add{type="button", name="image_turrets", style="rocketturrets_turrets"}
		element.add{type="label", name="text_turrets", caption={"rocketturrets.text_turrets"}}
	end
	-- the following is the same with and without bobplates
	element.add{type="label", name="heading_ammo", caption={"rocketturrets.heading_ammo"}, style="heading_1_label"}
	element.add{type="button", name="image_ammo", style="rocketturrets_ammo"}
	element.add{type="label", name="text_ammo", caption={"rocketturrets.text_ammo"}}
  end
end