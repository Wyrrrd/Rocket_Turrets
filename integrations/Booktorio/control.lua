local rocketturrets_thread =
{
    name = {"rocketturrets.menu_rocketturrets"},
    specified_version = 0,
    topics =
    {
        {
            name  = {"rocketturrets.title_rocketturrets"},
            topic =
            {
                {type = "image", spritename = "booktorio-cover"},
                {type = "text", text = "info.text_intro"}
            }
        },
        {
            name  = {"info.heading_turrets"},
            topic =
            {
                {type = "title", title = {"info.heading_turrets"}},
                {type = "image", spritename = "booktorio-turrets"},
                {type = "text", text = "info.text_turrets"}
            }
        },
        {
            name  = {"info.heading_ammo"},
            topic =
            {
                {type = "title", title = {"info.heading_ammo"}},
                {type = "image", spritename = "booktorio-ammo"},
                {type = "text", text = "info.text_ammo"}
            }
        }
    }
}

local rocketturrets_bob_thread =
{
    name = {"rocketturrets.menu_rocketturrets"},
    specified_version = 0,
    topics =
    {
        {
            name  = {"rocketturrets.title_rocketturrets"},
            topic =
            {
                {type = "image", spritename = "booktorio-cover-bob"},
                {type = "text", text = "info.text_intro"}
            }
        },
        {
            name  = {"info.heading_turrets"},
            topic =
            {
                {type = "image", spritename = "booktorio-turrets-bob"},
                {type = "text", text = "info.text_turrets_bob"}
            }
        },
        {
            name  = {"info.heading_ammo"},
            topic =
            {
                {type = "image", spritename = "booktorio-ammo"},
                {type = "text", text = "info.text_ammo"}
            }
        }
    }
}

local function registerThread()
    if remote.interfaces["Booktorio"] then
        remote.call("Booktorio", "add_thread", rocketturrets_thread)
        if script.active_mods["bobwarfare"] then
            remote.call("Booktorio", "override_thread", rocketturrets_bob_thread)
        end
    end
end

script.on_init(registerThread)
script.on_configuration_changed(registerThread)