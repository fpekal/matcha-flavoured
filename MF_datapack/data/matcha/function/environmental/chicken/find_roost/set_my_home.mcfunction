#Make sure I don't wander too from from my home
data merge entity @s {home_radius:11}
#Sets Home position to current position
data modify entity @s home_pos set from entity @s Pos
#Now I have a home, don't run this function on me again
tag @s add has_home
#Should I also remove the wild tag? I added this tag so that we wouldn't have to check nbt data (chicken variant)