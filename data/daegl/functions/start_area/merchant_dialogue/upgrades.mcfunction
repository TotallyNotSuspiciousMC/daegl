# as player being spoken to, at self

function tnsrandom:next_int

scoreboard players operation daegl.start_area.merchant_dialogue.upgrades#selected_dialogue daegl.temp = current tnsrandom
scoreboard players operation daegl.start_area.merchant_dialogue.upgrades#selected_dialogue daegl.temp %= UPGRADE_DIAGLOGUE_COUNT daegl.constants

execute if score daegl.start_area.merchant_dialogue.upgrades#selected_dialogue daegl.temp matches 0 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Master Smith","color": "gold"}, {"text": "] Get your upgrades here!"}]
execute if score daegl.start_area.merchant_dialogue.upgrades#selected_dialogue daegl.temp matches 1 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Master Smith","color": "gold"}, {"text": "] No loot boxes here!"}]
execute if score daegl.start_area.merchant_dialogue.upgrades#selected_dialogue daegl.temp matches 2 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Master Smith","color": "gold"}, {"text": "] Not a pay to win server!"}]
execute if score daegl.start_area.merchant_dialogue.upgrades#selected_dialogue daegl.temp matches 3 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Master Smith","color": "gold"}, {"text": "] They're not loot boxes, they're goody chests!"}]

scoreboard players reset daegl.start_area.merchant_dialogue.upgrades#selected_dialogue daegl.temp

function daegl:start_area/merchant_dialogue/restart_merchant_cooldown

