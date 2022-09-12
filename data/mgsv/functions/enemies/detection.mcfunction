#Get entity position
execute store result score @s x_pos run data get entity @s Pos[0] 100
execute store result score @s z_pos run data get entity @s Pos[2] 100

#Get objective(player) entity position (Wrong data, still not relative)
execute store result score @s x_obj_pos_relative run data get entity @p Pos[0] 100
execute store result score @s z_obj_pos_relative run data get entity @p Pos[2] 100

#Get true objective(player) postion relative to the entity
scoreboard players operation @s x_obj_pos_relative -= @s x_pos
scoreboard players operation @s z_obj_pos_relative -= @s z_pos

#Get entity y rotation sine and cosine
execute anchored eyes rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["y_rot_cloud"]}
scoreboard players operation @s y_rot_sine = @s x_pos
scoreboard players operation @s y_rot_cosine = @s z_pos
execute store result score @s math_temp run data get entity @e[tag=y_rot_cloud,sort=nearest,limit=1] Pos[0] 100
scoreboard players operation @s y_rot_sine -= @s math_temp
execute store result score @s math_temp run data get entity @e[tag=y_rot_cloud,sort=nearest,limit=1] Pos[2] 100
scoreboard players operation @s y_rot_cosine -= @s math_temp
kill @e[tag=y_rot_cloud,sort=nearest]

#Apply axis rotation to local coordinates
#Getting the inverse value here due to it being more efficient than getting the inverse angle at sine and cosine calculation
# -1 * rotatedX = Cos(Angle) * relativeX - Sin(Angle) * relativeZ
scoreboard players operation @s y_rot_cosine_result = @s y_rot_cosine
scoreboard players operation @s y_rot_sine_result = @s y_rot_sine
scoreboard players operation @s y_rot_cosine_result *= @s x_obj_pos_relative
scoreboard players operation @s y_rot_cosine_result /= .100 math_temp
scoreboard players operation @s y_rot_sine_result *= @s z_obj_pos_relative
scoreboard players operation @s y_rot_sine_result /= .100 math_temp
scoreboard players operation @s y_rot_cosine_result -= @s y_rot_sine_result
scoreboard players operation @s x_obj_pos_result = @s y_rot_cosine_result
scoreboard players operation @s x_obj_pos_result *= .-1 math_temp
# -1 * rotatedZ = Cos(Angle) * relativeZ + Sin(Angle) * relativeX
scoreboard players operation @s y_rot_cosine_result = @s y_rot_cosine
scoreboard players operation @s y_rot_sine_result = @s y_rot_sine
scoreboard players operation @s y_rot_cosine_result *= @s z_obj_pos_relative
scoreboard players operation @s y_rot_cosine_result /= .100 math_temp
scoreboard players operation @s y_rot_sine_result *= @s x_obj_pos_relative
scoreboard players operation @s y_rot_sine_result /= .100 math_temp
scoreboard players operation @s y_rot_cosine_result += @s y_rot_sine_result
scoreboard players operation @s z_obj_pos_result = @s y_rot_cosine_result
scoreboard players operation @s z_obj_pos_result *= .-1 math_temp

scoreboard players reset .distance ch_rc