# Set traversal to 1
# Reset in stopwatches.mcfunction
# OnGround nbt is enforced so that the reset occurs even while sprint jumping

scoreboard players set @s[nbt={OnGround:true}] traversal 1

