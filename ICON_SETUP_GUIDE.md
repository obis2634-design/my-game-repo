# 🎨 Setting Detective Icon - Fall Town Detective

Guide to use the detective pixel art image as your app icon for Android and iOS.

---

## 📥 Step 1: Prepare the Image

### Download/Save Your Detective Image
The detective image you provided is perfect! Here's how to prepare it:

1. **Save the image** to your computer as:
   ```
   detective-icon.png
   ```

2. **Image Requirements**:
   - Format: PNG with transparency
   - Minimum size: 1024x1024 pixels
   - Square format (same width and height)
   - The image should have a transparent background

### If Your Image Needs Adjustment
If the image has a purple/watermarked background:
1. Use an online tool: [Remove.bg](https://www.remove.bg)
2. Upload your image
3. Download PNG with transparent background
4. Save as `detective-icon.png`

---

## 🤖 Step 2: Set Icon for Android

### Method A: Using Android Studio (Easiest)

1. **Open Android Studio**
   ```bash
   npm run open:android
   ```

2. **Right-click on App Module**:
   - Left sidebar → Right-click `app`
   - Select **"New"** → **"Image Asset"**

3. **Image Asset Studio Opens**:
   - Under "Icon Type", select **"Launcher Icons"**
   - Click **"..."** next to "Image" path
   - Select your `detective-icon.png`
   - Click **"Open"**

4. **Configure**:
   - Trim: Leave as default
   - Padding: 0 or 10 (your preference)
   - Background: Check "Foreground only" if image has transparency

5. **Click "Next"** then **"Finish"**

6. **Verify**:
   - Android Studio generates all icon sizes
   - Files created in: `android/app/src/main/res/mipmap-*/`
   - Click **"Build"** → **"Rebuild Project"**

7. **Done!** Icon is now set for Android.

### Method B: Manual (Advanced)

If you prefer manually placing files:

1. **Create icon variants** (use online tool like [Android Asset Studio](https://romannurik.github.io/AndroidAssetStudio/)):
   - Generate all needed sizes
   - Download ZIP file

2. **Place in Android folder**:
   ```
   android/app/src/main/res/
   ├── mipmap-hdpi/ic_launcher.png
   ├── mipmap-mdpi/ic_launcher.png
   ├── mipmap-xhdpi/ic_launcher.png
   ├── mipmap-xxhdpi/ic_launcher.png
   └── mipmap-xxxhdpi/ic_launcher.png
   ```

3. **Rebuild in Android Studio**

---

## 🍎 Step 3: Set Icon for iOS

### Method A: Using Xcode (Easiest)

1. **Open Xcode**:
   ```bash
   npm run open:ios
   ```

2. **Select App Assets**:
   - In left sidebar, click **"App"** target
   - Go to **"General"** tab
   - Scroll down to **"App Icons and Launch Screen"**

3. **Set App Icon Set**:
   - Next to "App Icon Set", click the dropdown
   - If no set exists, create one:
     - Click **"Assets"** folder
     - Right-click → **"App Icon Set"**
     - Name it **"AppIcon"**

4. **Add Detective Icon**:
   - In Assets, select **"AppIcon"**
   - Right panel shows different sizes needed
   - Drag your `detective-icon.png` to each size slot
   - Xcode auto-scales them!

5. **Required Sizes** (Xcode shows all):
   - iPhone icon: 180x180, 120x120, etc.
   - iPad icon: 167x167, 152x152, etc.
   - App Store: 1024x1024

6. **Done!** Build and test.

### Method B: Manual (Advanced)

1. **Create all icon sizes**:
   - Use [iOS App Icon Generator](https://www.appicon.co/)
   - Upload your PNG
   - Download ZIP with all sizes

2. **Place in Xcode**:
   - Open `ios/App/App.xcodeproj`
   - In Xcode, open **Assets.xcassets**
   - Right-click → **"App Icon Set"**
   - Drag icons into each slot

3. **Verify**:
   - Select project → **"App"** target
   - **"General"** → **"App Icons and Launch Screen"**
   - Set **"App Icon Set"** to your AppIcon

---

## 🎨 Step 4: Customize App Launch Screen (Optional)

Your detective icon appears when the app starts. You can also customize the splash screen!

### Android Splash Screen

Edit: `android/app/src/main/res/drawable/splash.xml`

```xml
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@color/splash_background" />
    <item>
        <bitmap
            android:src="@drawable/ic_launcher"
            android:gravity="center" />
    </item>
</layer-list>
```

Edit: `android/app/src/main/res/values/colors.xml`

```xml
<color name="splash_background">#1a1a24</color>
```

### iOS Launch Screen

In Xcode:
1. Select project → **"App"** target
2. **"General"** → **"Launch Screen"**
3. Choose **"Storyboard" or "Image"**
4. If Image: Set to your detective icon

---

## ✅ Step 5: Rebuild and Test

### Android
```bash
cd android
./gradlew installDebug
```

Your detective icon should appear:
- On home screen when installed
- In app launcher
- At app startup (splash screen)

### iOS
```bash
# In Xcode
Product → Run
```

Icon appears on:
- Home screen
- App switcher
- App Store listing

---

## 🔍 Verify Icon Set Correctly

### Check Android
1. Connect Android phone or start emulator
2. Look for the app icon on home screen
3. It should show the detective character
4. Tap to launch - verify it works

### Check iOS
1. Connect iPhone or open simulator
2. Look on home screen
3. Icon should be visible
4. Tap to launch - verify

---

## 🎯 Icon Best Practices

✅ **DO:**
- Use square image (same width/height)
- Include transparent PNG
- Test on real devices
- 1024x1024 minimum quality
- Ensure face/important part is centered
- Use consistent branding

❌ **DON'T:**
- Use JPG (use PNG with transparency)
- Crop important details too much
- Use text that's too small to read
- Have solid background (transparency better)
- Forget to rebuild after changes

---

## 🚀 Next Steps

1. **Set icon using Android Studio** ✅
2. **Set icon using Xcode** ✅
3. **Rebuild both platforms** ✅
4. **Test on real devices** ✅
5. **Publish to app stores** ✅

---

## 📱 What Icon Sizes Are Needed?

### Android
```
mipmap-ldpi/ic_launcher.png        (36x36)
mipmap-mdpi/ic_launcher.png        (48x48)
mipmap-hdpi/ic_launcher.png        (72x72)
mipmap-xhdpi/ic_launcher.png       (96x96)
mipmap-xxhdpi/ic_launcher.png      (144x144)
mipmap-xxxhdpi/ic_launcher.png     (192x192)
```

### iOS
```
20x20, 29x29, 40x40, 58x58, 60x60,
76x76, 80x80, 87x87, 114x114, 120x120,
152x152, 167x167, 180x180, 1024x1024
```

**Good news**: Most tools generate all these automatically!

---

## 🐛 Troubleshooting

### Icon Not Showing on Android
1. Check file exists: `android/app/src/main/res/mipmap-*/ic_launcher.png`
2. Run: `./gradlew clean && ./gradlew installDebug`
3. Clear app data: `adb shell pm clear com.falltown.detective`
4. Reinstall app

### Icon Not Showing on iOS
1. In Xcode, verify **"App Icon Set"** is selected
2. Check all required sizes are filled
3. Clean build: **Product** → **Clean Build Folder**
4. Rebuild: **Product** → **Build**

### Icon Looks Blurry
- Image too small (should be 1024x1024 minimum)
- Download icon generator and use high-quality output
- Recreate using [Android Asset Studio](https://romannurik.github.io/AndroidAssetStudio/)

### Icon Has Watermark
1. Use [Remove.bg](https://www.remove.bg) to remove background
2. Or use tool like [Pixlr](https://pixlr.com/editor) to crop watermark

---

## 💡 Pro Tips

### Batch Generate All Sizes
Use these free tools (upload PNG, download all sizes):
- Android: https://romannurik.github.io/AndroidAssetStudio/
- iOS: https://www.appicon.co/
- Both: https://icon.kitchen/

### Test Icon Before Publishing
```bash
# Take screenshot on device showing home screen
adb shell screencap -p /sdcard/screenshot.png
adb pull /sdcard/screenshot.png
```

### Brand Consistency
- Use same detective icon for all platforms
- Matches your itch.io game thumbnail
- Professional and recognizable

---

## ✨ Your App Will Now Have:

✅ Custom detective pixel art icon  
✅ Shows on home screen  
✅ Shows in app switcher  
✅ Shows in Google Play Store  
✅ Shows in Apple App Store  
✅ Professional appearance  
✅ Brand recognition  

---

**Now your app looks professional! 🎮✨**

Next: Publish to app stores using your new icon.
