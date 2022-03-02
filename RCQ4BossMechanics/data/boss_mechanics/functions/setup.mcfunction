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

#Shade mechanics
scoreboard players set necromancer_shade_max_health value 600
scoreboard players set necromancer_shade_health value 600
scoreboard players set necromancer_shade_phase_1_transition_health value 300
scoreboard players set necromancer_shade_phase_2_transition_health value 150
scoreboard players set necromancer_shade_recast value 600
scoreboard players set necromancer_shade_phase value 0
scoreboard players set shades_regen_time value 2400
scoreboard players set shade_recast value 600
