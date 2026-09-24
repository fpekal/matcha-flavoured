#Check if the 10 min timer is up, and the beacon has NOT already summoned a trader, if true, summon him
execute as @e[type=marker,tag=beacon_kindling,tag=!summoned_trader] if score @s wandering_trader_timer_score >= 10min wandering_trader_timer_score at @s run function matcha:mechanics/wandering_trader/summon_wandering_trader
execute as @e[type=marker,tag=beacon_kindling,tag=summoned_trader] if score @s wandering_trader_timer_score >= 15min wandering_trader_timer_score at @s run function matcha:mechanics/wandering_trader/kill_wandering_trader

#If the campfire is broken, kill everything
# execute as @e[type=marker,tag=beacon_kindling] run execute unless block ~ ~ ~ minecraft:campfire run function matcha:mechanics/wandering_trader/kill_wandering_trader_early
execute as @e[type=marker,tag=beacon_kindling] at @s unless block ~ ~ ~ minecraft:campfire[lit=true] run function matcha:mechanics/wandering_trader/kill_wandering_trader_early


#Score to check which player exactly summoned him
execute as @a[tag=SummonedTrader] run scoreboard players add @s wandering_trader_timer_score 1

#If the time is less than 15min, add 10 seconds (a value of 1)
execute as @e[type=marker,tag=beacon_kindling] if score @s wandering_trader_timer_score < 15min wandering_trader_timer_score run scoreboard players add @s wandering_trader_timer_score 1

# If the time on any of them OR any player is less than 15min, Restart the loop in 10 seconds
execute as @e[type=marker,tag=beacon_kindling] if score @s wandering_trader_timer_score <= 15min wandering_trader_timer_score run schedule function matcha:mechanics/wandering_trader/check_wandering_trader_timer_loop 10s
execute as @a if score @s wandering_trader_timer_score <= 15min wandering_trader_timer_score run schedule function matcha:mechanics/wandering_trader/check_wandering_trader_timer_loop 10s

# If there are no active beacons, OR players waiting for it, kill all summoned traders and reset players (just in case)
execute unless entity @e[type=marker,tag=beacon_kindling] unless entity @a[scores={wandering_trader_timer_score=..90}] run function matcha:mechanics/wandering_trader/no_beacons_reset