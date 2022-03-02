#summon the shade of the necromancer
#Rose Whittle Feb 2022
execute at @e[type=armor_stand,tag=necromancer_shade_spawn] run summon stray ~ ~ ~ {Health:600f,Tags:["necromancer_shade","boss"],HandItems:[{id:"minecraft:stick",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-1592395697,1582124595,-1309341585,-1027895810]}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:600},{Name:generic.knockback_resistance,Base:0.5}]}


#Set up the necromancer boss bar
bossbar add boss_mechanics:necromancer_shade {"text":"Shade of The Necromancer","color":"white"}
bossbar set boss_mechanics:necromancer_shade max 600
bossbar set boss_mechanics:necromancer_shade players @a
scoreboard players set necromancer_shade boss_health 600
scoreboard players set @e[tag=necromancer_shade,tag=boss] attack_casts 0
scoreboard players operation @e[tag=necromancer_shade,tag=boss] attack_timer = necromancer_shade_recast value
scoreboard players set necromancer_shade_phase value 0
