#summons the General of War and configures its boss bar
#Rose Whittle Jan 2022
execute at @e[type=armor_stand,tag=general_war_spawn] run summon skeleton ~ ~ ~ {Health:300f,Tags:["general_war","boss"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}},{id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:9375232}}}],ArmorDropChances:[0.000F,0.085F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:30},{Name:generic.knockback_resistance,Base:1.0},{Name:generic.attack_damage,Base:5},{Name:generic.attack_knockback,Base:1}]}
bossbar add boss_mechanics:general_war {"text":"General of War","color":"red"}
bossbar set boss_mechanics:general_war max 300
bossbar set boss_mechanics:general_war players @a
scoreboard players set general_war boss_health 300
scoreboard players set @e[tag=general_war,tag=boss] attack_casts 0
scoreboard players operation @e[tag=general_war,tag=boss] attack_timer = general_war_recast value
