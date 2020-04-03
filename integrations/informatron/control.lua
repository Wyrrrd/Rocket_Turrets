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
	if script.active_mods["bobwarfare"] then
		element.add{type="button", name="image_cover", style="informatron-cover-bob"}
    	element.add{type="label", name="text_intro", caption={"info.text_intro"}}
    	element.add{type="label", name="heading_turrets", caption={"info.heading_turrets"}, style="heading_1_label"}
		element.add{type="button", name="image_turrets", style="informatron-turrets-bob"}
		element.add{type="label", name="text_turrets", caption={"info.text_turrets_bob"}}
	else
		element.add{type="button", name="image_cover", style="informatron-cover"}
    	element.add{type="label", name="text_intro", caption={"info.text_intro"}}
    	element.add{type="label", name="heading_turrets", caption={"info.heading_turrets"}, style="heading_1_label"}
		element.add{type="button", name="image_turrets", style="informatron-turrets"}
		element.add{type="label", name="text_turrets", caption={"info.text_turrets"}}
	end
	-- the following is the same with and without bobplates
	element.add{type="label", name="heading_ammo", caption={"info.heading_ammo"}, style="heading_1_label"}
	element.add{type="button", name="image_ammo", style="informatron-ammo"}
	element.add{type="label", name="text_ammo", caption={"info.text_ammo"}}
  end
end