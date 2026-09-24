# Optimised by Hashiru
# Check timers
# Hashiru: No need to put XX.1.. as it does >=
execute if stopwatch minecraft:0.5s 0.5.. run function matcha:timers/0_5/timer
execute if stopwatch minecraft:1s 1.. run function matcha:timers/1s/timer
execute if stopwatch minecraft:2s 2.. run function matcha:timers/2s/timer
execute if stopwatch minecraft:3s 3.. run function matcha:timers/3s/timer
execute if stopwatch minecraft:divinity 30.. run function matcha:timers/divinity/timer
# Left this one default because dev did some random magic with it
execute if stopwatch minecraft:eerie 150.1.. run function matcha:timers/eerie/timer
execute if stopwatch minecraft:shakudo_regen_1 30.. run function matcha:timers/shakudo_regen_1/timer
execute if stopwatch minecraft:shakudo_regen_2 26.. run function matcha:timers/shakudo_regen_2/timer
execute if stopwatch minecraft:shakudo_regen_3 22.. run function matcha:timers/shakudo_regen_3/timer
execute if stopwatch minecraft:shakudo_regen_4 18.. run function matcha:timers/shakudo_regen_4/timer
execute if stopwatch minecraft:shakudo_regen_5 20.. run function matcha:timers/shakudo_regen_5/timer
execute if stopwatch minecraft:shakudo_regen_6 16.. run function matcha:timers/shakudo_regen_6/timer
execute if stopwatch minecraft:shakudo_regen_7 12.. run function matcha:timers/shakudo_regen_7/timer
execute if stopwatch minecraft:shakudo_regen_8 8.. run function matcha:timers/shakudo_regen_8/timer

# Reset scores
scoreboard players set @a divinity 0
scoreboard players set @a electrum_armour 0
scoreboard players set @a adamant_armour 0
scoreboard players set @a warding_equipment 0
scoreboard players set @a shakudo_regen 0
