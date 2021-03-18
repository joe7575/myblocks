--[[

	MyBlocks

	Copyright (C) 2018-2021 Joachim Stolberg
	LGPLv2.1+
	See LICENSE.txt for more information

]]--

-- offsets
local OY = 2/16
local OX = 1/16

local function register_chain(name, description, texture)
	minetest.register_node(name, {
		description = description,
		tiles = {texture},
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{-1/32, -17/32, -1/32,   1/32, -16/32,  1/32},
				
				{-2/32, -17/32, -1/32,  -1/32, -11/32, 1/32},
				{ 1/32, -17/32, -1/32,   2/32, -11/32, 1/32},
				
				{-1/32, -13/32, -1/32,   1/32, -11/32,  1/32},
				
				{-1/32, -13/32, -2/32,   1/32, -7/32, -1/32},
				{-1/32, -13/32,  1/32,   1/32, -7/32,  2/32},
				
				{-1/32, -9/32, -1/32,   1/32, -7/32,  1/32},
				
				{-2/32, -9/32, -1/32,  -1/32, -3/32, 1/32},
				{ 1/32, -9/32, -1/32,   2/32, -3/32, 1/32},
				
				{-1/32, -5/32, -1/32,   1/32, -3/32,  1/32},
				
				{-1/32, -5/32, -2/32,   1/32, 1/32, -1/32},
				{-1/32, -5/32,  1/32,   1/32, 1/32,  2/32},
			
				{-1/32, -1/32, -1/32,   1/32, 1/32,  1/32},
			
				{-2/32, -1/32, -1/32,  -1/32, 5/32, 1/32},
				{ 1/32, -1/32, -1/32,   2/32, 5/32, 1/32},
				
				{-1/32,  3/32, -1/32,   1/32, 5/32,  1/32},
				
				{-1/32,  3/32, -2/32,   1/32, 9/32, -1/32},
				{-1/32,  3/32,  1/32,   1/32, 9/32,  2/32},
				
				{-1/32,  7/32, -1/32,   1/32, 9/32,  1/32},
				
				{-2/32, 7/32, -1/32,  -1/32, 13/32, 1/32},
				{ 1/32, 7/32, -1/32,   2/32, 13/32, 1/32},
				
				{-1/32, 11/32, -1/32,   1/32, 13/32,  1/32},
				
				{-1/32, 11/32, -2/32,   1/32, 17/32, -1/32},
				{-1/32, 11/32,  1/32,   1/32, 17/32,  2/32},
			
				{-1/32, 16/32, -1/32,   1/32, 17/32,  1/32},
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/16, -8/16, -1/16,  1/16, 8/16, 1/16},
		},

		paramtype2 = "facedir",
		climbable = true,
                use_texture_alpha = "clip",
		sunlight_propagates = true,
		is_ground_content = false,
		groups = {cracky = 2},
		sounds = default.node_sound_metal_defaults(),
	})
end


register_chain("myblocks:steel_chain", "Steel Chain", "myblocks_chain.png")

minetest.register_craft({
  type = "shapeless",
	output = "myblocks:steel_chain",
	recipe = {"basic_materials:chain_steel"},
})

minetest.register_craft({
  type = "shapeless",
	output = "basic_materials:chain_steel",
	recipe = {"myblocks:steel_chain"},
})
