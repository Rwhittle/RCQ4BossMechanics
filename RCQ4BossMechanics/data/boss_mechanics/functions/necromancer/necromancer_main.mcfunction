#handle the main functionality for the necromancer
#Rose Whittle Feb 2022
execute as @e[limit=1,tag=necromancer] store result score necromancer boss_health run data get entity @s Health
execute as @e[limit=1,tag=necromancer] store result bossbar boss_mechanics:general_death value run data get entity @s Health
effect give @e[limit=1,tag=necromancer,type=evoker] resistance 1 2 false
execute if entity @e[tag=necromancer,type=evoker] run scoreboard players add necromancer_timer value 1

execute if score necromancer_timer value matches 1200.. as @e[tag=necromancer,type=evoker] run function boss_mechanics:necromancer/necromancer_despawn
