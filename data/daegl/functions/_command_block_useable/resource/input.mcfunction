# as command block, at drop item container
execute if score current daegl.game_stage = COPPER daegl.game_stage store success score daegl._command_block_useable.resource.move#is_raw_copper daegl.temp if data block ~ ~ ~ Items[{Slot:0b, tag:{DaeglCopper:1b}}]
execute if score current daegl.game_stage = PREPARE_IRON daegl.game_stage store success score daegl._command_block_useable.resource.move#is_raw_copper daegl.temp if data block ~ ~ ~ Items[{Slot:0b, tag:{DaeglCopper:1b}}]

execute if score current daegl.game_stage = IRON daegl.game_stage store success score daegl._command_block_useable.resource.move#is_raw_iron daegl.temp if data block ~ ~ ~ Items[{Slot:0b, tag:{DaeglIron:1b}}]
execute if score current daegl.game_stage = PREPARE_GOLD daegl.game_stage store success score daegl._command_block_useable.resource.move#is_raw_iron daegl.temp if data block ~ ~ ~ Items[{Slot:0b, tag:{DaeglIron:1b}}]

execute if score current daegl.game_stage = GOLD daegl.game_stage store success score daegl._command_block_useable.resource.move#is_raw_gold daegl.temp if data block ~ ~ ~ Items[{Slot:0b, tag:{DaeglGold:1b}}]
execute if score current daegl.game_stage = PREPARE_CRYSTAL daegl.game_stage store success score daegl._command_block_useable.resource.move#is_raw_gold daegl.temp if data block ~ ~ ~ Items[{Slot:0b, tag:{DaeglGold:1b}}]

scoreboard players operation daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp += daegl._command_block_useable.resource.move#is_raw_copper daegl.temp
scoreboard players operation daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp += daegl._command_block_useable.resource.move#is_raw_iron daegl.temp
scoreboard players operation daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp += daegl._command_block_useable.resource.move#is_raw_gold daegl.temp

# process if item is smeltable
execute unless score daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp = #false daegl.constants run function daegl:dungeon/smelter/move_to/processor

# return unsmeltable item
execute if score daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp = #false daegl.constants run function daegl:dungeon/smelter/move_to/output

scoreboard players reset daegl._command_block_useable.resource.move#is_raw_iron daegl.temp
scoreboard players reset daegl._command_block_useable.resource.move#is_raw_gold daegl.temp
scoreboard players reset daegl._command_block_useable.resource.move#is_raw_copper daegl.temp
scoreboard players reset daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp
