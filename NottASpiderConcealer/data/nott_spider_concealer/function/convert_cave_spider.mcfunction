# Suppress drops, then replace cave spider with a blue-themed magma cube
data merge entity @s {DeathLootTable:"minecraft:empty"}
summon minecraft:magma_cube ~ ~ ~ {Size:1,CustomName:'{"text":"Blue Slime","color":"blue","italic":false}',CustomNameVisible:1b,Tags:["nsc_new"],DeathLootTable:"nott_spider_concealer:spider_drops"}
tag @e[type=minecraft:magma_cube,tag=nsc_new,sort=nearest,limit=1] remove nsc_new
kill @s
