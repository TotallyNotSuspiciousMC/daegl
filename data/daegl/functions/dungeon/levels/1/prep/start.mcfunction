# asat arbitrary
function daegl:dungeon/levels/clear_tickers

schedule function daegl:dungeon/levels/1/prep/ticker 1t replace

scoreboard players operation current daegl.game_stage = PREPARE_COPPER daegl.game_stage

execute at @e[type=marker,tag=daegl_copper_lever,limit=1] run setblock ~ ~ ~ lever[face=floor,powered=false]
execute at @e[type=marker,tag=daegl_copper_lever,limit=1] run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;12088115]}]}}}}

function daegl:dialogue/speak/enter

kill @e[tag=daegl.minecart] 
execute at @e[tag=daegl.minecart_marker] run summon minecart ~ ~ ~ {Tags:["daegl.minecart"],Invulnerable:1b}
