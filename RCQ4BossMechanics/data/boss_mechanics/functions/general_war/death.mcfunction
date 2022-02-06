#Handles death cleanup
#Rose Whittle Feb 2022
scoreboard players set general_war_defeated value 1
kill @e[type=skeleton_horse,tag=general_war,tag=mount]
bossbar remove boss_mechanics:general_war
