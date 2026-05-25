# Fall Town Detective Game – Code & Content Skeleton

This document outlines the files and folders you’ll build to structure a 100-level detective game.

## Core Folders
- `src/` – Game source code
    - `levels/` – Per-level scripts/data
    - `engine/` – Game systems (interrogation, memory flashbacks, partner logic)
    - `characters/` – NPC, Partner X, and Tailor logic/scripts
- `assets/` – Art, audio, fonts, etc.
- `docs/` – Design documents, character bios, NPC samples

## Essential Files
- `src/main.ts` – Game entry point
- `src/engine/sceneManager.ts` – Manages camera/scenes
- `src/levels/level_01.ts` … `level_100.ts` – Level scripts
- `src/characters/partnerX.ts` – Fully customizable partner character
- `src/characters/tailor.ts` – Serial killer logic

## Example Code Stub
```typescript
// src/characters/partnerX.ts
export interface PartnerX {
  name: string;
  role: 'Detective' | 'Forensics Tech' | 'Undercover Handler' | string;
  personality: 'Guardian' | 'Skeptic' | 'Wound-and-Wit' | 'Idealist';
  secret: 'Survivor' | 'Family' | 'Target';
  trust: number;

  reactToEvidence(evidence: string): string;
  onBetrayal(): void;
}
```

---

## Next Steps
1. **Implement the Partner X logic and trust system in `characters/partnerX.ts`**
2. **Draft Level 1 script in `levels/level_01.ts`**
3. **Expand `/docs/npc_samples.md` with NPCs and dialogue**
