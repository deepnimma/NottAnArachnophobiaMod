package dev.deepnimma.arachnophobe;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.event.lifecycle.v1.ServerTickEvents;
import net.minecraft.entity.EntityType;
import net.minecraft.server.world.ServerWorld;

public class ArachnophobeMod implements ModInitializer {
    public static final String MOD_ID = "arachnophobe";

    @Override
    public void onInitialize() {
        // Fallback for spawner blocks and spawn eggs — the SpiderSpawnMixin handles
        // natural spawning before entity creation, but spawners bypass canSpawn().
        ServerTickEvents.END_WORLD_TICK.register(this::removeSpiders);
    }

    private void removeSpiders(ServerWorld world) {
        world.getEntitiesByType(EntityType.SPIDER, e -> true).forEach(e -> e.discard());
        world.getEntitiesByType(EntityType.CAVE_SPIDER, e -> true).forEach(e -> e.discard());
    }
}
