# NottAnArachnophobiaMod

Minecraft 1.21.1 datapacks for players who don't want spiders in their world.
Two datapacks are available — install **one**, not both.

## Table of Contents

- [Datapacks](#datapacks)
  - [NottAnArachnophobia (remove)](#nottanarachnophobia-remove)
  - [NottASpiderConcealer (replace)](#nottaspiderconcealer-replace)
- [Installation](#installation)
  - [Datapack](#datapack)
  - [Resource pack](#resource-pack-nottaspiderconcealer-only)
- [In-game Testing](#in-game-testing)
- [Compatibility](#compatibility)
- [Releasing](#releasing)

---

## Datapacks

### NottAnArachnophobia *(remove)*
Completely removes spiders and cave spiders. Their drops (string, spider eye) are redistributed to other mobs so nothing becomes unobtainable.

| Original drop | New source |
|---|---|
| String | Skeleton (0–1 + looting), Stray (0–1 + looting) |
| Spider Eye | Bat (0–1 on player kill + looting) — Witches already drop spider eyes in vanilla |

### NottASpiderConcealer *(replace)*
Converts spiders into themed slime variants instead of removing them. Pair with the matching resource pack for full visual effect.

| Spider | Replaced by | Resource pack color |
|---|---|---|
| Spider | Slime (medium) | Orange body |
| Cave Spider | Magma Cube (medium) | Blue body |

Without the resource pack, entity names ("Orange Slime" / "Blue Slime") still distinguish the two types.

> **Note:** Magma cubes deal fire damage on contact and drop magma cream. Slimes drop slime balls. Gameplay is intentionally different from the original spider drops.

---

## Installation

### Datapack
1. Download the `.zip` from the [latest release](../../releases/latest).
2. Place the `.zip` directly into `<your-world>/datapacks/`.
3. Run `/reload` in-game (or restart the server).
4. You should see a confirmation message in chat.

### Resource pack (NottASpiderConcealer only)
1. Download `NottASpiderConcealer-RP-<version>.zip` from the release.
2. Place it in your Minecraft `resourcepacks/` folder.
3. Enable it in **Options → Resource Packs** — it must sit **above** the Default pack.

---

## In-game Testing

Each datapack ships a test function you can run in-game with operator permissions:

```
/function nott_arachnophobia:test
/function nott_spider_concealer:test
```

These summon test spiders nearby, wait 2 ticks, then report PASS/FAIL and clean up.

---

## Compatibility

| Item | Version |
|---|---|
| Minecraft Java Edition | 1.21 – 1.21.1 |
| Datapack format | 48 |
| Resource pack format | 34 |

---

## Releasing

Tag a commit on `master` with a `v`-prefixed version (e.g. `v1.0.0`). GitHub Actions will automatically package all datapacks and create a release.

```bash
git tag v1.0.0
git push origin v1.0.0
```

Release assets:
- `NottAnArachnophobia-<tag>.zip`
- `NottASpiderConcealer-<tag>.zip`
- `NottASpiderConcealer-RP-<tag>.zip`
# NottAnArachnophobiaMod
