scoreboard players remove @s attack_casts 1
execute at @e[type=armor_stand,tag=general_war_add_spawn,sort=random,limit=1] run summon zombie ~ ~ ~ {HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F]}
execute if score @s attack_casts matches 1.. run function boss_mechanics:general_war/summon_adds
