# Scheduled by nott_arachnophobia:test — do not call directly
execute if entity @e[type=minecraft:spider,tag=nac_test_spider] \
  run tellraw @a [{"text":"[FAIL] ","color":"red"},{"text":"Spider was NOT removed by tick function","color":"white"}]
execute unless entity @e[type=minecraft:spider,tag=nac_test_spider] \
  run tellraw @a [{"text":"[PASS] ","color":"green"},{"text":"Spider removed correctly","color":"white"}]

execute if entity @e[type=minecraft:cave_spider,tag=nac_test_cave_spider] \
  run tellraw @a [{"text":"[FAIL] ","color":"red"},{"text":"Cave spider was NOT removed by tick function","color":"white"}]
execute unless entity @e[type=minecraft:cave_spider,tag=nac_test_cave_spider] \
  run tellraw @a [{"text":"[PASS] ","color":"green"},{"text":"Cave spider removed correctly","color":"white"}]
