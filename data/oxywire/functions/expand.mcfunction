# If the days saved is lower then the actual day count,
# add a day to our data and restart border expansion for the day
execute if score .days daysaved > .days daycount run scoreboard players add .days daycount 1

# set our score to the actual day count
execute store result score .days daysaved run time query day


# check what day it is

execute if score .days daysaved > .days daycount in minecraft:overworld run worldborder add 2

execute if score .days daysaved > .days daycount run title @a title ["",{"text":"Day ","color":"gold"},{"score":{"name":".days","objective":"daysaved"},"color":"gold"}]
execute if score .days daysaved > .days daycount run title @a subtitle {"text":"Rise and shine..."}