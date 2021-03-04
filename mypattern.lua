--[[

	MyBlocks

	Copyright (C) 2018-2021 Joachim Stolberg
	LGPLv2.1+
	See LICENSE.txt for more information

]]--

local NodeNames = {}

local Transform = {
	"",
	"^[transformR270",
	"^[transformR180",
	"^[transformR90",
}

for i = 1,5 do
	local not_in_creative_inventory = nil
	for j = 1,4 do
		local name = "myblocks:pattern" .. i .. j
		NodeNames[#NodeNames + 1] = name
		minetest.register_node(name, {
			description = "Pattern",
			tiles = {
				"myblocks_pattern" .. i .. ".png" .. Transform[j],
				"myblocks_invisible.png",
			},
			
			after_place_node = function(pos, placer, itemstack, pointed_thing)
				local pos2 = minetest.find_node_near(pos, 1, NodeNames)
				local node = minetest.get_node(pos)
				if pos2 then
					node.param2 = minetest.get_node(pos2).param2
					minetest.swap_node(pos, node)
					return
				end
			end,
			
			on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
				if minetest.is_protected(pos, clicker:get_player_name()) then
					return false
				end
				
				node.param2 = node.param2 + 8
				minetest.swap_node(pos, node)
			end,
			
			on_rotate = function(pos, node, user, mode, new_param2)
				if minetest.is_protected(pos, user:get_player_name()) then
					return false
				end
				
				local j = string.byte(node.name, 18) - 48 
				j = (j % 4) + 1
				node.name = string.sub(node.name, 1, -2) .. j
				minetest.swap_node(pos, node)
				return true
			end,
			
			paramtype2 = "colorwallmounted",
			palette = "myblocks_palette32.png",    
			drop = "myblocks:pattern" .. i .. "1",
			groups = {cracky = 3, not_in_creative_inventory = not_in_creative_inventory},
			drawtype = "nodebox",
			paramtype = "light",
			light_source = 3,
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.49, 0.5}, -- NodeBox10
				}
			}
		})
	
		not_in_creative_inventory = 1
	end
end

minetest.register_craft({
	output = "myblocks:pattern11 2",
	recipe = {
		{"basic_materials:plastic_sheet", "", ""},
		{"", "", ""},
		{"techage:leave_powder", "techage:leave_powder", ""},
	},
})

minetest.register_craft({
	output = "myblocks:pattern21 2",
	recipe = {
		{"basic_materials:plastic_sheet", "basic_materials:plastic_sheet", ""},
		{"", "", ""},
		{"techage:leave_powder", "techage:leave_powder", ""},
	},
})

minetest.register_craft({
	output = "myblocks:pattern31 2",
	recipe = {
		{"basic_materials:plastic_sheet", "", ""},
		{"", "basic_materials:plastic_sheet", ""},
		{"techage:leave_powder", "techage:leave_powder", ""},
	},
})

minetest.register_craft({
	output = "myblocks:pattern41 2",
	recipe = {
		{"basic_materials:plastic_sheet", "basic_materials:plastic_sheet", ""},
		{"", "basic_materials:plastic_sheet", ""},
		{"techage:leave_powder", "techage:leave_powder", ""},
	},
})

minetest.register_craft({
	output = "myblocks:pattern51 2",
	recipe = {
		{"basic_materials:plastic_sheet", "basic_materials:plastic_sheet", ""},
		{"basic_materials:plastic_sheet", "basic_materials:plastic_sheet", ""},
		{"techage:leave_powder", "techage:leave_powder", ""},
	},
})
