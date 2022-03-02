#Necromancer summons shades of the generals
#Rose Whittle Feb 2022

#Reset shade regeneration timers
scoreboard players set shade_death_regen value 0
scoreboard players set shade_war_regen value 0
scoreboard players set shade_famine_regen value 0
scoreboard players set shade_plague_regen value 0

#summon shades
function boss_mechanics:necromancer/spawn_shade_death
function boss_mechanics:necromancer/spawn_shade_plague
function boss_mechanics:necromancer/spawn_shade_famine
function boss_mechanics:necromancer/spawn_shade_war

scoreboard players add necromancer_shade_phase value 1 
