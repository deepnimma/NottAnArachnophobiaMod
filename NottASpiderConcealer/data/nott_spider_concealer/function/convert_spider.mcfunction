# Suppress drops, then replace spider with an orange-themed slime
data merge entity @s {DeathLootTable:"minecraft:empty"}
summon minecraft:slime ~ ~ ~ {Size:1,CustomName:'{"text":"Orange Slime","color":"gold","italic":false}',CustomNameVisible:1b,Tags:["nsc_new"],DeathLootTable:"nott_spider_concealer:spider_drops"}
tag @e[type=minecraft:slime,tag=nsc_new,sort=nearest,limit=1] remove nsc_new
kill @s
