#Player Input
execute as @a at @s if score @s carrot matches 1.. run function mgsv:rightclick

#Check and apply enty buff/debuffs
execute as @e if entity @s[tag=stun] run attribute @s minecraft:generic.movement_speed base set 0.001

#Enemy pathing
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}] run execute at @s if block ~ ~-2 ~ minecraft:lime_wool run function mgsv:enemies/moving_n
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}] run execute at @s if block ~ ~-2 ~ minecraft:green_wool run function mgsv:enemies/moving_ne
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}] run execute at @s if block ~ ~-2 ~ minecraft:red_wool run function mgsv:enemies/moving_e
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}] run execute at @s if block ~ ~-2 ~ minecraft:purple_wool run function mgsv:enemies/moving_se
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}] run execute at @s if block ~ ~-2 ~ minecraft:blue_wool run function mgsv:enemies/moving_s
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}] run execute at @s if block ~ ~-2 ~ minecraft:gray_wool run function mgsv:enemies/moving_sw
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}] run execute at @s if block ~ ~-2 ~ minecraft:black_wool run function mgsv:enemies/moving_w
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}] run execute at @s if block ~ ~-2 ~ minecraft:light_gray_wool run function mgsv:enemies/moving_nw

#Enemy movement
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}, tag=moving_n] run execute at @s run tp @s ~ ~ ~-0.1 180 0
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}, tag=moving_ne] run execute at @s run tp @s ~0.1 ~ ~-0.1 -135 0
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}, tag=moving_e] run execute at @s run tp @s ~0.1 ~ ~ -90 0
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}, tag=moving_se] run execute at @s run tp @s ~0.1 ~ ~0.1 -45 0
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}, tag=moving_s] run execute at @s run tp @s ~ ~ ~0.1 0 0
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}, tag=moving_sw] run execute at @s run tp @s ~-0.1 ~ ~0.1 45 0
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}, tag=moving_w] run execute at @s run tp @s ~-0.1 ~ ~ 90 0
execute as @e if entity @s[type=skeleton, nbt={NoAI:1b}, tag=moving_nw] run execute at @s run tp @s ~-0.1 ~ ~-0.1 135 0

#Timer scoreboard loop
scoreboard players remove @e[scores={timer=0..}] timer 1
tag @e[scores={timer=0}] add timerout