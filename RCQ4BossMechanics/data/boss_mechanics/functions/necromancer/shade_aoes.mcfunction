#function to handle the shade aoe attacks
#Rose Whittle Mar 2022

#shade of death
execute at @e[type=armor_stand,tag=aoe,tag=shade_death] run particle minecraft:soul ~ ~1 ~ 2 1 2 1 5 normal
execute at @e[type=armor_stand,tag=aoe,tag=shade_death] run execute unless entity @e[type=area_effect_cloud,distance=0..0.5] run effect give @a[gamemode=adventure,tag=!dead,distance=0..3] minecraft:instant_damage 1 99 false
execute as @e[type=armor_stand,tag=aoe,tag=shade_death] run execute at @s unless entity @e[type=area_effect_cloud,distance=0..0.5] run kill @s

#shade of plague
execute at @e[type=armor_stand,tag=aoe,tag=shade_plague] run particle minecraft:sneeze ~ ~1 ~ 2 1 2 1 5 normal

execute at @e[type=armor_stand,tag=aoe,tag=shade_plague] run execute unless entity @e[type=area_effect_cloud,distance=0..0.5] run effect give @a[gamemode=adventure,tag=!dead,distance=0..3] minecraft:poison 10 0 false
execute at @e[type=armor_stand,tag=aoe,tag=shade_plague] run execute unless entity @e[type=area_effect_cloud,distance=0..0.5] run effect give @a[gamemode=adventure,tag=!dead,distance=0..3] minecraft:instant_damage 1 0 false
execute as @e[type=armor_stand,tag=aoe,tag=shade_plague] run execute at @s unless entity @e[type=area_effect_cloud,distance=0..0.5] run kill @s

#shade of famine

execute at @e[type=armor_stand,tag=aoe,tag=shade_famine] run particle minecraft:wax_on ~ ~1 ~ 2 1 2 1 5 normal

execute at @e[type=armor_stand,tag=aoe,tag=shade_famine] run execute unless entity @e[type=area_effect_cloud,distance=0..0.5] run effect give @a[gamemode=adventure,tag=!dead,distance=0..3] minecraft:weakness 10 0 false
execute at @e[type=armor_stand,tag=aoe,tag=shade_famine] run execute unless entity @e[type=area_effect_cloud,distance=0..0.5] run effect give @a[gamemode=adventure,tag=!dead,distance=0..3] minecraft:slowness 10 0 false
execute at @e[type=armor_stand,tag=aoe,tag=shade_famine] run execute unless entity @e[type=area_effect_cloud,distance=0..0.5] run effect give @a[gamemode=adventure,tag=!dead,distance=0..3] minecraft:instant_damage 1 0 false
execute as @e[type=armor_stand,tag=aoe,tag=shade_famine] run execute at @s unless entity @e[type=area_effect_cloud,distance=0..0.5] run kill @s

#necromancer shade
execute at @e[type=armor_stand,tag=aoe,tag=shade_necromancer] run particle minecraft:enchanted_hit ~ ~1 ~ 2 1 2 1 5 normal

execute at @e[type=armor_stand,tag=aoe,tag=shade_necromancer] run execute unless entity @e[type=area_effect_cloud,tag=shade_necromancer,distance=0..0.5] run summon lightning_bolt ~ ~ ~
execute as @e[type=armor_stand,tag=aoe,tag=shade_necromancer] run execute at @s unless entity @e[type=area_effect_cloud,distance=0..0.5] run kill @s
