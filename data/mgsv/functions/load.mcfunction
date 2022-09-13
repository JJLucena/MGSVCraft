#Rightclick detection
scoreboard objectives add carrot minecraft.used:minecraft.carrot_on_a_stick

#Math helper scoreboards
scoreboard objectives add math_temp dummy
scoreboard players set .200 math_temp 200
scoreboard players set .100 math_temp 100
scoreboard players set .20 math_temp 20
scoreboard players set .1 math_temp 1
scoreboard players set .0 math_temp 0
scoreboard players set .-1 math_temp -1
scoreboard players set .-200 math_temp -200

#Position calculations
scoreboard objectives add x_pos dummy
scoreboard objectives add y_pos dummy
scoreboard objectives add z_pos dummy
scoreboard objectives add y_rot dummy
scoreboard objectives add p_rot dummy
scoreboard objectives add y_rot_sine dummy
scoreboard objectives add y_rot_cosine dummy
scoreboard objectives add p_rot_sine dummy
scoreboard objectives add p_rot_cosine dummy
#Scoreboard for each entity algorithm objectives' position
scoreboard objectives add x_obj_pos_relative dummy
scoreboard objectives add y_obj_pos_relative dummy
scoreboard objectives add z_obj_pos_relative dummy
scoreboard objectives add y_obj_rot_relative dummy
scoreboard objectives add p_obj_rot_relative dummy
scoreboard objectives add x_obj_pos_result dummy
scoreboard objectives setdisplay sidebar x_obj_pos_result
scoreboard objectives add y_obj_pos_result dummy
scoreboard objectives setdisplay sidebar y_obj_pos_result
scoreboard objectives add z_obj_pos_result dummy
scoreboard objectives add y_rot_result dummy
scoreboard objectives add p_rot_result dummy
scoreboard objectives add y_rot_sine_result dummy
scoreboard objectives add y_rot_cosine_result dummy
scoreboard objectives add p_rot_sine_result dummy
scoreboard objectives add p_rot_cosine_result dummy

#Raycast distance
scoreboard objectives add ch_rc dummy

#Timers
scoreboard objectives add timer dummy
scoreboard objectives add detection_timer dummy