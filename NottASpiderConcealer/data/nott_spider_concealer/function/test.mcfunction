# Run with: /function nott_spider_concealer:test
# Summons test spiders, waits 2 ticks, verifies they were converted.
tellraw @a [{"text":"[NottASpiderConcealer] ","color":"dark_purple"},{"text":"Running tests...","color":"yellow"}]
summon minecraft:spider ~ ~ ~ {Tags:["nsc_test_spider"]}
summon minecraft:cave_spider ~ ~ ~ {Tags:["nsc_test_cave_spider"]}
schedule function nott_spider_concealer:test_check 2t
