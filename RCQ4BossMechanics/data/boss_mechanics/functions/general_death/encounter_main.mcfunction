#controls the main for the General of death encounter, executing once every tick
#Rose Whittle Feb 2022
execute as @e[limit=1,tag=general_death,tag=boss] store result score general_death boss_health run data get entity @s Health
execute as @e[limit=1,tag=general_death,tag=boss] store result bossbar boss_mechanics:general_death value run data get entity @s Health

#handle attack timer
scoreboard players remove @e[tag=general_death,tag=boss] attack_timer 1
execute as @e[tag=general_death,tag=boss] run execute if score @s attack_timer matches ..0 run scoreboard players operation @s attack_casts = general_death_casts value
execute as @e[tag=general_death,tag=boss] run execute if score @s attack_timer matches ..0 run function boss_mechanics:general_death/summon_aoes
execute as @e[tag=general_death,tag=boss] run execute if score @s attack_timer matches ..0 run scoreboard players operation @s attack_timer = general_death_recast value

#handle aoe particles

#handle aoe countdowns

execute at @e[type=armor_stand,tag=aoe,tag=general_death] run execute unless entity @e[type=area_effect_cloud,distance=0..0.5] run effect give @p[gamemode=adventure,tag=!dead,distance=0..3] minecraft:instant_damage 1 99 false
execute at @e[type=armor_stand,tag=aoe,tag=general_death] run execute unless entity @e[type=area_effect_cloud,distance=0..0.5] run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1

execute as @e[type=armor_stand,tag=aoe,tag=general_death] run execute at @s unless entity @e[type=area_effect_cloud,distance=0..0.5] run kill @s


#handle Death
execute unless entity @e[tag=general_death,tag=boss] run function boss_mechanics:general_death/death
