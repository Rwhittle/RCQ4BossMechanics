#summon aoes for the shade of death
#Rose Whittle Mar 2022
execute at @p[gamemode=adventure,tag=!dead,limit=1] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:1b,Tags:["shade_death","aoe"],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["shade_death","aoe"],Particle:"soul",NoGravity:1b,Radius:3f,Duration:100}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2520324},Unbreakable:1b}},{id:"minecraft:skeleton_skull",Count:1b}],Pose:{LeftArm:[0f,0f,220f],RightArm:[0f,0f,140f]}}
