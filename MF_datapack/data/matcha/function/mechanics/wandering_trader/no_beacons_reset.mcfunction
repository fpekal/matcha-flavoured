# kill all summoned traders and reset players and let them know
kill @e[type=minecraft:wandering_trader,tag=summoned_by_beacon]
execute as @a[tag=SummonedTrader] run tellraw @s {"translate":"log.kleispack.wandering_trader.kill_early","color":"gray"}
scoreboard players reset @a wandering_trader_timer_score
tag @a remove SummonedTrader
