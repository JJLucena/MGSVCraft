#Show exclamation mark
scoreboard players add @s detection_timer 1
execute if score @s detection_timer >= .1 math_temp positioned ~ ~2.2 ~ run function mgsv:particles/exclamation
execute if score @s detection_timer > .20 math_temp run data modify entity @s NoAI set value 0b