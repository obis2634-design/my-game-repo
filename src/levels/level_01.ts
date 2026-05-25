// Level 01: Tutorial – Find the Picture
// This level teaches the player how to interact with hidden object games and basic investigation logic.

import { runHiddenObjectGame } from '../mini_games/hidden_object';

export function playLevel01(context) {
  // Points to an image asset and an array of coordinate regions for clues
  return runHiddenObjectGame({
    image: 'assets/backgrounds/diner_evening.png',
    clues: [
      { name: 'Bloody Napkin', x: 142, y: 70, width: 24, height: 18 },
      { name: 'Keychain', x: 40, y: 165, width: 16, height: 12 },
      { name: 'Black Thread', x: 200, y: 199, width: 11, height: 12 }
    ]
  });
}

// Success/failure could impact trust with Partner, unlock clues, etc.