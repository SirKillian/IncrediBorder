# Setting the worldspawn to x0 z0
setworldspawn 0 62 0
gamerule spawnRadius 0

# Init day counter
scoreboard objectives add daycount dummy
scoreboard objectives add daysaved dummy
scoreboard players add .days daysaved 0
scoreboard players add .days daycount 0

# Setting the worldborder to where the player spawned.
worldborder center ~.5 ~.5
worldborder set 15

 
execute as @a[tag=!daysplayer] run tag @s add daysplayer