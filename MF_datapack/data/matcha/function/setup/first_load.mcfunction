#add a scoreboard for the first load
scoreboard objectives add gamerules dummy

# Set required Gamerules if they have not been set before
execute unless score gamerules_setup gamerules matches 1 run function matcha:setup/gamerules

# Confirm that gamerules have been set
scoreboard players set gamerules_setup gamerules 1