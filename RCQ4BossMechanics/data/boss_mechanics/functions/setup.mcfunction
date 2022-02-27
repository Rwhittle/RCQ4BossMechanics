#sets up the scoreboard items encounters
#Rose Whittle Feb 2022
scoreboard objectives add attack_timer dummy
scoreboard objectives add boss_health dummy
scoreboard objectives add attack_casts dummy
scoreboard objectives add harass_timer

#scoreboard objective to hold various values
scoreboard objectives add value dummy
scoreboard players set general_war_defeated value 0
scoreboard players set general_plague_defeated value 0
scoreboard players set general_famine_defeated value 0
scoreboard players set general_death_defeated value 0
#how many adds the general of war summons
scoreboard players set general_war_casts value 4
#how many ticks between casts
scoreboard players set general_war_recast value 600
scoreboard players set general_plague_recast value 600
scoreboard players set general_famine_recast value 600
scoreboard players set general_death_recast value 600

#necromancer stats
scoreboard players set necro_harass_time value 1200
scoreboard players set necro_max_health value 500
scoreboard players set necro_recast value 400
