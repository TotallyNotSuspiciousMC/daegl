# as inventory stand at arbitrary

item modify entity @s armor.head daegl:add_one_efficiency_level

scoreboard players remove daegl.dungeon.io._private.create_pickaxe#efficiency_level daegl.function_params 1
execute if score daegl.dungeon.io._private.create_pickaxe#efficiency_level daegl.function_params > #0 daegl.constants run function daegl:dungeon/io/_private/_private/add_efficiency