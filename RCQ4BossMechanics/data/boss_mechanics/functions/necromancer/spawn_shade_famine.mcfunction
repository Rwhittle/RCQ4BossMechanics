#spawn the shade of death
#Rose Whittle Mar 2022
execute at @e[type=armor_stand,tag=shade_famine_spawn] run summon wither_skeleton ~ ~ ~ {Health:100f,Tags:["shade_famine"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}},{id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:9375232}}}],ArmorDropChances:[0.000F,0.085F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.follow_range,Base:30},{Name:generic.knockback_resistance,Base:1.0},{Name:generic.attack_damage,Base:5},{Name:generic.attack_knockback,Base:1}]}
scoreboard players set @e[tag=shade_famine,type=wither_skeleton] attack_timer 450
scoreboard players set shade_famine_regen value 0
