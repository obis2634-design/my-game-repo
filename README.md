# 🎮 Fall Town Detective - Mystery RPG

A 100-level anime-inspired detective mystery game built with vanilla JavaScript and HTML5 Canvas. Fully offline, runs on any browser, and deployable to iOS and Android.

![Game Preview](https://img.shields.io/badge/Levels-100-blue) ![Platform](https://img.shields.io/badge/Platform-Web%20%7C%20iOS%20%7C%20Android-green) ![License](https://img.shields.io/badge/License-MIT-yellow)

---

## ✨ Features

- 🎨 **100 Unique Cases** - Procedurally generated detective mysteries
- 👥 **Character Customization** - Customize protagonist and love interest
- 💬 **Dynamic Dialogue System** - NPCs with personality-driven conversations
- 🧩 **Puzzle Mechanics** - Cipher locks, riddles, and mystery challenges
- 📱 **Mobile Optimized** - Touch-based controls, responsive design
- 🎯 **Offline Gameplay** - No internet required
- 🎨 **Pixel Art Aesthetic** - Retro anime-inspired visuals
- ⚡ **Zero Dependencies** - Pure vanilla JavaScript

---

## 🚀 Quick Start

### Web Browser (Instant)
```bash
# Clone and open in browser
git clone https://github.com/obis2634-design/my-game-repo.git
cd my-game-repo
# Open index.html in any browser
```

### Mobile App (iOS/Android)

**Prerequisites**: Node.js, npm, Android Studio (Android) or Xcode (iOS)

```bash
# Setup
bash build-all.sh

# Android
npm run open:android

# iOS
npm run open:ios
```

---

## 📖 Gameplay

1. **Customize Your Detective** - Choose gender, appearance, outfit
2. **Meet Your Partner** - Customize the love interest's name and archetype
3. **Solve Cases** - Navigate to NPCs and crime scenes
4. **Answer Puzzles** - Crack codes, solve riddles, find evidence
5. **Progress** - Advance through 100 cases to the final showdown
6. **Discover Secrets** - Find hidden Easter eggs around town

### Level Structure
- **Odd Levels (1, 3, 5...)**: Heist & theft mysteries
- **Even Levels (2, 4, 6...)**: Homicide & murder cases
- **Level 100**: Final boss encounter

---

## 🎮 Controls

### Mobile (Touch)
- **Tap and hold** anywhere to move your character
- **Tap NPCs** to start dialogue
- **Input answers** in puzzle prompts

### Desktop (Mouse)
- **Click and hold** to move
- **Click dialogue button** to advance

---

## 🔧 Development

### Project Structure
```
my-game-repo/
├── index.html          # Main game file (single-file app)
├── package.json        # Dependencies
├── capacitor.json      # Mobile platform config
├── build-all.sh        # Complete build script
├── build-android.sh    # Android-specific build
├── build-ios.sh        # iOS-specific build
├── SETUP.md            # Development setup guide
├── PUBLISH.md          # Publishing to app stores
└── README.md           # This file
```

### Local Testing
```bash
# Web server
npm install -g http-server
cd www && http-server

# Or use npm
npm run dev
```

### Make Changes
```bash
# Edit index.html or create new files
# Copy to www/ directory
cp index.html www/

# Sync to mobile
npm run sync
```

See [SETUP.md](./SETUP.md) for detailed development guide.

---

## 📱 Publishing

### Google Play Store (Android)
1. Create [Google Play Developer](https://play.google.com/console) account ($25)
2. Build release APK: `./gradlew bundleRelease`
3. Upload AAB to Play Console
4. Submit for review (7 days)

### Apple App Store (iOS)
1. Enroll in [Apple Developer Program](https://developer.apple.com) ($99/year)
2. Archive in Xcode: `Product > Archive`
3. Upload via App Store Connect
4. Submit for review (24-48 hours)

See [PUBLISH.md](./PUBLISH.md) for complete publishing guide.

---

## 🛠️ Technology Stack

- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **Graphics**: Canvas 2D
- **Framework**: Capacitor (for native mobile)
- **Build Tools**: Gradle (Android), Xcode (iOS)
- **Package Manager**: npm

---

## 📊 Game Stats

| Metric | Value |
|--------|-------|
| Total Levels | 100 |
| Customization Options | 20+ |
| Dialogue Lines | 200+ |
| File Size (Web) | 50 KB |
| APK Size (Android) | ~15 MB |
| IPA Size (iOS) | ~20 MB |
| Supported Devices | iPhone 11+, Android 6+ |

---

## 🎯 Roadmap

- [x] Core gameplay loop
- [x] Character customization
- [x] Dialogue system
- [x] Puzzle mechanics
- [x] 100 levels
- [ ] Multiplayer mode
- [ ] In-app achievements
- [ ] Leaderboards
- [ ] Additional languages

---

## 📝 License

MIT License - Feel free to use, modify, and distribute.

---

## 👨‍💻 Created by

**obis2634-design** - [GitHub](https://github.com/obis2634-design)

---

## 💬 Support

Questions? Issues? 
- Open an [issue](https://github.com/obis2634-design/my-game-repo/issues)
- Check [SETUP.md](./SETUP.md) for troubleshooting
- Visit [Capacitor Docs](https://capacitorjs.com)

---

**Ready to solve mysteries? Download Fall Town Detective today!** 🕵️‍♂️✨
