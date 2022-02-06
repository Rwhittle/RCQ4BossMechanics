#Summon the AoE controlling armor stands for the plague attack
#Rose Whittle Feb 2022
scoreboard players remove @s attack_casts 1

execute at @p[gamemode=adventure,!tag=dead,limit=1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:1b,Tags:["general_plague","aoe"],Passengers:[{id:"minecraft:area_effect_cloud",Particle:"white_ash",NoGravity:1b,Radius:3f,Duration:100}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2520324},Unbreakable:1b}},{id:"minecraft:skeleton_skull",Count:1b}],Pose:{LeftArm:[0f,0f,220f],RightArm:[0f,0f,140f]}}

execute if score @s attack_casts matches 1.. run function boss_mechanics:general_plague/summon_aoes
