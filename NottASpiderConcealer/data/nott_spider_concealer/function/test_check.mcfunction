# Scheduled by nott_spider_concealer:test — do not call directly
execute if entity @e[type=minecraft:spider,tag=nsc_test_spider] \
  run tellraw @a [{"text":"[FAIL] ","color":"red"},{"text":"Spider was NOT converted","color":"white"}]
execute unless entity @e[type=minecraft:spider,tag=nsc_test_spider] \
  run tellraw @a [{"text":"[PASS] ","color":"green"},{"text":"Spider converted to slime correctly","color":"white"}]

execute if entity @e[type=minecraft:cave_spider,tag=nsc_test_cave_spider] \
  run tellraw @a [{"text":"[FAIL] ","color":"red"},{"text":"Cave spider was NOT converted","color":"white"}]
execute unless entity @e[type=minecraft:cave_spider,tag=nsc_test_cave_spider] \
  run tellraw @a [{"text":"[PASS] ","color":"green"},{"text":"Cave spider converted to magma cube correctly","color":"white"}]

# Clean up any spawned replacements near the test origin
kill @e[type=minecraft:slime,tag=!nsc_new,distance=..3]
kill @e[type=minecraft:magma_cube,tag=!nsc_new,distance=..3]
