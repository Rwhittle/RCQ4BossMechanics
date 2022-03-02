#Phase one of the necromancer shade fight
#Rose Whittle Mar 2022


#wait until the necromancer is at second phase transition health to advance phase again
execute if score necromancer_shade boss_health <= necromancer_shade_phase_2_transition_health value run scoreboard players set necromancer_shade_phase value 4
