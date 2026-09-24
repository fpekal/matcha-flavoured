data merge entity @s {InLove:0}
data merge entity @s {EggLayTime:0}
#Play clucking sound if fed
execute if data entity @s {variant:"minecraft:temperate"} run playsound minecraft:entity.chicken.ambient neutral @a ~ ~ ~
execute if data entity @s {variant:"matcha:bobwhite"} run playsound matcha:entity.bobwhite.ambient neutral @a ~ ~ ~