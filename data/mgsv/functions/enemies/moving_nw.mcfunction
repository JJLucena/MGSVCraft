execute if entity @s[tag=!moving_nw] run tag @s remove aligned
execute if entity @s[tag=!aligned] as @s at @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
tag @s add aligned
tag @s remove moving_n
tag @s remove moving_ne
tag @s remove moving_e
tag @s remove moving_se
tag @s remove moving_s
tag @s remove moving_sw
tag @s remove moving_w
tag @s add moving_nw