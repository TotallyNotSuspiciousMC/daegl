# asat gold start lever 

setblock ~ ~ ~ lever[face=floor,powered=false]
summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16766720]}]}}}}
summon area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Duration:2147483647,Tags:["daegl.start_level_tutorial"],CustomName:'{"text":"Start next level","color":"yellow"}'}