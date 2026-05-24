#!/bin/bash

# Fall Town Detective RPG - iOS Build Script
# This script prepares and builds the iOS app using Capacitor

set -e

echo "================================"
echo "Fall Town Detective - iOS Build"
echo "================================"

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

# Check if Xcode is installed
if ! command -v xcode-select &> /dev/null; then
    echo "❌ Xcode is not installed. Please install Xcode from App Store first."
    exit 1
fi

echo "📦 Installing dependencies..."
npm install

echo "🏗️ Creating www directory and copying index.html..."
mkdir -p www
cp index.html www/

echo "🔄 Syncing Capacitor..."
npx cap sync ios

echo "✅ iOS project is ready!"
echo ""
echo "📱 Next steps:"
echo "1. Option A (Automated): Run 'npm run open:ios' to open Xcode"
echo "2. Option B (Manual): Open 'ios/App/App.xcworkspace' in Xcode"
echo ""
echo "🔨 Build in Xcode:"
echo "   - Select 'App' scheme"
echo "   - Select your target device or simulator"
echo "   - Press Cmd+B to build"
echo ""
echo "📤 Generate Release Build:"
echo "   - Select 'Product' > 'Scheme' > 'Edit Scheme'"
echo "   - Change to 'Release' configuration"
echo "   - Select 'Product' > 'Archive'"
echo "   - Click 'Distribute App'"
echo ""
echo "🎯 To publish to App Store:"
echo "   1. Create Apple Developer account at https://developer.apple.com"
echo "   2. Create App ID and provisioning profiles"
echo "   3. Archive the app in Xcode"
echo "   4. Use App Store Connect (https://appstoreconnect.apple.com)"
echo "   5. Upload build and submit for review"
echo ""
echo "💡 Pro Tips:"
echo "   - Update bundle identifier: FallTownDetective"
echo "   - Set deployment target to iOS 13.0+"
echo "   - Configure signing & capabilities with your team ID"
