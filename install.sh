#!/usr/bin/env sh

BIN_DIR="$HOME/.local/bin"
BUILD_APP="./build"
TARGET_NAME="gcc-build"

# Create bin dir if it doesn't exist
mkdir -p "$BIN_DIR"

# Check if build app exists
if [ ! -x "$BUILD_APP" ]; then
    echo "Error: $BUILD_APP is missing or not executable."
    exit 1
fi

# Check if the file EXISTS, if it does move it
if [ -f "$BIN_DIR/$TARGET_NAME" ]; then
    TS=$(date +"%F-%H%M%S")
    mv "$BIN_DIR/$TARGET_NAME" "$BIN_DIR/$TARGET_NAME.bak-$TS"
    echo "Backed up existing config -> $BIN_DIR/$TARGET_NAME.bak-$TS"
fi

cp "$BUILD_APP" "$BIN_DIR/$TARGET_NAME"

echo "Successfully installed to $BIN_DIR/$TARGET_NAME"
