minetest.register_node("myblocks:chain2", {
	description = "Sim,ple chain",
	drawtype = "plantlike",
	tiles = {"myblocks_chain2.png"},
	inventory_image = "myblocks_chain2.png",
	wield_image = "myblocks_chain2.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.125, -0.5, -0.125, 0.125, 0.5, 0.125}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
	sounds = default.node_sound_glass_defaults(),
})
