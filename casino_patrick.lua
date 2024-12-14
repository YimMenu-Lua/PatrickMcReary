local casino_patrick_tab = gui.get_tab("GUI_TAB_NETWORK"):add_tab("Patrick McReary")

patrick_partake_patch = scr_patch:new("freemode", "PPP", "25 ? 5D ? ? ? 06 1F 56 ? ? 72 2E 00 01", 8, {0x2B, 0x00, 0x00})
patrick_goon_patch    = scr_patch:new("freemode", "PGP", "57 29 00 61 1D 40 1D", 0, {0x55})
patrick_blip_patch    = scr_patch:new("freemode", "PBP", "56 04 00 71 2E 01 01 2C 01 04 20 5D ? ? ? 56 04 00 71 2E 01 01 5D ? ? ? 73", 0, {0x55})

event.register_handler(menu_event.ScriptsReloaded, function()
    patrick_partake_patch:disable_patch()
    patrick_goon_patch:disable_patch()
    patrick_blip_patch:disable_patch()
end)

casino_patrick_tab:add_button("Trigger Event", function()
    if globals.get_int(1916957 + 462 + 38) == 0 then
        globals.set_int(1907163 + (1 + (self.get_id() * 306)) + 29 + 18, 1)
    end
end)