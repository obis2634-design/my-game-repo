#!/bin/bash

# Fall Town Detective RPG - Android Build Script
# This script prepares and builds the Android app using Capacitor

set -e

echo "==================================="
echo "Fall Town Detective - Android Build"
echo "==================================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm first."
    exit 1
fi

echo "📦 Installing dependencies..."
npm install

echo "🏗️ Creating www directory and copying index.html..."
mkdir -p www
cp index.html www/

echo "🔄 Syncing Capacitor..."
npx cap sync android

echo "✅ Android project is ready!"
echo ""
echo "📱 Next steps:"
echo "1. Option A (Automated): Run 'npm run open:android' to open Android Studio"
echo "2. Option B (Manual): Open 'android' folder in Android Studio"
echo ""
echo "🔨 Build in Android Studio:"
echo "   - Click 'Build' > 'Build Bundle(s) / APK(s)' > 'Build APK(s)'"
echo "   - Or use Gradle: ./gradlew assembleDebug"
echo ""
echo "📤 Generate Release APK:"
echo "   - Build > Generate Signed Bundle / APK"
echo "   - Follow the wizard to sign with your keystore"
echo ""
echo "🎯 To publish to Play Store:"
echo "   1. Build a signed AAB (Android App Bundle)"
echo "   2. Go to https://play.google.com/console"
echo "   3. Create new app and upload AAB"
echo "   4. Fill in store listing details"
echo "   5. Submit for review"
