tag @s add guns_casting

execute anchored eyes positioned ^ ^ ^ run function mgsv:guns/raycast_ray

tag @s remove guns_casting
scoreboard players reset .distance ch_rc