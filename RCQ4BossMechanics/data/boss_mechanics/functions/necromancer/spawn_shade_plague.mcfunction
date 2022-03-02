#spawn the shade of death
#Rose Whittle Mar 2022
execute at @e[type=armor_stand,tag=shade_plague_spawn] run summon wither_skeleton ~ ~ ~ {Health:100f,Tags:["shade_plague"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}}],HandDropChances:[0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:2520324}}}],ArmorDropChances:[0.000F,0.085F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.follow_range,Base:30},{Name:generic.knockback_resistance,Base:1.0},{Name:generic.attack_damage,Base:5},{Name:generic.attack_knockback,Base:1}]}
scoreboard players set @e[tag=shade_plague,type=wither_skeleton] attack_timer 150
scoreboard players set shade_plague_regen value 0
