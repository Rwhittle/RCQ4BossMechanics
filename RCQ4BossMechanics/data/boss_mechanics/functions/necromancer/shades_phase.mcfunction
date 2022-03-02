#controls the shades phase of the necromancer fight
#Rose Whittle Mar 2022

#handle regenerating shades
execute unless entity @e[type=wither_skeleton,tag=shade_death] run scoreboard players add shade_death_regen value 1
execute unless entity @e[type=wither_skeleton,tag=shade_war] run scoreboard players add shade_war_regen value 1
execute unless entity @e[type=wither_skeleton,tag=shade_famine] run scoreboard players add shade_famine_regen value 1
execute unless entity @e[type=wither_skeleton,tag=shade_plague] run scoreboard players add shade_plague_regen value 1

execute unless entity @e[type=wither_skeleton,tag=shade,tag=death] if score shade_death_regen value >= shades_regen_time value run function boss_mechanics:necromancer/spawn_shade_death
execute unless entity @e[type=wither_skeleton,tag=shade,tag=war] if score shade_war_regen value >= shades_regen_time value run function boss_mechanics:necromancer/spawn_shade_war
execute unless entity @e[type=wither_skeleton,tag=shade,tag=famine] if score shade_famine_regen value >= shades_regen_time value run function boss_mechanics:necromancer/spawn_shade_famine
execute unless entity @e[type=wither_skeleton,tag=shade,tag=plague] if score shade_plague_regen value >= shades_regen_time value run function boss_mechanics:necromancer/spawn_shade_plague

#handle death aoes
scoreboard players remove @e[tag=shade_death,type=wither_skeleton] attack_timer 1
execute as @e[tag=shade_death,type=wither_skeleton] run execute if score @s attack_timer matches ..0 run function boss_mechanics:necromancer/shade_death_summon_aoe
execute as @e[tag=shade_death,type=wither_skeleton] run execute if score @s attack_timer matches ..0 run scoreboard players operation @s attack_timer = shade_recast value

#handle plague aoes
scoreboard players remove @e[tag=shade_plague,type=wither_skeleton] attack_timer 1
execute as @e[tag=shade_plague,type=wither_skeleton] run execute if score @s attack_timer matches ..0 run function boss_mechanics:necromancer/shade_plague_summon_aoe
execute as @e[tag=shade_plague,type=wither_skeleton] run execute if score @s attack_timer matches ..0 run scoreboard players operation @s attack_timer = shade_recast value

#handle famine aoes
scoreboard players remove @e[tag=shade_famine,type=wither_skeleton] attack_timer 1
execute as @e[tag=shade_famine,type=wither_skeleton] run execute if score @s attack_timer matches ..0 run function boss_mechanics:necromancer/shade_famine_summon_aoe
execute as @e[tag=shade_famine,type=wither_skeleton] run execute if score @s attack_timer matches ..0 run scoreboard players operation @s attack_timer = shade_recast value

#handle war summons
scoreboard players remove @e[tag=shade_war,type=wither_skeleton] attack_timer 1
execute as @e[tag=shade_war,type=wither_skeleton] run execute if score @s attack_timer matches ..0 run function boss_mechanics:necromancer/shade_war_summon_adds
execute as @e[tag=shade_war,type=wither_skeleton] run execute if score @s attack_timer matches ..0 run scoreboard players operation @s attack_timer = shade_recast value

#make the necromancer invincible
effect give @e[tag=necromancer_shade,type=stray] resistance 1 9

#progress the phase if all enemies are dead

execute unless entity @e[type=wither_skeleton,tag=shade_death] unless entity @e[type=wither_skeleton,tag=shade_famine] unless entity @e[type=wither_skeleton,tag=shade_plague] unless entity @e[type=wither_skeleton,tag=shade_war] run scoreboard players add necromancer_shade_phase value 1
