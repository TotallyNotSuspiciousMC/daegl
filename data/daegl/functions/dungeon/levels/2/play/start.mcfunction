# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/2/play/ticker 1t replace

tellraw @a [{"text": "Start Iron Caves"}]
scoreboard players operation current daegl.game_stage = IRON daegl.game_stage

scoreboard players reset resource_count daegl.game_variables

scoreboard players operation daegl.dungeon.util.create_resource_bossbar#max daegl.function_params = IRON_AMOUNT daegl.constants
function daegl:dungeon/util/create_resource_bossbar
bossbar set daegl:resource_bossbar color white
bossbar set daegl:resource_bossbar name [{"text": "Iron Ore Gathered", "color": "#C0C0C0", "bold": true}]