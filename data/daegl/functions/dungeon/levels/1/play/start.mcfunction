# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/1/play/ticker 1t replace

tellraw @a [{"text": "Start Copper Caves"}]
scoreboard players operation current daegl.game_stage = COPPER daegl.game_stage

scoreboard players operation daegl.dungeon.util.create_resource_bossbar#max daegl.function_params = COPPER_AMOUNT daegl.constants
function daegl:dungeon/util/create_resource_bossbar
bossbar set daegl:resource_bossbar color green
bossbar set daegl:resource_bossbar name [{"text": "Copper Ore Gathered", "color": "#B87333", "bold": true}]