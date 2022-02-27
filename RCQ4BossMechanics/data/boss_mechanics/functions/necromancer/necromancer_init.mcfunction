#Summon the necromancer to temporarily harass the players
execute at @e[tag="necromancer_spawn",sort=nearest,type=armor_stand,limit=1] run summon evoker ~ ~ ~ {Health:10000f,Tags:["necromancer"],Attributes:[{Name:generic.max_health,Base:10000}]}
