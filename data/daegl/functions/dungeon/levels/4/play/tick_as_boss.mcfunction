# asat daegl boss


data modify storage daegl:boss_fight boss_entity_data set from entity @s

execute store result score boss_health daegl.game_variables run data get storage daegl:boss_fight boss_entity_data.Health
execute store result bossbar daegl:final_bossbar value run scoreboard players get boss_health daegl.game_variables

effect clear @s minecraft:poison

execute if predicate daegl:is_on_fire run data modify entity @s Fire set value 0s

execute if score num_attacks daegl.boss_attack matches 3 if score boss_health daegl.game_variables matches ..375 run scoreboard players add num_attacks daegl.boss_attack 1