--[[

	MyBlocks

	Copyright (C) 2018-2022 Joachim Stolberg
	Copyright (C) 2022 Thomas S.
	LGPLv2.1+
	See LICENSE.txt for more information

]]--

armor:register_armor("myblocks:hard_hat", {
	description = "Hard Hat",
	inventory_image = "myblocks_hard_hat_inv.png",
	groups = {armor_head=1, armor_heal=12, armor_use=200},
	armor_groups = {fleshy=15},
	damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
})

armor:register_armor("myblocks:hard_hat_headlight", {
	description = "Hard Hat with Headlight",
	inventory_image = "myblocks_hard_hat_inv.png^myblocks_headlight_inv.png",
	texture = "myblocks_hard_hat.png^myblocks_headlight.png",
	preview = "myblocks_hard_hat_preview.png^myblocks_headlight_preview.png",
	groups = {armor_head=1, armor_heal=12, armor_use=200},
	armor_groups = {fleshy=15},
	damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
})

armor:register_armor("myblocks:headlight", {
	description = "Headlight (to be worn like armor)",
	inventory_image = "myblocks_headlight_inv.png",
	groups = {armor_head=1, armor_use=200},
	armor_groups = {},
	damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
})

minetest.register_craft({
	output = "myblocks:hard_hat",
	recipe = {
		{ "basic_materials:plastic_sheet", "basic_materials:plastic_sheet", "basic_materials:plastic_sheet" },
		{ "basic_materials:plastic_sheet", "", "basic_materials:plastic_sheet" },
	},
})

minetest.register_craft({
	output = "myblocks:hard_hat_headlight",
	type = "shapeless",
	recipe = { "myblocks:hard_hat", "myblocks:headlight" },
})

minetest.register_craft({
	output = "myblocks:headlight",
	recipe = {
		{ "", "default:mese_crystal", "" },
		{ "wool:black", "techage:ta4_leds", "wool:black" },
		{ "", "default:mese_crystal", "" },
	},
})


wielded_light.register_player_lightstep(function (player)
	local items = {}
	for _,item in pairs(armor:get_weared_armor_elements(player)) do
		items[item] = true
	end
	if items["myblocks:headlight"] or items["myblocks:hard_hat_headlight"] then
		wielded_light.track_user_entity(player, "armor", "default:torch")
	else
		wielded_light.track_user_entity(player, "armor", "default:stick")
	end
end)