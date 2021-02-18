--[[

	MyBlocks

	Copyright (C) 2018 Joachim Stolberg
	LGPLv2.1+
	See LICENSE.txt for more information

	History:
	2018-11-24  v0.01  first version

]]--

myblocks = {}

-- for lazy programmers
local S = function(pos) if pos then return minetest.pos_to_string(pos) end end
local P = minetest.string_to_pos
local M = minetest.get_meta


local function register_node(name, desc, tiles)
	minetest.register_node("myblocks:"..name, {
		description = desc,
		tiles = tiles,
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
	output = "myblocks:reet 2",
	recipe = {
		{"farming:straw", "farming:straw", ""},
		{"default:stick", "default:stick", ""},
		{"", "", ""},
	}
})

minetest.register_node("myblocks:brick", {
	description = "Brick by unknown",
	tiles = {"myblocks_brick.png"},
	paramtype2 = "facedir",
	groups = {cracky=2, crumbly=2, choppy=2},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = "myblocks:brick",
	recipe = {
		{"default:clay_brick", "default:clay_brick"},
		{"basic_materials:wet_cement", "default:clay_brick"},
	},
})

minetest.register_node("myblocks:leaves", {
	description = "Apple Tree Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves_simple.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
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

        -- Blaetter fuer die Saege
	stairsplus:register_all("myblocks", "leaves", "default:leaves", {
		description="Apple Tree Leaves",
		groups={snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
		tiles={"default_leaves_simple.png"},
		sounds = default.node_sound_leaves_defaults(),
	})
--	stairsplus:register_all("myblocks", "brick", "myblocks:brick", {
--		description="Brick by unknown",
--		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
--		tiles={"myblocks_brick.png"},
--		sounds = default.node_sound_stone_defaults(),
--	})
--	stairsplus:register_all("myblocks", "brick", "myblocks:brick", {
--		description="Brick by unknown",
--		groups={cracky=2, crumbly=2, choppy=2, not_in_creative_inventory=1},
--		tiles={"myblocks_brick.png"},
--		sounds = default.node_sound_stone_defaults(),
--	})

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

minetest.register_node("myblocks:Xglass", {
	description = "X Glas by JoSto",
	tiles = {"myblocks_shaft.png"},
	drawtype = "glasslike",
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

minetest.register_craft({
    output = "myblocks:Xglass 8",
    recipe = {
        {"default:glass","default:torch", "default:glass"},
        {"default:glass","default:torch", "default:glass"},
        {"default:glass","default:glass", "default:glass"}
    }
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
				if user:get_player_control().sneak then
					-- swap_node with new stored param2
					local pos = pointed_thing.under
					if pos then
						local node = minetest.get_node(pos)
						if user:get_attribute("mytool_screwdriver_name") == node.name then
							local ndef = minetest.registered_nodes[node.name]
							if ndef and ndef.on_rotate ~= screwdriver.disallow then
								local param2 = user:get_attribute("mytool_screwdriver_param2")
								minetest.swap_node(pos, {name = node.name, param2 = param2})
							end
						end
					end
				else
					screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_FACE, 2000)
				end
				return itemstack
			end,

			on_place = function(itemstack, user, pointed_thing)
				if user:get_player_control().sneak then
					-- read param2 and node name
					local pos = pointed_thing.under
					if pos then
						local node = minetest.get_node(pos)
						user:set_attribute("mytool_screwdriver_name", node.name)
						user:set_attribute("mytool_screwdriver_param2", node.param2)
						minetest.chat_send_player(user:get_player_name(), "Blockausrichtung gespeichert!")
					end
				else
					screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_AXIS, 2000)
				end
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
				local item_name = taken:get_name()
				local ndef = minetest.registered_nodes[item_name]
				if ndef then
					inv:remove_item("main", ItemStack(item_name))
					minetest.set_node(pos, {name = item_name})
					itemstack:add_wear(65535 / (100 - 1))
					minetest.log("action", user:get_player_name().." nutzt Zauberstab an pos "..S(pos))
				end
			end
		else
			minetest.chat_send_player(user:get_player_name(), "Du hast keine Superminer privs!")
		end
		return itemstack
	end,
})

--limited edition tools: christmas
minetest.register_tool("myblocks:pick_christmas", {
	description = "Christmas Pick Axe",
	inventory_image = "christmas_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
})


minetest.register_tool("myblocks:christmaxe", {
	description = "Christmaxe",
	inventory_image = "christmaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("myblocks:shovel_snow", {
	description = "Snow Shovel",
	inventory_image = "snow_shovel.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("myblocks:sword_sugar", {
	description = "Sugar Sword",
	inventory_image = "sugar_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			sugary={times={[1]=0.80}, uses=50, maxlevel=1},
		},
		damage_groups = {fleshy=0},
	},
	sound = {breaks = "default_tool_breaks"},
})


minetest.register_chatcommand("peng", {
	description = "Makes peng :)",
	func = function(name, param)
		if minetest.check_player_privs(name, "miniminer") then
			local player = minetest.get_player_by_name(name)
			local pos = player:get_pos()
			minetest.sound_play({
				name="myblocks_peng"},{
				pos = pos,
				gain=2,
				max_hear_distance=15,
				loop=false})
		end
	end,
})

local board_box = {
	type = "wallmounted",
    wall_side = {-16/32, -16/32, -12/32, -15/32, 16/32, 12/32},
}

minetest.register_node("myblocks:monalisa", {
	description = "MyBlocks Monalisa",
	inventory_image = 'myblocks_monalisa.png',
	tiles = {"myblocks_monalisa.png"},
	drawtype = "nodebox",
	node_box = board_box,
	selection_box = board_box,
	paramtype2 = "wallmounted",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("myblocks:cartsroute", {
    description = "Routenplan",
    tiles = {"cartroute.png"},
    paramtype2 = "wallmounted",
    drop = "myblocks:cartsroute",
    groups = {cracky = 3},
    drawtype = "nodebox",
    paramtype = "light",
    light_source = 3,
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox10
        }
    }
})

minetest.register_node("myblocks:glow", {
    tiles = {{
		    name = "techage_gravel4.png",
		    animation = {
			    type = "vertical_frames",
			    aspect_w = 16,
			    aspect_h = 16,
			    length = 0.2,
		    },
	    }},
	    drawtype = "nodebox",
	    paramtype = "light",
	    light_source = 8,
	    groups = {crumbly = 2, falling_node = 1},
	    sounds = default.node_sound_gravel_defaults(),
	    drop = "",
      node_box = {
        type = "fixed",
        fixed = {
            {-0.5, 9.5, -0.5, 0.5, 10.5, 0.5}, -- NodeBox10
        }
    }
})

minetest.register_node("myblocks:invisible", {
	description = "Invisible Block",
	drawtype = "glasslike_framed_optional",
	tiles = {"myblocks_invisible.png"},
	inventory_image = 'myblocks_invisible_inv.png',
	
	paramtype = "light",
	light_source = 0,
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})


if minetest.global_exists("armor") then
	armor:register_armor("myblocks:krone", {
		description = "Admin Krone",
		inventory_image = "myblocks_inv_krone_gold.png",
		texture = "myblocks_krone_gold.png",
		preview = "myblocks_krone_gold_preview.png",
		armor_groups = {fleshy=100},
		groups = {armor_head=1, armor_heal=100, armor_use=0, armor_water=1},
		on_drop = function(itemstack, dropper, pos)
		  return
		end,
	})
end


minetest.register_alias("fachwerk:cherry_leaves", "myblocks:cherry_leaves")
minetest.register_alias("fachwerk:cherry_leaves2", "myblocks:cherry_leaves2")
minetest.register_alias("fachwerk:bukki", "myblocks:bukki")
minetest.register_alias("fachwerk:reet", "myblocks:reet")
minetest.register_alias("access_protection:marker", "myblocks:marker")
minetest.register_alias("fachwerk:screwdriver_diamond", "myblocks:screwdriver_diamond")


dofile(minetest.get_modpath("myblocks") .. "/mytool.lua")
dofile(minetest.get_modpath("myblocks") .. "/strom_tool.lua")
dofile(minetest.get_modpath("myblocks") .. "/rooftop.lua")
dofile(minetest.get_modpath("myblocks") .. "/christmaxx.lua")
dofile(minetest.get_modpath("myblocks") .. "/chains.lua")

local clay = {
	{"white", "White"},
	{"grey", "Grey"},
	{"black", "Black"},
	{"red", "Red"},
	{"yellow", "Yellow"},
	{"green", "Green"},
	{"cyan", "Cyan"},
	{"blue", "Blue"},
	{"magenta", "Magenta"},
	{"orange", "Orange"},
	{"violet", "Violet"},
	{"brown", "Brown"},
	{"pink", "Pink"},
	{"dark_grey", "Dark Grey"},
	{"dark_green", "Dark Green"},
}

for _,item in ipairs(clay) do
	local color = item[2]
	minetest.register_alias("stairs:stair_"..color, "bakedclay:stair_baked_clay_"..color)
	minetest.register_alias("stairs:slab_"..color, "bakedclay:slab_baked_clay_"..color)
end

minetest.register_alias("stairs:slab_W", "fachwerk:slab_W")
minetest.register_alias("stairs:slab_NM", "fachwerk:slab_NM")
minetest.register_alias("stairs:stair_junglewood_outer", "default:junglewood_outerstair")
