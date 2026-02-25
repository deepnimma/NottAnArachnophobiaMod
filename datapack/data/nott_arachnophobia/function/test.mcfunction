# Run with: /function nott_arachnophobia:test
# Summons test spiders and checks they are removed within 2 ticks.
tellraw @a [{"text":"[NottAnArachnophobia] ","color":"dark_red"},{"text":"Running tests...","color":"yellow"}]
summon minecraft:spider ~ ~ ~ {Tags:["nac_test_spider"]}
summon minecraft:cave_spider ~ ~ ~ {Tags:["nac_test_cave_spider"]}
schedule function nott_arachnophobia:test_check 2t
