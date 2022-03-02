#summons the General of plague and configures its boss bar
#Rose Whittle Feb 2022
execute at @e[type=armor_stand,tag=general_plague_spawn] run summon skeleton ~ ~ ~ {Health:300f,Tags:["general_plague","boss"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}},{id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:9375232}}}],ArmorDropChances:[0.000F,0.085F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:30},{Name:generic.knockback_resistance,Base:1.0},{Name:generic.attack_damage,Base:2},{Name:generic.attack_knockback,Base:1}]}
bossbar add boss_mechanics:general_plague {"text":"General of Plague","color":"green"}
bossbar set boss_mechanics:general_plague max 300
bossbar set boss_mechanics:general_plague players @a
scoreboard players set general_plague boss_health 300
scoreboard players set @e[tag=general_plague,tag=boss] attack_casts 0
scoreboard players operation @e[tag=general_plague,tag=boss] attack_timer = general_plague_recast value
