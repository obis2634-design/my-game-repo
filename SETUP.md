# 🔧 Fall Town Detective - Development Setup

Complete guide to set up your development environment for building and testing the game locally.

---

## 📋 Requirements

### Windows / Mac / Linux
- **Node.js** 14+ ([nodejs.org](https://nodejs.org))
- **npm** (comes with Node.js)
- **Git** ([git-scm.com](https://git-scm.com))

### For Android Development
- **Android Studio** ([developer.android.com/studio](https://developer.android.com/studio))
- **Java Development Kit (JDK)** 11+ ([openjdk.java.net](https://openjdk.java.net))
- **Android SDK** API 30+

### For iOS Development (macOS Only)
- **Xcode** (from App Store)
- **macOS** 10.15+
- **CocoaPods** (install via `sudo gem install cocoapods`)

---

## ✅ Quick Start (5 minutes)

### 1. Clone Repository
```bash
git clone https://github.com/obis2634-design/my-game-repo.git
cd my-game-repo
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Create Web Directory
```bash
mkdir -p www
cp index.html www/
```

### 4. Initialize Capacitor
```bash
npx cap init
```

### 5. Add Platforms
```bash
# Android
npx cap add android

# iOS (macOS only)
npx cap add ios
```

### 6. Sync Changes
```bash
npx cap sync
```

---

## 🤖 Android Setup

### Option A: Automated (Recommended)
```bash
bash build-android.sh
```

### Option B: Manual

1. **Open Android Studio**:
   ```bash
   npm run open:android
   ```

2. **Wait for gradle sync** (5-10 minutes)

3. **Select Android Emulator or Physical Device**
   - Emulator: AVD Manager → Create new virtual device
   - Physical: Connect via USB, enable developer mode

4. **Run the App**:
   - Click the green play button
   - Or: `./gradlew installDebug`

### Testing on Physical Android Device
```bash
# Enable USB debugging
# Settings > Developer Options > USB Debugging

# Connect device
adb devices

# Install APK
./gradlew installDebug
```

---

## 🍎 iOS Setup (macOS)

### Option A: Automated (Recommended)
```bash
bash build-ios.sh
```

### Option B: Manual

1. **Open Xcode**:
   ```bash
   npm run open:ios
   ```

2. **Configure Signing** (first time only):
   - Select App target
   - Go to "Signing & Capabilities"
   - Select your team from dropdown
   - Xcode auto-generates certificates

3. **Select Simulator or Device**:
   - Simulator: Xcode → Product → Destination → Select iPhone
   - Device: Connect iPhone via USB

4. **Run the App**:
   - Press Cmd+R
   - Or: Product → Run

### Testing on Physical iPhone
```bash
# 1. Enable developer mode
# Settings > Privacy > Developer Mode > Toggle ON

# 2. Trust developer certificate
# Settings > General > Device Management > Trust

# 3. Select device in Xcode
# Top left: App > App > "Your iPhone"

# 4. Click run button
```

---

## 🌐 Web Testing (No Mobile Needed)

### Run Local Server
```bash
npm install -g http-server
cd www
http-server -p 8080
```

Then open: `http://localhost:8080`

### Mobile Emulation in Browser
1. Open browser DevTools (F12)
2. Press Ctrl+Shift+M (or Cmd+Shift+M)
3. Select device type (iPhone, Android, etc.)
4. Test touch controls with mouse

---

## 📝 Development Workflow

### Making Changes

1. **Edit game code**:
   ```bash
   # Edit index.html
   nano www/index.html
   ```

2. **Sync to mobile**:
   ```bash
   npm run sync
   ```

3. **Rebuild and run**:
   - Android: `./gradlew installDebug` (Android Studio folder)
   - iOS: Press Cmd+R in Xcode

### Hot Reload (Web Only)
```bash
cd www
http-server --cors
```
Refresh browser after changes

---

## 🐛 Debugging

### Android Debug
```bash
# View logs
adb logcat

# Debug JavaScript console
# Use Chrome DevTools: chrome://inspect
```

### iOS Debug
```bash
# View console in Xcode
# Or: Safari > Develop > [Your Device] > index.html
```

### Common Issues

**"Android SDK not found"**
```bash
# Set ANDROID_SDK_ROOT
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools
```

**"Xcode not found" (macOS)**
```bash
sudo xcode-select --install
```

**"Gradle sync fails"**
```bash
cd android
./gradlew clean
./gradlew sync
```

**Port already in use**
```bash
# Kill process on port 8080
lsof -ti:8080 | xargs kill -9
```

---

## 📦 Build Sizes

- **APK (Android)**: ~15-20 MB
- **IPA (iOS)**: ~20-25 MB
- **Web (HTML5)**: ~50 KB

---

## 🚀 Ready to Deploy?

See [PUBLISH.md](./PUBLISH.md) for publishing to Google Play Store and Apple App Store.

---

## 💡 Tips

- Always test on real device before publishing
- Test on multiple screen sizes
- Test touch controls on actual phone
- Use browser DevTools for quick web testing
- Keep npm packages updated: `npm update`
- Backup your signing keystore (Android)

---

**Need help?** Check the [Capacitor docs](https://capacitorjs.com/docs)
