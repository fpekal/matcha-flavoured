#check to see which chicken was bred, and if they were, run fed_effects
execute as @e[type=minecraft:chicken,distance=..8] run execute if data entity @s {InLove:600} run function matcha:environmental/chicken/fed_effects
advancement revoke @s only matcha:mechanics/chicken/bred_chicken