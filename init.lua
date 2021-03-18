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
	use_texture_alpha = "clip",
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


minetest.register_node("myblocks:signpost", {
	description = "Signpost",
	drawtype = "nodebox",
	tiles = {"techage_streetlamp2_housing.png"},
	paramtype = "light",
	paramtype2 = "colorfacedir",
	node_box = {
		type = "fixed",
		fixed = {-.1, -.7, -.5, .1, .3, -.35}
	},
	palette = "myblocks_signpost_palette.png",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky=2, crumbly=2, choppy=2},
	sounds = default.node_sound_defaults(),
	preserve_metadata = function(pos, oldnode, oldmeta, drops)
		for _,drop in ipairs(drops) do
			local meta = drop:get_meta()
			if meta:get_int("palette_index") == 0 then
				meta:set_string("palette_index", "")
			end
		end
	end,
})

minetest.register_node("myblocks:signpost_horizontal", {
	description = "Signpost (horizontal extension)",
	drawtype = "nodebox",
	tiles = {"techage_streetlamp2_housing.png"},
	paramtype = "light",
	paramtype2 = "colorfacedir",
	node_box = {
		type = "fixed",
		fixed = {-.9, -.1, -.5, .1, .1, -.35},
	},
	palette = "myblocks_signpost_palette.png",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky=2, crumbly=2, choppy=2},
	sounds = default.node_sound_defaults(),
	preserve_metadata = function(pos, oldnode, oldmeta, drops)
		for _,drop in ipairs(drops) do
			local meta = drop:get_meta()
			if meta:get_int("palette_index") == 0 then
				meta:set_string("palette_index", "")
			end
		end
	end,
})

for idx, color in ipairs({ "white", "grey", "black", "brown", "yellow", "red", "dark_green", "blue" }) do
	minetest.register_craft({
		output = idx == 1 and "myblocks:signpost" or minetest.itemstring_with_palette("myblocks:signpost", (idx-1)*32),
		type = "shapeless",
		recipe = {
			"myblocks:signpost", "dye:"..color
		}
	})
	minetest.register_craft({
		output = idx == 1 and "myblocks:signpost_horizontal" or minetest.itemstring_with_palette("myblocks:signpost_horizontal", (idx-1)*32),
		type = "shapeless",
		recipe = {
			"myblocks:signpost_horizontal", "dye:"..color
		}
	})
end

minetest.register_craft({
	output = "myblocks:signpost 3",
	recipe = {
		{"techage:streetlamp_pole"},
	},
})

minetest.register_craft({
	output = "myblocks:signpost_horizontal 3",
	recipe = {
		{"techage:streetlamp_arm"},
	},
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
dofile(minetest.get_modpath("myblocks") .. "/mypattern.lua")

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



-- moreblocks saw correction: Da war mal eine Version, die generierte _16. Das ging
-- aber schief, da sich da die Rezepte verschoben hatten. Jetzt nutze ich wieder _15
-- habe aber die Groesse der _15-er auf _16 geändert. Nur gibt es jetzt auf dem Server
-- jede Menge falsche Bloecke.
local ToBeReplaced = {
	"moreblocks:slab_stone_block_16",
	"wool:panel_magenta_16",
	"technic:panel_brass_block_16",
	"moreblocks:slab_coal_checker_16",
	"moreblocks:slab_steelblock_16",
	"moreblocks:slab_desert_stone_block_16",
	"wool:panel_dark_grey_16",
	"moreblocks:micro_jungletree_16",
	"wool:slab_orange_16",
	"moreblocks:micro_all_faces_aspen_tree_16",
	"moreblocks:slab_iron_stone_bricks_16",
	"fachwerk:panel_NM_16",
	"wool:panel_grey_16",
	"castle:micro_pavement_brick_16",
	"moreblocks:micro_glass_16",
	"bakedclay:panel_baked_clay_yellow_16",
	"wool:slab_red_16",
	"moreblocks:slab_straw_16",
	"coloredwood:micro_wood_cyan_16",
	"moreblocks:micro_sandstonebrick_16",
	"wool:micro_red_16",
	"coloredwood:panel_wood_harlequin_16",
	"moreblocks:micro_ice_16",
	"moreblocks:micro_circle_stone_bricks_16",
	"moreblocks:slab_clean_glow_glass_16",
	"wool:slab_cyan_16",
	"moreblocks:slab_desert_stone_16",
	"fachwerk:panel_Z_16",
	"moreblocks:slab_circle_stone_bricks_16",
	"moreblocks:panel_clean_glass_16",
	"wool:slab_violet_16",
	"moreblocks:slab_clean_super_glow_glass_16",
	"fachwerk:slab_F_16",
	"coloredwood:micro_wood_mulberry_16",
	"fachwerk:slab_S_16",
	"moreblocks:micro_coal_checker_16",
	"moreblocks:slab_cactus_checker_16",
	"moreblocks:panel_aspen_wood_16",
	"moreblocks:slab_desert_stonebrick_16",
	"coloredwood:slab_wood_malachite_16",
	"moreblocks:slab_silver_sandstone_16",
	"moreblocks:micro_checker_stone_tile_16",
	"moreblocks:panel_circle_stone_bricks_16",
	"bakedclay:panel_baked_clay_black_16",
	"fachwerk:micro_Z_16",
	"moreblocks:panel_checker_stone_tile_16",
	"bakedclay:micro_baked_clay_black_16",
	"wool:slab_magenta_16",
	"bakedclay:panel_baked_clay_dark_green_16",
	"moreblocks:micro_silver_sandstone_16",
	"wool:panel_orange_16",
	"moreblocks:panel_all_faces_aspen_tree_16",
	"castle_masonry:panel_stonewall_16",
	"myblocks:micro_reet_16",
	"coloredwood:micro_wood_fuchsia_16",
	"wool:micro_yellow_16",
	"bakedclay:slab_baked_clay_yellow_16",
	"moreblocks:panel_coral_skeleton_16",
	"moreblocks:micro_bronzeblock_16",
	"moreblocks:slab_copperpatina_16",
	"coloredwood:micro_wood_harlequin_16",
	"moreblocks:panel_desert_cobble_16",
	"bakedclay:slab_baked_clay_cyan_16",
	"bakedclay:micro_baked_clay_violet_16",
	"moreblocks:panel_silver_sandstone_16",
	"moreblocks:slab_tar_16",
	"moreblocks:slab_obsidian_glass_16",
	"bakedclay:micro_baked_clay_dark_grey_16",
	"coloredwood:slab_wood_orange_16",
	"bakedclay:slab_baked_clay_orange_16",
	"fachwerk:micro_NM_16",
	"myblocks:micro_brick_16",
	"moreblocks:panel_meselamp_16",
	"coloredwood:slab_wood_green_16",
	"myblocks:panel_brick_16",
	"moreblocks:micro_dirt_compressed_16",
	"moreblocks:panel_glass_16",
	"moreblocks:slab_diamondblock_16",
	"moreblocks:micro_brick_16",
	"coloredwood:panel_wood_red_16",
	"coloredwood:micro_wood_red_16",
	"building_blocks:micro_Roofing_16",
	"coloredwood:micro_wood_violet_16",
	"gloopblocks:panel_cement_16",
	"moreblocks:panel_sandstone_block_16",
	"moreblocks:micro_tree_16",
	"moreblocks:panel_wood_tile_full_16",
	"moreblocks:panel_copperblock_16",
	"coloredwood:micro_wood_malachite_16",
	"bakedclay:micro_baked_clay_magenta_16",
	"moreblocks:panel_pine_wood_16",
	"moreblocks:panel_tinblock_16",
	"coloredwood:slab_wood_azure_16",
	"bakedclay:panel_baked_clay_violet_16",
	"bakedclay:micro_baked_clay_red_16",
	"bakedclay:slab_baked_clay_dark_grey_16",
	"bakedclay:panel_baked_clay_grey_16",
	"bakedclay:panel_baked_clay_dark_grey_16",
	"bakedclay:micro_baked_clay_dark_green_16",
	"moreblocks:micro_obsidian_16",
	"bakedclay:panel_baked_clay_brown_16",
	"coloredwood:slab_wood_magenta_16",
	"moreblocks:slab_all_faces_tree_16",
	"coloredwood:panel_wood_malachite_16",
	"moreblocks:micro_wood_tile_full_16",
	"moreblocks:panel_sandstone_16",
	"bakedclay:micro_baked_clay_green_16",
	"fachwerk:panel_W_16",
	"moreblocks:panel_cactus_checker_16",
	"wool:micro_blue_16",
	"wool:panel_brown_16",
	"moreblocks:slab_acacia_wood_16",
	"building_blocks:micro_Tar_16",
	"bakedclay:slab_baked_clay_white_16",
	"building_blocks:panel_Tar_16",
	"coloredwood:micro_wood_sapphire_16",
	"moreblocks:micro_obsidian_block_16",
	"moreblocks:panel_coal_stone_bricks_16",
	"fachwerk:micro_S_16",
	"moreblocks:slab_jungletree_16",
	"coloredwood:slab_wood_cyan_16",
	"moreblocks:panel_mossycobble_16",
	"moreblocks:slab_cobble_16",
	"moreblocks:panel_obsidian_16",
	"bakedclay:micro_baked_clay_cyan_16",
	"moreblocks:micro_mossycobble_16",
	"moreblocks:micro_straw_16",
	"bakedclay:panel_baked_clay_blue_16",
	"technic:slab_concrete_16",
	"moreblocks:slab_pine_tree_16",
	"castle:slab_pavement_brick_16",
	"castle:micro_dungeon_stone_16",
	"castle:panel_dungeon_stone_16",
	"castle:slab_dungeon_stone_16",
	"moreblocks:panel_cobble_16",
	"moreblocks:micro_stone_16",
	"myblocks:panel_reet_16",
	"castle_masonry:micro_rubble_16",
	"moreblocks:micro_clean_glass_16",
	"castle_masonry:slab_rubble_16",
	"coloredwood:micro_wood_chartreuse_16",
	"gloopblocks:slab_cement_16",
	"castle_masonry:slab_stonewall_16",
	"bakedclay:panel_baked_clay_magenta_16",
	"moreblocks:micro_wood_16",
	"building_blocks:panel_Marble_16",
	"building_blocks:slab_Marble_16",
	"bakedclay:slab_baked_clay_black_16",
	"bakedclay:panel_baked_clay_red_16",
	"building_blocks:slab_Roofing_16",
	"building_blocks:panel_hardwood_16",
	"building_blocks:slab_hardwood_16",
	"building_blocks:micro_fakegrass_16",
	"building_blocks:panel_fakegrass_16",
	"building_blocks:slab_fakegrass_16",
	"building_blocks:micro_Adobe_16",
	"building_blocks:panel_Adobe_16",
	"building_blocks:slab_Adobe_16",
	"moreblocks:micro_steelblock_16",
	"building_blocks:micro_hardwood_16",
	"wool:micro_white_16",
	"building_blocks:micro_Marble_16",
	"building_blocks:slab_woodglass_16",
	"building_blocks:micro_grate_16",
	"building_blocks:slab_grate_16",
	"moreblocks:slab_tree_16",
	"wool:slab_dark_green_16",
	"moreblocks:slab_obsidian_block_16",
	"moreblocks:micro_coal_glass_16",
	"fachwerk:panel_S_16",
	"coloredwood:panel_wood_grey_16",
	"wool:slab_black_16",
	"bakedclay:panel_baked_clay_cyan_16",
	"coloredwood:panel_wood_sapphire_16",
	"coloredwood:micro_wood_vermilion_16",
	"fachwerk:slab_Z_16",
	"moreblocks:micro_clean_glow_glass_16",
	"coloredwood:slab_wood_yellow_16",
	"moreblocks:panel_brick_16",
	"coloredwood:micro_wood_spring_16",
	"wool:micro_black_16",
	"moreblocks:micro_all_faces_tree_16",
	"building_blocks:micro_woodglass_16",
	"moreblocks:panel_super_glow_glass_16",
	"myblocks:micro_bukki_16",
	"wool:panel_violet_16",
	"moreblocks:panel_coal_checker_16",
	"moreblocks:micro_cactus_brick_16",
	"moreblocks:slab_desert_sandstone_brick_16",
	"moreblocks:micro_iron_checker_16",
	"moreblocks:panel_tree_16",
	"moreblocks:micro_cobble_16",
	"moreblocks:panel_clean_glow_glass_16",
	"moreblocks:micro_tar_16",
	"bakedclay:panel_baked_clay_white_16",
	"moreblocks:panel_iron_checker_16",
	"moreblocks:panel_glow_glass_16",
	"coloredwood:slab_wood_sapphire_16",
	"moreblocks:micro_cobble_compressed_16",
	"moreblocks:slab_all_faces_pine_tree_16",
	"moreblocks:panel_dirt_compressed_16",
	"building_blocks:panel_Roofing_16",
	"bakedclay:micro_baked_clay_white_16",
	"moreblocks:slab_silver_sandstone_brick_16",
	"fachwerk:panel_F_16",
	"bakedclay:slab_baked_clay_brown_16",
	"coloredwood:slab_wood_turquoise_16",
	"moreblocks:slab_aspen_tree_16",
	"moreblocks:panel_desert_stone_block_16",
	"fachwerk:slab_X5_16",
	"technic:slab_brass_block_16",
	"moreblocks:slab_desert_cobble_16",
	"moreblocks:slab_sandstone_block_16",
	"moreblocks:micro_obsidian_glass_16",
	"coloredwood:panel_wood_rose_16",
	"moreblocks:micro_aspen_wood_16",
	"coloredwood:slab_wood_lime_16",
	"moreblocks:panel_all_faces_tree_16",
	"coloredwood:panel_wood_lime_16",
	"myblocks:slab_reet_16",
	"moreblocks:slab_wood_tile_full_16",
	"technic:micro_brass_block_16",
	"moreblocks:micro_all_faces_acacia_tree_16",
	"moreblocks:panel_straw_16",
	"moreblocks:slab_stone_16",
	"coloredwood:micro_wood_yellow_16",
	"myblocks:micro_leaves_16",
	"moreblocks:micro_meselamp_16",
	"wool:slab_yellow_16",
	"moreblocks:slab_stonebrick_16",
	"moreblocks:panel_copperpatina_16",
	"coloredwood:panel_wood_violet_16",
	"moreblocks:panel_obsidian_block_16",
	"wool:panel_black_16",
	"moreblocks:slab_acacia_tree_16",
	"coloredwood:slab_wood_mulberry_16",
	"coloredwood:slab_wood_grey_16",
	"stairs:slab_16",
	"stairs:stair_outer_16",
	"moreblocks:panel_stone_16",
	"stairs:stair_16",
	"coloredwood:panel_wood_orange_16",
	"coloredwood:panel_wood_cerulean_16",
	"moreblocks:slab_wood_tile_16",
	"coloredwood:panel_wood_chartreuse_16",
	"moreblocks:slab_iron_checker_16",
	"moreblocks:slab_glass_16",
	"building_blocks:slab_smoothglass_16",
	"moreblocks:micro_diamondblock_16",
	"myblocks:slab_brick_16",
	"castle_masonry:panel_rubble_16",
	"moreblocks:slab_obsidianbrick_16",
	"myblocks:panel_bukki_16",
	"myblocks:slab_bukki_16",
	"myblocks:slab_leaves_16",
	"moreblocks:micro_silver_sandstone_block_16",
	"coloredwood:panel_wood_mulberry_16",
	"moreblocks:slab_tinblock_16",
	"technic:panel_granite_16",
	"moreblocks:panel_plankstone_16",
	"moreblocks:slab_cobble_compressed_16",
	"moreblocks:micro_desert_stone_block_16",
	"moreblocks:panel_junglewood_16",
	"coloredwood:panel_wood_cyan_16",
	"moreblocks:slab_junglewood_16",
	"moreblocks:micro_coal_stone_bricks_16",
	"moreblocks:slab_coal_stone_bricks_16",
	"bakedclay:slab_baked_clay_grey_16",
	"building_blocks:slab_Tar_16",
	"moreblocks:micro_coal_stone_16",
	"fachwerk:panel_X5_16",
	"coloredwood:micro_wood_grey_16",
	"fachwerk:micro_F_16",
	"fachwerk:panel_B_16",
	"myblocks:panel_leaves_16",
	"castle:panel_pavement_brick_16",
	"coloredwood:slab_wood_crimson_16",
	"moreblocks:micro_goldblock_16",
	"moreblocks:micro_junglewood_16",
	"moreblocks:micro_cactus_checker_16",
	"moreblocks:micro_glow_glass_16",
	"wool:micro_dark_green_16",
	"bakedclay:panel_baked_clay_green_16",
	"fachwerk:micro_W_16",
	"bakedclay:slab_baked_clay_red_16",
	"castle_masonry:micro_stonewall_16",
	"moreblocks:slab_cactus_brick_16",
	"moreblocks:panel_clean_super_glow_glass_16",
	"moreblocks:slab_checker_stone_tile_16",
	"wool:panel_pink_16",
	"moreblocks:slab_meselamp_16",
	"bakedclay:slab_baked_clay_magenta_16",
	"coloredwood:panel_wood_fuchsia_16",
	"moreblocks:slab_grey_bricks_16",
	"bakedclay:slab_baked_clay_dark_green_16",
	"bakedclay:panel_baked_clay_orange_16",
	"coloredwood:slab_wood_harlequin_16",
	"coloredwood:panel_wood_vermilion_16",
	"moreblocks:panel_desert_cobble_compressed_16",
	"coloredwood:micro_wood_blue_16",
	"moreblocks:micro_plankstone_16",
	"wool:panel_yellow_16",
	"moreblocks:micro_sandstone_block_16",
	"moreblocks:micro_wood_tile_center_16",
	"moreblocks:slab_copperblock_16",
	"moreblocks:micro_stonebrick_16",
	"coloredwood:panel_wood_crimson_16",
	"coloredwood:panel_wood_azure_16",
	"moreblocks:micro_pine_tree_16",
	"coloredwood:micro_wood_indigo_16",
	"wool:panel_cyan_16",
	"coloredwood:slab_wood_chartreuse_16",
	"coloredwood:micro_wood_magenta_16",
	"stairs:stair_inner_16",
	"moreblocks:micro_iron_stone_bricks_16",
	"coloredwood:slab_wood_rose_16",
	"coloredwood:panel_wood_spring_16",
	"moreblocks:panel_desert_stonebrick_16",
	"coloredwood:slab_wood_spring_16",
	"wool:slab_green_16",
	"moreblocks:micro_obsidianbrick_16",
	"moreblocks:panel_all_faces_jungle_tree_16",
	"building_blocks:panel_smoothglass_16",
	"moreblocks:slab_glow_glass_16",
	"coloredwood:panel_wood_yellow_16",
	"moreblocks:slab_desert_sandstone_block_16",
	"bakedclay:micro_baked_clay_blue_16",
	"coloredwood:slab_wood_amber_16",
	"coloredwood:slab_wood_violet_16",
	"fachwerk:micro_pflaster_16",
	"moreblocks:micro_grey_bricks_16",
	"coloredwood:micro_wood_orange_16",
	"moreblocks:panel_cactus_brick_16",
	"coloredwood:micro_wood_crimson_16",
	"wool:slab_grey_16",
	"moreblocks:slab_bronzeblock_16",
	"moreblocks:micro_all_faces_jungle_tree_16",
	"moreblocks:panel_wood_tile_center_16",
	"coloredwood:micro_wood_amber_16",
	"moreblocks:micro_split_stone_tile_16",
	"building_blocks:panel_grate_16",
	"moreblocks:slab_wood_tile_center_16",
	"moreblocks:micro_iron_stone_16",
	"moreblocks:slab_super_glow_glass_16",
	"moreblocks:panel_silver_sandstone_block_16",
	"moreblocks:panel_iron_stone_bricks_16",
	"fachwerk:micro_B_16",
	"fachwerk:slab_B_16",
	"moreblocks:slab_desert_sandstone_16",
	"moreblocks:panel_jungletree_16",
	"wool:micro_magenta_16",
	"moreblocks:micro_all_faces_pine_tree_16",
	"fachwerk:micro_X5_16",
	"moreblocks:slab_all_faces_acacia_tree_16",
	"wool:panel_white_16",
	"moreblocks:micro_desert_cobble_compressed_16",
	"bakedclay:micro_baked_clay_orange_16",
	"moreblocks:panel_iron_stone_16",
	"coloredwood:micro_wood_rose_16",
	"moreblocks:micro_stone_tile_16",
	"technic:micro_granite_16",
	"moreblocks:panel_desert_sandstone_brick_16",
	"moreblocks:panel_cobble_compressed_16",
	"coloredwood:slab_wood_cerulean_16",
	"moreblocks:slab_all_faces_aspen_tree_16",
	"moreblocks:micro_iron_glass_16",
	"moreblocks:panel_iron_glass_16",
	"moreblocks:panel_diamondblock_16",
	"coloredwood:micro_wood_cerulean_16",
	"moreblocks:slab_iron_glass_16",
	"moreblocks:slab_ice_16",
	"moreblocks:slab_stone_tile_16",
	"wool:micro_violet_16",
	"bakedclay:micro_baked_clay_brown_16",
	"moreblocks:panel_ice_16",
	"wool:micro_dark_grey_16",
	"wool:slab_brown_16",
	"moreblocks:micro_copperpatina_16",
	"fachwerk:panel_pflaster_16",
	"technic:panel_concrete_16",
	"moreblocks:panel_grey_bricks_16",
	"moreblocks:panel_tar_16",
	"moreblocks:micro_clean_super_glow_glass_16",
	"moreblocks:panel_obsidian_glass_16",
	"gloopblocks:micro_cement_16",
	"moreblocks:slab_desert_cobble_compressed_16",
	"wool:micro_green_16",
	"wool:panel_green_16",
	"moreblocks:slab_iron_stone_16",
	"moreblocks:panel_obsidianbrick_16",
	"wool:slab_pink_16",
	"moreblocks:panel_wood_tile_16",
	"moreblocks:slab_coal_stone_16",
	"moreblocks:micro_desert_stone_16",
	"moreblocks:slab_wood_16",
	"moreblocks:panel_all_faces_pine_tree_16",
	"fachwerk:slab_pflaster_16",
	"moreblocks:panel_sandstonebrick_16",
	"moreblocks:panel_steelblock_16",
	"moreblocks:micro_tinblock_16",
	"coloredwood:panel_wood_turquoise_16",
	"coloredwood:slab_wood_fuchsia_16",
	"bakedclay:micro_baked_clay_grey_16",
	"wool:slab_dark_grey_16",
	"moreblocks:micro_super_glow_glass_16",
	"moreblocks:slab_silver_sandstone_block_16",
	"technic:slab_granite_16",
	"moreblocks:slab_all_faces_jungle_tree_16",
	"moreblocks:panel_stone_tile_16",
	"moreblocks:panel_desert_sandstone_16",
	"coloredwood:micro_wood_lime_16",
	"moreblocks:panel_split_stone_tile_16",
	"wool:micro_brown_16",
	"moreblocks:micro_copperblock_16",
	"moreblocks:micro_sandstone_16",
	"bakedclay:slab_baked_clay_violet_16",
	"moreblocks:panel_desert_sandstone_block_16",
	"moreblocks:slab_coral_skeleton_16",
	"moreblocks:micro_desert_cobble_16",
	"moreblocks:panel_silver_sandstone_brick_16",
	"wool:micro_cyan_16",
	"bakedclay:slab_baked_clay_green_16",
	"wool:slab_white_16",
	"coloredwood:micro_wood_turquoise_16",
	"moreblocks:micro_desert_sandstone_16",
	"bakedclay:slab_baked_clay_blue_16",
	"moreblocks:panel_stone_block_16",
	"moreblocks:panel_pine_tree_16",
	"moreblocks:slab_coal_glass_16",
	"moreblocks:slab_goldblock_16",
	"coloredwood:panel_wood_green_16",
	"building_blocks:panel_woodglass_16",
	"coloredwood:panel_wood_amber_16",
	"bakedclay:micro_baked_clay_yellow_16",
	"moreblocks:slab_sandstonebrick_16",
	"moreblocks:slab_split_stone_tile_16",
	"moreblocks:slab_clean_glass_16",
	"moreblocks:micro_desert_sandstone_block_16",
	"moreblocks:panel_acacia_wood_16",
	"fachwerk:slab_W_16",
	"moreblocks:micro_wood_tile_16",
	"moreblocks:micro_coral_skeleton_16",
	"moreblocks:micro_pine_wood_16",
	"moreblocks:slab_plankstone_16",
	"moreblocks:slab_aspen_wood_16",
	"wool:micro_pink_16",
	"wool:panel_blue_16",
	"moreblocks:slab_mossycobble_16",
	"moreblocks:panel_goldblock_16",
	"moreblocks:panel_all_faces_acacia_tree_16",
	"moreblocks:panel_coal_glass_16",
	"moreblocks:slab_dirt_compressed_16",
	"moreblocks:micro_desert_stonebrick_16",
	"moreblocks:slab_brick_16",
	"moreblocks:slab_sandstone_16",
	"coloredwood:slab_wood_indigo_16",
	"wool:slab_blue_16",
	"moreblocks:panel_acacia_tree_16",
	"coloredwood:slab_wood_blue_16",
	"moreblocks:panel_wood_16",
	"wool:micro_grey_16",
	"fachwerk:slab_NM_16",
	"moreblocks:micro_silver_sandstone_brick_16",
	"coloredwood:panel_wood_magenta_16",
	"coloredwood:panel_wood_indigo_16",
	"moreblocks:slab_pine_wood_16",
	"coloredwood:panel_wood_blue_16",
	"coloredwood:slab_wood_vermilion_16",
	"coloredwood:micro_wood_green_16",
	"moreblocks:micro_desert_sandstone_brick_16",
	"bakedclay:panel_baked_clay_pink_16",
	"wool:panel_red_16",
	"moreblocks:panel_desert_stone_16",
	"moreblocks:micro_aspen_tree_16",
	"bakedclay:slab_baked_clay_pink_16",
	"moreblocks:panel_stonebrick_16",
	"moreblocks:micro_acacia_wood_16",
	"coloredwood:slab_wood_red_16",
	"coloredwood:micro_wood_azure_16",
	"moreblocks:slab_obsidian_16",
	"moreblocks:micro_stone_block_16",
	"bakedclay:micro_baked_clay_pink_16",
	"moreblocks:panel_aspen_tree_16",
	"wool:micro_orange_16",
	"moreblocks:micro_acacia_tree_16",
	"building_blocks:micro_smoothglass_16",
	"wool:panel_dark_green_16",
	"moreblocks:panel_bronzeblock_16",
	"technic:micro_concrete_16",
	"moreblocks:panel_coal_stone_16",
}

minetest.register_lbm({
	label = "Repair unknown blocks",
	name = "myblocks:repair",
	nodenames = ToBeReplaced,
	run_at_every_load = false,
	action = function(pos, node)
		node.name = string.sub(node.name, 1, -4) .. "_15"
		minetest.swap_node(pos, node)
	end,
})


--minetest.after(10, function()
--	for name, item in pairs(minetest.registered_nodes) do
--		if string.sub(name, -3, -1) == "_15" then
--			name = string.sub(name, 1, -4) .. "_16"
--			print('"'..name..'",')
--		end
--	end
--end)
