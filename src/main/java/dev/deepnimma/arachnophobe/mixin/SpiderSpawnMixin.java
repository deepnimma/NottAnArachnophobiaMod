package dev.deepnimma.arachnophobe.mixin;

import net.minecraft.entity.SpawnReason;
import net.minecraft.entity.mob.SpiderEntity;
import net.minecraft.world.WorldAccess;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

// Targets SpiderEntity, which CaveSpiderEntity extends — covers both types.
@Mixin(SpiderEntity.class)
public class SpiderSpawnMixin {
    @Inject(method = "canSpawn(Lnet/minecraft/world/WorldAccess;Lnet/minecraft/entity/SpawnReason;)Z",
            at = @At("HEAD"), cancellable = true)
    private void preventSpawn(WorldAccess world, SpawnReason reason, CallbackInfoReturnable<Boolean> cir) {
        cir.setReturnValue(false);
    }
}
