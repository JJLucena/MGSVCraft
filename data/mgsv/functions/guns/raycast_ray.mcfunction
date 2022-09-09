execute as @e[type=!#mgsv:not_mob, tag=!guns_casting, dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function mgsv:guns/raycast_collide

scoreboard players add .distance ch_rc 1

particle minecraft:smoke ~ ~ ~ 0 0 0 0 0

execute if score .distance ch_rc matches ..1000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #mgsv:raycast_pass run function mgsv:guns/raycast_ray