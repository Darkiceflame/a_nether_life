execute at @a[tag=!nstart] as @a[tag=!nstart] in minecraft:the_nether run tp @s ~ ~ ~
execute at @a[tag=!nstart] as @a[tag=!nstart] in minecraft:the_nether run spreadplayers ~ ~ 1 100 under 120 false @s
execute at @a[tag=!nstart] as @a[tag=!nstart] in minecraft:the_nether run spawnpoint
execute at @a[tag=!nstart] as @a[tag=!nstart] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:obsidian
effect give @a[tag=!nstart] minecraft:resistance 60 5 false
effect give @a[tag=!nstart] minecraft:fire_resistance 60 0 false
effect give @a[tag=!nstart] minecraft:invisibility 60 5 false
give @a[tag=!nstart] minecraft:wooden_pickaxe{display:{Name:'{"text":"Old Reliable","color":"aqua","italic":false}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}
tag @a add nstart

#SHORTER GHAST RANGE
#execute as @e[type=ghast] run data merge entity @s {Attributes:[{Name:generic.followRange,Base:50}]}

#CAMPFIRES START UNLIT
replaceitem entity @a[nbt={SelectedItem:{id:"minecraft:campfire"}}] weapon.mainhand minecraft:campfire{BlockStateTag:{lit:"false"}}
replaceitem entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:campfire"}]}] weapon.offhand minecraft:campfire{BlockStateTag:{lit:"false"}}

replaceitem entity @a[nbt={SelectedItem:{id:"minecraft:soul_campfire"}}] weapon.mainhand minecraft:soul_campfire{BlockStateTag:{lit:"false"}}
replaceitem entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_campfire"}]}] weapon.offhand minecraft:soul_campfire{BlockStateTag:{lit:"false"}}

#ZOMBIFIED PIGLINS ARE CALLED ZOMBIE PIGLINS
execute as @e[type=zombified_piglin] run data merge entity @s {CustomNameVisible:0b,CustomName:'{"text":"Zombie Piglin"}'}