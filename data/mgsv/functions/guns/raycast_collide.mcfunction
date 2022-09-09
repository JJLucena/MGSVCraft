particle explosion ~ ~ ~ 0 0 0 0 5

# Detect headshots
execute positioned ~ ~0.35 ~ unless entity @s[dx=0] positioned ~ ~-0.3 ~ run effect give @s minecraft:instant_health 1 2
# Detect bodyshots
execute positioned ~ ~0.35 ~ if entity @s[dx=0] positioned ~ ~-2.3 ~ if entity @s[dx=0] run effect give @s minecraft:instant_health 1 1
# Detect legshots
execute positioned ~ ~-1.95 ~ unless entity @s[dx=0] run effect give @s minecraft:instant_health 1 0

scoreboard players set .distance ch_rc 1000