--[[

	MyBlocks

	Copyright (C) 2018 Joachim Stolberg
	LGPLv2.1+
	See LICENSE.txt for more information

	History:
	2018-11-24  v0.01  first version

]]--

-- for lazy programmers
local S = function(pos) if pos then return minetest.pos_to_string(pos) end end
local P = minetest.string_to_pos
local M = minetest.get_meta


local function register_node(name, desc, tiles)
	minetest.register_node("myblocks:"..name, {
		description = desc,
		tiles = tiles,
		paramtype = "light",
		light_source = 0,	
		sunlight_propagates = true,
		paramtype2 = "facedir",
		groups = {cracky=2, crumbly=2, choppy=2},
		is_ground_content = false,
		sounds = default.node_sound_wood_defaults(),
	})
end

register_node("bukki", "Dach Bukkis", {'myblocks_asphalt.png'})
register_node("reet", " Dach Reet", {'myblocks_reet.png'})

minetest.register_craft({
	type = "cooking",
	output = "myblocks:bukki",
	recipe = "default:desert_stone",
	cooktime = 3,
})

minetest.register_craft({
	type="shapeless",
	output = "myblocks:reet",
	recipe = {"farming:straw"}
})

minetest.register_node("myblocks:brick", {
	description = "Brick by unknown",
	tiles = {"myblocks_brick.png"},
	paramtype = "light",
	light_source = 0,	
	sunlight_propagates = true,
	paramtype2 = "facedir",
	groups = {cracky=2, crumbly=2, choppy=2},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	type="shapeless",
	output = "myblocks:brick",
	recipe = {"default:brick"},
})

if minetest.get_modpath("moreblocks") then
	stairsplus:register_all("myblocks", "bukki", "myblocks:bukki", {
		description="Dach Bukkis",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"myblocks_asphalt.png"},
		sounds = default.node_sound_wood_defaults(),
	})
	stairsplus:register_all("myblocks", "reet", "myblocks:reet", {
		description="Dach Reet",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"myblocks_reet.png"},
		sounds = default.node_sound_wood_defaults(),
	})
	stairsplus:register_all("myblocks", "brick", "myblocks:brick", {
		description="Brick by unknown",
		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
		tiles={"myblocks_brick.png"},
		sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_alias_all("fachwerk", "bukki", "myblocks", "bukki")
	stairsplus:register_alias_all("fachwerk", "reet", "myblocks", "reet")
	stairsplus:register_alias_all("fachwerk", "brick", "myblocks", "brick")
end

minetest.register_node("myblocks:ivy", {
			  description = "Ivy by maxx",
			  tiles = {"myblocks_ivy.png"},
			  drawtype = "nodebox",
			  paramtype2 = "wallmounted",
			  paramtype = "light",
			  is_ground_content = false,
			  inventory_image = "myblocks_ivy.png",
			  walkable = true,
			  			  groups = {choppy = 2, oddly_breakable_by_hand = 3},			
			  node_box = {
			     type = "wallmounted",
			     						     
			  }
			  
   })
   
minetest.register_craft({
    output = "myblocks:ivy 6",
    recipe = {
        {"default:leaves","default:stick", "default:leaves"},
        {"default:leaves","default:stick", "default:leaves"},
        {"default:leaves","default:stick", "default:leaves"}
    }
})


minetest.register_node("myblocks:shaft", {
	description = "Glasschacht by JoSto",
	tiles = {"myblocks_shaft.png"},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-8/16, -8/16, -8/16, -7.5/16,  8/16,  8/16},
			{ 7.5/16, -8/16, -8/16,  8/16,  8/16,  8/16},
			{-8/16, -8/16,  7.5/16,  8/16,  8/16,  8/16},
			{-8/16, -8/16, -8/16,  8/16,  8/16, -7.5/16},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {-8/16, -8/16, -8/16,  8/16, 8/16, 8/16},
	},

	climbable = true,
	paramtype2 = "facedir",
	on_rotate = screwdriver.disallow,
	paramtype = "light",
	light_source = 9,
	sunlight_propagates = true,
	use_texture_alpha = true,
	is_ground_content = false,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("myblocks:shaftU", {
	description = "Glasschacht by JoSto",
	tiles = {"myblocks_shaft.png"},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-8/16, -8/16, -8/16, -7.5/16,  8/16,  8/16},
			{ 7.5/16, -8/16, -8/16,  8/16,  8/16,  8/16},
			{-8/16, -8/16,  7.5/16,  8/16,  8/16,  8/16},
			--{-8/16, -8/16, -8/16,  8/16,  8/16, -7.5/16},
		},
	},

	climbable = true,
	paramtype2 = "facedir",
	on_rotate = screwdriver.disallow,
	paramtype = "light",
	light_source = 9,
	sunlight_propagates = true,
	use_texture_alpha = true,
	is_ground_content = false,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})


minetest.register_craft({
    output = "myblocks:shaft 4",
    recipe = {
        {"","default:glass", ""},
        {"default:glass","default:torch", "default:glass"},
        {"","default:glass", ""}
    }
})

minetest.register_craft({
	type="shapeless",
    output = "myblocks:shaftU",
    recipe = {"myblocks:shaft"},
})

minetest.register_node("myblocks:cherry_leaves", {
    description = "Cherry Leaves",
	drawtype = "plantlike",
	tiles = {"myblocks_cherry_leaves2.png"},
	inventory_image = "myblocks_cherry_leaves.png",
	wield_image = "myblocks_cherry_leaves.png",
	visual_scale = 1.4,
	walkable = true,
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),

})

minetest.register_node("myblocks:cherry_leaves2", {
    description = "Cherry Leaves",
	drawtype = "allfaces_optional",
	tiles = {"myblocks_cherry_leaves.png"},
	walkable = true,
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),

})

minetest.register_craft({
	type = "shapeless",
	output = "myblocks:cherry_leaves",
	recipe = {"default:leaves"},
})

minetest.register_craft({
	type = "shapeless",
	output = "myblocks:cherry_leaves2",
	recipe = {"myblocks:cherry_leaves"},
})


--
-- Schadensanzeiger
--
minetest.register_node("myblocks:marker", {
	description = "Schadensanzeiger",
	drawtype = "glasslike_framed_optional",
	tiles = {"myblocks_marker.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "myblocks:marker",
	recipe = {
		{"",              "default:stick", ""},
		{"default:stick", "default:glass", "default:stick"},
		{"",              "default:stick", ""},
	}
})


--
-- Screwdriver mod
--
if minetest.get_modpath("screwdriver") then

	if screwdriver and screwdriver.handler then
		minetest.register_tool("myblocks:screwdriver_diamond", {
			description = "Diamond Screwdriver",
			inventory_image = "myblocks_screwdriver.png",

			on_use = function(itemstack, user, pointed_thing)
				screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_FACE, 2000)
				return itemstack
			end,

			on_place = function(itemstack, user, pointed_thing)
				screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_AXIS, 2000)
				return itemstack
			end,
		})
	
		minetest.register_craft({
			output = "myblocks:screwdriver_diamond",
			recipe = {
				{"", "default:diamond", ""},
				{"", "default:stick", ""},
				{"", "", ""},
			},
		})
	end
end



--
-- Admin Tool
--
local function clear_objects(itemstack, placer, pointed_thing)
	local pos = placer:get_pos()
	local pos1x, pos1y, pos1z = pos.x - 1.5, pos.y - 0.5, pos.z - 1.5
	local pos2x, pos2y, pos2z = pos.x + 1.5, pos.y + 2.5, pos.z + 1.5

	for _, obj in pairs(minetest.get_objects_inside_radius(pos, 3)) do
		local entity = obj:get_luaentity()
		print("entity")
		-- Avoid players
		if not obj:is_player() then
			local pos = obj:getpos()
			print(dump(pos))
			if pos.x >= pos1x and pos.x <= pos2x and
					pos.y >= pos1y and pos.y <= pos2y and
					pos.z >= pos1z and pos.z <= pos2z then
				-- Inside region
				obj:remove()
			end
		end
	end
end

local function remove_node(itemstack, placer, pointed_thing)
	if minetest.check_player_privs(placer:get_player_name(), "server") then
		if pointed_thing.type == "node" then
			local pos = pointed_thing.under
			minetest.remove_node(pos)
		end
	else
		minetest.chat_send_player(placer:get_player_name(), "You don't have the necessary privs!")
	end
end

minetest.register_node("myblocks:admin_tool", {
	description = "Admin Tool",
	inventory_image = "myblocks_tool.png",
	wield_image = "myblocks_tool.png",
	use_texture_alpha = true,
	groups = {cracky=1, book=1},
	on_use = remove_node,
	on_place = clear_objects,
	on_secondary_use = clear_objects,
	node_placement_prediction = "",
	stack_max = 1,
})


--
-- Sandsack
--
minetest.register_node("myblocks:sandbag", {
    description = "Sandbag by maxx",
    tiles = {"myblocks_sandsack_side.png"},
    is_ground_content = true,
    groups = {cracky = 3},
    drop = "myblocks:sandbag"
})
minetest.register_craft({
    output = "myblocks:sandbag 6",
    recipe = {
        {"farming:cotton","farming:cotton", "farming:cotton"},
        {"farming:cotton","default:sand", "farming:cotton"},
        {"farming:cotton","farming:cotton", "farming:cotton"}
    }
})


--
-- Zauberstab
--
local function place_item_again(pos, node)
	minetest.set_node(pos, node)
end	

minetest.register_tool("myblocks:wand", {
	description = "Zauberstab (links: Item verschwindet fuer 30s, rechts: platziere Item)",
	inventory_image = "myblocks_wand.png",
	on_use = function(itemstack, user, pointed_thing)
		if minetest.check_player_privs(user:get_player_name(), "superminer") then
			if pointed_thing.type ~= "node" then return end
			local pos = pointed_thing.under
			local node = minetest.get_node(pos)
			local data = M(pos):to_table()
			-- simple node without inventory or meta data?
			if node.name ~= "ignore" and node.name ~= "air" and not next(data.fields) and not next(data.inventory) then
				minetest.remove_node(pos)
				minetest.after(30, place_item_again, pos, node)
				itemstack:add_wear(65535 / (100 - 1))
			end
		else
			minetest.chat_send_player(user:get_player_name(), "Du hast keine Superminer privs!")
		end
		return itemstack
	end,
	on_place = function(itemstack, user, pointed_thing)
		if minetest.check_player_privs(user:get_player_name(), "superminer") then
			if pointed_thing.type ~= "node" then return	end
			local pos = pointed_thing.above
			local inv = minetest.get_inventory({type="player", name=user:get_player_name()})
			local stack = inv:get_stack("main", 1)
			local taken = stack:take_item(1)
			if taken:get_count() == 1 then
				minetest.set_node(pos, {name = taken:get_name()})
				itemstack:add_wear(65535 / (100 - 1))
				minetest.log("action", user:get_player_name().." nutzt Zauberstab an pos "..S(pos))
			end
		else
			minetest.chat_send_player(user:get_player_name(), "Du hast keine Superminer privs!")
		end
		return itemstack
	end,
})


minetest.register_alias("fachwerk:cherry_leaves", "myblocks:cherry_leaves")
minetest.register_alias("fachwerk:cherry_leaves2", "myblocks:cherry_leaves2")
minetest.register_alias("fachwerk:bukki", "myblocks:bukki")
minetest.register_alias("fachwerk:reet", "myblocks:reet")
minetest.register_alias("access_protection:marker", "myblocks:marker")
minetest.register_alias("fachwerk:screwdriver_diamond", "myblocks:screwdriver_diamond")

