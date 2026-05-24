# 🎮 Fall Town Detective - Publishing Guide

Complete step-by-step guide to publish your game on Google Play Store and Apple App Store.

---

## 🔧 Prerequisites

- Node.js 14+ and npm installed
- Xcode installed (for iOS, macOS required)
- Android Studio installed (for Android)
- Java Development Kit (JDK) 11+

---

## 📱 ANDROID - Google Play Store

### Step 1: Create Google Play Developer Account
1. Go to [play.google.com/console](https://play.google.com/console)
2. Click "Create account"
3. Pay one-time registration fee ($25 USD)
4. Complete developer profile

### Step 2: Generate Signing Key
```bash
# Navigate to android folder
cd android/app

# Generate keystore (one-time, keep it safe!)
keytool -genkey -v -keystore release.keystore -keyalg RSA -keysize 2048 -validity 10000 -alias fall-town-key
```

**Important**: Save the keystore password and alias password securely!

### Step 3: Configure Signing in Gradle

Edit `android/app/build.gradle`:

```gradle
android {
    signingConfigs {
        release {
            storeFile file('release.keystore')
            storePassword 'YOUR_KEYSTORE_PASSWORD'
            keyAlias 'fall-town-key'
            keyPassword 'YOUR_KEY_PASSWORD'
        }
    }
    buildTypes {
        release {
            signingConfig signingConfigs.release
        }
    }
}
```

### Step 4: Build Release AAB (App Bundle)

```bash
cd android
./gradlew bundleRelease
```

Output: `android/app/build/outputs/bundle/release/app-release.aab`

### Step 5: Create App on Play Console
1. Go to Google Play Console
2. Click "Create app"
3. Fill in app details:
   - App name: "Fall Town Detective"
   - Category: "Games" → "Action"
   - Rating: "Mature 17+" (mystery/detective themes)

### Step 6: Upload and Configure
1. **App Bundle**: Upload `app-release.aab`
2. **Store Listing**:
   - Title: "Fall Town Detective - Mystery RPG"
   - Short description: "A 100-level detective mystery game with customizable characters and puzzle-solving gameplay"
   - Full description:
     ```
     Fall Town Detective RPG: You are a disgraced detective exiled to a mysterious town.
     
     Features:
     • 100 unique cases to solve
     • Character customization (gender, appearance, outfit)
     • Dynamic dialogue system
     • Cipher and puzzle challenges
     • Anime-inspired pixel art aesthetic
     • Offline gameplay - no internet required
     • Mobile-optimized touch controls
     
     Solve mysteries, uncover secrets, and find your missing partner in this immersive detective experience.
     ```
   - Screenshots: Capture 4-8 gameplay screenshots
   - Preview video: (optional but recommended) 30-second gameplay trailer

3. **Content Rating**: Complete questionnaire
   - Violence: Mild (detective mysteries)
   - Suggestive Themes: None

4. **Pricing**: Free or paid (recommended: Free with optional ads)

5. **Privacy Policy**: Create at [privacypolicygenerator.info](https://www.privacypolicygenerator.info/)
   - Statement: "This app does not collect personal data"
   - Add URL to your privacy policy

### Step 7: Submit for Review
1. Click "Submit for review"
2. Wait 7 days (typical)
3. App goes LIVE on Google Play Store!

---

## 🍎 iOS - Apple App Store

### Step 1: Create Apple Developer Account
1. Go to [developer.apple.com](https://developer.apple.com)
2. Click "Account"
3. Enroll in "Apple Developer Program" ($99/year)
4. Accept agreements
5. Complete tax and banking info

### Step 2: Create App ID and Certificates
1. Open Xcode → Preferences → Accounts
2. Add your Apple ID
3. Go to "Signing & Capabilities"
4. Select team and create provisioning profile
5. Xcode auto-generates certificates

### Step 3: Configure Bundle ID

Edit `ios/App/App.xcodeproj/project.pbxproj`:
```
BUNDLE_IDENTIFIER = com.falltown.detective
PRODUCT_NAME = "Fall Town Detective"
```

### Step 4: Set App Icons

1. Prepare icon images:
   - 1024x1024 PNG (required)
   - Add to `ios/App/App/Assets.xcassets/AppIcon.appiconset/`

2. Set in Xcode:
   - Select App target → General → App Icons and Launch Screen
   - Select asset catalog

### Step 5: Build Archive in Xcode

```bash
# Open in Xcode
open ios/App/App.xcworkspace
```

In Xcode:
1. Select scheme: "App"
2. Select device: "Any iOS Device (arm64)"
3. Product → Archive
4. Click "Validate App"
5. Click "Distribute App"
6. Select "App Store Connect"
7. Upload

### Step 6: Create App on App Store Connect

1. Go to [appstoreconnect.apple.com](https://appstoreconnect.apple.com)
2. Click "My Apps"
3. Click "+" → "New App"
4. Fill in:
   - Platform: iOS
   - App Name: "Fall Town Detective"
   - Primary Language: English
   - Bundle ID: com.falltown.detective
   - SKU: FALLTOWNDETECTIVE

### Step 7: Configure App Details

1. **App Information**:
   - Subtitle: "Mystery & Detective RPG"
   - Category: Games → Action
   - Age Rating: 17+ (mild violence, some suggestive themes)

2. **Screenshots**:
   - Capture 2-5 iPhone screenshots
   - Add captions highlighting features
   - File format: PNG, 1242x2208px

3. **App Preview**:
   - 15-30 second gameplay video
   - Format: MP4, max 500MB

4. **Description**:
   ```
   You are a disgraced detective exiled to Fall Town. Your partner vanished here years ago. Now, a wave of mysterious thefts and gruesome murders plague the foggy streets.
   
   Solve 100 unique cases, customize your character, and uncover the truth in this immersive detective mystery RPG.
   
   Features:
   • 100 handcrafted mystery cases
   • Character customization system
   • Dynamic dialogue & branching narrative
   • Puzzle-solving challenges
   • Offline gameplay
   • Anime-inspired art style
   • Smooth mobile touch controls
   ```

5. **Keywords**: mystery, detective, rpg, puzzle, anime, game

6. **Privacy**:
   - Privacy Policy URL: [Link to your privacy policy]
   - Data collected: None (check "We do not collect user data")

7. **Support URL**: [Link to your GitHub repo or website]

### Step 8: Pricing & Availability

1. Price: Free (recommended)
2. Availability: Select all countries
3. Auto-release: "When approved by Apple"

### Step 9: Submit for Review

1. Build Version: Select your uploaded archive
2. Review Information:
   - Demo Account: Not needed
   - Notes: "A single-player detective mystery game, no user-generated content"
3. Version Release:
   - Select "Automatically release this version"
4. Click "Submit for Review"
5. Wait 24-48 hours
6. App goes LIVE on App Store!

---

## 📊 After Publishing

### Analytics & Monitoring
- **Google Play Console**: View downloads, ratings, crash logs
- **App Store Connect**: View downloads, crashes, user reviews
- **Monitor user feedback**: Respond to reviews promptly

### Updates
```bash
# Make changes to index.html
# Then rebuild and republish
npm run build:all

# For Android:
./gradlew bundleRelease

# For iOS:
# Archive in Xcode and upload new version
```

### Version Updates
1. Update `package.json` version
2. Build new APK/IPA
3. Upload to respective store
4. Submit for review (faster for updates: 1-2 days)

---

## 💰 Monetization Options

### Option 1: Free + Ads
```javascript
// Add AdMob to index.html
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
```

### Option 2: Paid App
- Set price in store (minimum $0.99)
- Higher conversion rate, lower volume

### Option 3: In-App Purchases
- Cosmetic items (character skins)
- Premium hints/walkthrough
- Ad removal

---

## 🚀 Launch Checklist

- [ ] App name and icon finalized
- [ ] All 100 levels tested on phone
- [ ] Screenshots taken and formatted
- [ ] Description and keywords written
- [ ] Privacy policy created
- [ ] Signing key/certificate generated
- [ ] Release build successful
- [ ] App uploaded to store
- [ ] Review submitted
- [ ] Monitoring enabled after launch

---

## 📞 Support

If you encounter issues:
1. Check Capacitor docs: [capacitorjs.com](https://capacitorjs.com)
2. Google Play Support: [support.google.com/googleplay](https://support.google.com/googleplay)
3. Apple Developer Support: [developer.apple.com/support](https://developer.apple.com/support)

---

**Good luck with your launch! 🎮✨**
