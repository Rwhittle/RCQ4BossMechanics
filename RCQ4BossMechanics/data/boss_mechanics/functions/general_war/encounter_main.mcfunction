#controls the main for the General of War encounter, executing once every tick
#Rose Whittle Feb 2022
execute as @e[limit=1,tag=general_war,tag=boss] store result score general_war boss_health run data get entity @s Health
execute as @e[limit=1,tag=general_war,tag=boss] store result bossbar boss_mechanics:general_war value run data get entity @s Health

#handle attack timer
scoreboard players remove @e[tag=general_war,tag=boss] attack_timer 1
execute as @e[tag=general_war,tag=boss] run execute if score @s attack_timer matches ..0 run scoreboard players operation @s attack_casts = general_war_casts value
execute as @e[tag=general_war,tag=boss] run execute if score @s attack_timer matches ..0 run function boss_mechanics:general_war/summon_adds
execute as @e[tag=general_war,tag=boss] run execute if score @s attack_timer matches ..0 run scoreboard players operation @s attack_timer = general_war_recast value

#handle Death
execute unless entity @e[tag=general_war,tag=boss] run function boss_mechanics:general_war/death
