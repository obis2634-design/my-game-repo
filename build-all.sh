#!/bin/bash

# Fall Town Detective RPG - Complete Build Script
# Builds both Android and iOS apps in one command

set -e

echo "=========================================="
echo "Fall Town Detective - Complete Build"
echo "=========================================="

# Check prerequisites
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed."
    exit 1
fi

echo "📦 Installing dependencies..."
npm install

echo "🏗️ Creating www directory and copying index.html..."
mkdir -p www
cp index.html www/

echo "🔄 Running initial sync..."
npx cap sync

echo ""
echo "========== ANDROID BUILD =========="
echo "🤖 Preparing Android project..."
npx cap sync android
echo "✅ Android project ready at: ./android"
echo "   Run: npm run open:android"

echo ""
echo "=========== iOS BUILD ==========="
echo "🍎 Preparing iOS project..."
npx cap sync ios
echo "✅ iOS project ready at: ./ios"
echo "   Run: npm run open:ios"

echo ""
echo "=========================================="
echo "✨ All projects are ready for building!"
echo "=========================================="
echo ""
echo "📱 Available Commands:"
echo "   npm run open:android    - Open Android Studio"
echo "   npm run open:ios        - Open Xcode"
echo "   npm run sync            - Sync all platforms"
echo "   npm run build:all       - Rebuild all (this script)"
echo ""
