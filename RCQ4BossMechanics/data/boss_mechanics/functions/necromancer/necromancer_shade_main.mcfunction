#Control the state machine for the Necromancer Shade boss fight
#Rose Whittle Mar 2022

#common functions
#handle the bossbar
execute as @e[limit=1,tag=necromancer_shade,tag=boss] store result score necromancer_shade boss_health run data get entity @s Health
execute as @e[limit=1,tag=necromancer_shade,tag=boss] store result bossbar boss_mechanics:necromancer_shade value run data get entity @s Health

#handle aoe mechanics
function boss_mechanics:necromancer/shade_aoes
scoreboard players remove @e[tag=necromancer_shade,tag=boss] attack_timer 1
execute as @e[tag=necromancer_shade,tag=boss] run execute if score @s attack_timer matches ..0 run scoreboard players operation @s attack_casts = necromancer_shade_casts value
execute as @e[tag=necromancer_shade,tag=boss] run execute if score @s attack_timer matches ..0 run function boss_mechanics:necromancer/shade_summon_aoes
execute as @e[tag=necromancer_shade,tag=boss] run execute if score @s attack_timer matches ..0 run scoreboard players operation @s attack_timer = necromancer_shade_recast value

#handle phases
execute if score necromancer_shade_phase value matches 0 run function boss_mechanics:necromancer/shade_phase_1
execute if score necromancer_shade_phase value matches 1 run function boss_mechanics:necromancer/summon_shades
execute if score necromancer_shade_phase value matches 2 run function boss_mechanics:necromancer/shades_phase
execute if score necromancer_shade_phase value matches 3 run function boss_mechanics:necromancer/shade_phase_2
execute if score necromencer_shade_phase value matches 4 run function boss_mechanics:necromancer/summon_shades
execute if score necromancer_shade_phase value matches 5 run function boss_mechanics:necromancer/shades_phase
execute if score necromancer_shade_phase value matches 6 run function boss_mechanics:necromancer/shade_phase_3
