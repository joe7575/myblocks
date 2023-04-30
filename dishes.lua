minetest.register_node("myblocks:wine_bottle", {
	description = "Wine bottle",
	drawtype = "plantlike",
	tiles = {"myblocks_wine_bottle.png"},
	inventory_image = "myblocks_wine_bottle.png",
	wield_image = "myblocks_wine_bottle.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("myblocks:beer_glass", {
	description = "Beer glass",
	drawtype = "plantlike",
	tiles = {"myblocks_beer_glass.png"},
	inventory_image = "myblocks_beer_glass.png",
	wield_image = "myblocks_beer_glass.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("myblocks:wine_glass", {
	description = "Wine glass",
	drawtype = "plantlike",
	tiles = {"myblocks_wine_glass.png"},
	inventory_image = "myblocks_wine_glass.png",
	wield_image = "myblocks_wine_glass.png",
	paramtype = "light",
	use_texture_alpha = myblocks.BLEND,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})
