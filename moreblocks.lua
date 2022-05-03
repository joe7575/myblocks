local function register_alias(mod, name)
	print(mod, name)
	minetest.register_alias_force("stairs:slab_" ..name, mod .. ":slab_" ..name)
	minetest.register_alias_force("stairs:slab_" ..name.. "_inverted", mod .. ":slab_" ..name.. "_inverted")
	minetest.register_alias_force("stairs:slab_" ..name.. "_wall", mod .. ":slab_" ..name.. "_wall")
	minetest.register_alias_force("stairs:slab_" ..name.. "_quarter", mod .. ":slab_" ..name.. "_quarter")
	minetest.register_alias_force("stairs:slab_" ..name.. "_quarter_inverted", mod .. ":slab_" ..name.. "_quarter_inverted")
	minetest.register_alias_force("stairs:slab_" ..name.. "_quarter_wall", mod .. ":slab_" ..name.. "_quarter_wall")
	minetest.register_alias_force("stairs:slab_" ..name.. "_three_quarter", mod .. ":slab_" ..name.. "_three_quarter")
	minetest.register_alias_force("stairs:slab_" ..name.. "_three_quarter_inverted", mod .. ":slab_" ..name.. "_three_quarter_inverted")
	minetest.register_alias_force("stairs:slab_" ..name.. "_three_quarter_wall", mod .. ":slab_" ..name.. "_three_quarter_wall")
	minetest.register_alias_force("stairs:stair_" ..name, mod .. ":stair_" ..name)
	minetest.register_alias_force("stairs:stair_" ..name.. "_inverted", mod .. ":stair_" ..name.. "_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_wall", mod .. ":stair_" ..name.. "_wall")
	minetest.register_alias_force("stairs:stair_" ..name.. "_wall_half", mod .. ":stair_" ..name.. "_wall_half")
	minetest.register_alias_force("stairs:stair_" ..name.. "_wall_half_inverted", mod .. ":stair_" ..name.. "_wall_half_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_half", mod .. ":stair_" ..name.. "_half")
	minetest.register_alias_force("stairs:stair_" ..name.. "_half_inverted", mod .. ":stair_" ..name.. "_half_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_right_half", mod .. ":stair_" ..name.. "_right_half")
	minetest.register_alias_force("stairs:stair_" ..name.. "_right_half_inverted", mod .. ":stair_" ..name.. "_right_half_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_wall_half", mod .. ":stair_" ..name.. "_wall_half")
	minetest.register_alias_force("stairs:stair_" ..name.. "_wall_half_inverted", mod .. ":stair_" ..name.. "_wall_half_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_inner", mod .. ":stair_" ..name.. "_inner")
	minetest.register_alias_force("stairs:stair_" ..name.. "_inner_inverted", mod .. ":stair_" ..name.. "_inner_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_outer", mod .. ":stair_" ..name.. "_outer")
	minetest.register_alias_force("stairs:stair_" ..name.. "_outer_inverted", mod .. ":stair_" ..name.. "_outer_inverted")
	minetest.register_alias_force("stairs:stair_outer_" ..name, mod .. ":stair_" ..name.. "_outer")
	minetest.register_alias_force("stairs:stair_inner_" ..name, mod .. ":stair_" ..name.. "_inner")
end

local function register_alias_baked_clay(mod, name)
	print(mod, name)
	minetest.register_alias_force("stairs:slab_" ..name, mod .. ":slab_baked_clay_" ..name)
	minetest.register_alias_force("stairs:slab_" ..name.. "_inverted", mod .. ":slab_baked_clay_" ..name.. "_inverted")
	minetest.register_alias_force("stairs:slab_" ..name.. "_wall", mod .. ":slab_baked_clay_" ..name.. "_wall")
	minetest.register_alias_force("stairs:slab_" ..name.. "_quarter", mod .. ":slab_baked_clay_" ..name.. "_quarter")
	minetest.register_alias_force("stairs:slab_" ..name.. "_quarter_inverted", mod .. ":slab_baked_clay_" ..name.. "_quarter_inverted")
	minetest.register_alias_force("stairs:slab_" ..name.. "_quarter_wall", mod .. ":slab_baked_clay_" ..name.. "_quarter_wall")
	minetest.register_alias_force("stairs:slab_" ..name.. "_three_quarter", mod .. ":slab_baked_clay_" ..name.. "_three_quarter")
	minetest.register_alias_force("stairs:slab_" ..name.. "_three_quarter_inverted", mod .. ":slab_baked_clay_" ..name.. "_three_quarter_inverted")
	minetest.register_alias_force("stairs:slab_" ..name.. "_three_quarter_wall", mod .. ":slab_baked_clay_" ..name.. "_three_quarter_wall")
	minetest.register_alias_force("stairs:stair_" ..name, mod .. ":stair_baked_clay_" ..name)
	minetest.register_alias_force("stairs:stair_" ..name.. "_inverted", mod .. ":stair_baked_clay_" ..name.. "_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_wall", mod .. ":stair_baked_clay_" ..name.. "_wall")
	minetest.register_alias_force("stairs:stair_" ..name.. "_wall_half", mod .. ":stair_baked_clay_" ..name.. "_wall_half")
	minetest.register_alias_force("stairs:stair_" ..name.. "_wall_half_inverted", mod .. ":stair_baked_clay_" ..name.. "_wall_half_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_half", mod .. ":stair_baked_clay_" ..name.. "_half")
	minetest.register_alias_force("stairs:stair_" ..name.. "_half_inverted", mod .. ":stair_baked_clay_" ..name.. "_half_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_right_half", mod .. ":stair_baked_clay_" ..name.. "_right_half")
	minetest.register_alias_force("stairs:stair_" ..name.. "_right_half_inverted", mod .. ":stair_baked_clay_" ..name.. "_right_half_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_wall_half", mod .. ":stair_baked_clay_" ..name.. "_wall_half")
	minetest.register_alias_force("stairs:stair_" ..name.. "_wall_half_inverted", mod .. ":stair_baked_clay_" ..name.. "_wall_half_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_inner", mod .. ":stair_baked_clay_" ..name.. "_inner")
	minetest.register_alias_force("stairs:stair_" ..name.. "_inner_inverted", mod .. ":stair_baked_clay_" ..name.. "_inner_inverted")
	minetest.register_alias_force("stairs:stair_" ..name.. "_outer", mod .. ":stair_baked_clay_" ..name.. "_outer")
	minetest.register_alias_force("stairs:stair_" ..name.. "_outer_inverted", mod .. ":stair_baked_clay_" ..name.. "_outer_inverted")
	minetest.register_alias_force("stairs:stair_outer_" ..name, mod .. ":stair_baked_clay_" ..name.. "_outer")
	minetest.register_alias_force("stairs:stair_inner_" ..name, mod .. ":stair_baked_clay_" ..name.. "_inner")
end

local NodeNames1 = {
	"fachwerk:0",
	"fachwerk:1",
	"fachwerk:2",
	"fachwerk:3",
	"fachwerk:4",
	"fachwerk:5",
	"fachwerk:6",
	"fachwerk:7",
	"fachwerk:8",
	"fachwerk:9",
	"fachwerk:10",
	"fachwerk:A",
	"fachwerk:B",
	"fachwerk:C",
	"fachwerk:D",
	"fachwerk:E",
	"fachwerk:X5",
	"fachwerk:W",
	"fachwerk:F",
	"fachwerk:S",
	"fachwerk:pflaster",
	"fachwerk:Z",
	"fachwerk:B",
	"fachwerk:NM",
	"fachwerk:NE",
	--"myblocks:bukki",
	"myblocks:reet",
	"myblocks:brick",
	"myblocks:leaves",
	"myblocks:sandbag",
	"building_blocks:hardwood",
	"building_blocks:Roofing",
	"building_blocks:Marble",
	"castle:pavement_brick",
	"techage:basalt_glass",
	"techage:basalt_glass2",
}

local NodeNames2 = {
	"bakedclay:red",
	"bakedclay:white",
	"bakedclay:grey",
	"bakedclay:black",
	"bakedclay:red",
	"bakedclay:yellow",
	"bakedclay:green",
	"bakedclay:cyan",
	"bakedclay:blue",
	"bakedclay:magenta",
	"bakedclay:orange",
	"bakedclay:violet",
	"bakedclay:brown",
	"bakedclay:pink",
	"bakedclay:dark_grey",
	"bakedclay:dark_green",
}

minetest.register_on_mods_loaded(function()
	for _,item in ipairs(NodeNames1) do
		local mod, name = unpack(string.split(item, ":"))
		register_alias(mod, name)
	end
end)

minetest.register_on_mods_loaded(function()
	for _,item in ipairs(NodeNames2) do
		local mod, name = unpack(string.split(item, ":"))
		register_alias_baked_clay(mod, name)
	end
end)




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

minetest.register_alias("myblocks:bukki_panel", "myblocks:panel_bukki")
minetest.register_alias("myblocks:bukki_doublepanel", "myblocks:stair_bukki")
minetest.register_alias("myblocks:bukki_cube", "myblocks:micro_bukki")