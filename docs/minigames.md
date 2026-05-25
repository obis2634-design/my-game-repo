# Fall Town Detective Game – Minigame Design & Integration

To maintain variety, engagement, and replay value across 100 levels, Fall Town features a rotating selection of puzzle and logic games. Each case/level can be built around one or more of the following minigames:

## Minigame Types

### 1. Find the Picture / Hidden Object
- **Premise:** Players must find specific clues hidden within AI-generated background images (e.g., murder weapon in a messy office).
- **How to Integrate:** Store clue coordinates in the level script for logic checks.

### 2. Jigsaw Puzzle
- **Premise:** Piece together a scrambled crime scene photo, map segment, or confidential memo. Solving unlocks new evidence.
- **How to Integrate:** `mini_games/jigsaw.ts` takes in the image and segments it for the puzzle.

### 3. Matching Game
- **Premise:** Match evidence to suspects, timelines, or alibis. (e.g., drag fingerprints to correct suspect).

### 4. Story Quiz / Dialogue Quiz
- **Premise:** Choose answers in a multi-branch dialogue, sometimes based on memory of prior facts/clues. Failure means missing a lead.
- **How to Integrate:** Plug quiz questions into level data; link to key story choices.

### 5. Logic/Forensics Puzzles
- **Premise:** Solve a classic deduction puzzle (logic grid, sequence ordering, DNA pairings, etc.). Used for forensics or interrogations.

### 6. Spot the Difference
- **Premise:** Compare two photos (or witness statements) and mark the inconsistencies.

### 7. Timed Puzzle Events
- **Premise:** During high-pressure moments (bomb countdowns, chases), solve simple puzzles quickly.

---

## How to Add a Minigame to a Level

1. Import the game module in your level script (`level_XX.ts`).
2. Configure the required assets (images, prompts).
3. Set success/fail conditions (to impact story, trust stats, next case or evidence unlocks).

Example:
```typescript
// level_01.ts
import { runJigsawPuzzle } from '../mini_games/jigsaw';

export function playLevel01(context) {
  const result = runJigsawPuzzle({
    image: 'assets/maps/fall_town_map.png',
    pieces: 24,
  });
  return result.success ? 'advance' : 'retry';
}
```

---

## Level Design Planning
- Alternate minigame types: e.g. Every 5th level is a jigsaw, every 4th is a quiz, randomize find/matching for others.
- Allow for combining mini-games (start with a quiz, unlock hidden object scene if passed).

Add your own minigame ideas below this line!

---
