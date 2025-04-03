# Flutter Installation Guide for Windows

This guide outlines the steps to install Flutter SDK on Windows, as required for the VIA app development.

## System Requirements
- Operating System: Windows 10 or later (64-bit)
- Disk Space: At least 1.64 GB (excluding IDE/tools)
- Tools: Windows PowerShell 5.0 or newer, Git for Windows

## Installation Steps

### 1. Download Flutter SDK
1. Visit the official Flutter website: https://docs.flutter.dev/get-started/install/windows
2. Click on the "flutter_windows_3.19.6-stable.zip" to download the latest stable release
3. Extract the zip file to a desired location (e.g., `C:\src\flutter`). 
   - **Important**: Avoid installing Flutter in directories that require elevated privileges (e.g., `C:\Program Files\`)

### 2. Update Path Environment Variable
1. Search for "Environment Variables" in your Windows search bar
2. Click on "Edit the system environment variables"
3. Click on "Environment Variables" in the System Properties window
4. Under "User variables", select "Path" and click "Edit"
5. Click "New" and add the path to the Flutter `bin` directory (e.g., `C:\src\flutter\bin`)
6. Click "OK" to close all dialogs

### 3. Verify Installation and Dependencies
1. Open a new PowerShell window
2. Run the following command to verify Flutter installation:
   ```
   flutter --version
   ```
3. Run Flutter doctor to check and install dependencies:
   ```
   flutter doctor
   ```

### 4. Install Android Studio
1. Download and install Android Studio from: https://developer.android.com/studio
2. Launch Android Studio and follow the setup wizard
3. Install the Flutter and Dart plugins:
   - Go to File > Settings > Plugins
   - Search for "Flutter" and install it (this will also install Dart)
   - Restart Android Studio

### 5. Configure Android Device/Emulator
1. For physical device:
   - Enable Developer options and USB debugging on your Android device
   - Connect your device to your computer with a USB cable
2. For emulator:
   - In Android Studio, go to Tools > AVD Manager
   - Click "Create Virtual Device" and follow the steps to create an emulator
   - Launch the emulator

### 6. Install VS Code (Recommended)
1. Download and install VS Code from: https://code.visualstudio.com/
2. Open VS Code and install the Flutter extension:
   - Go to Extensions view (Ctrl+Shift+X)
   - Search for "Flutter" and install it

### 7. Configure iOS Development (Optional)
For iOS development, you need a macOS system with Xcode. Flutter does not support iOS development directly on Windows.

## Verification

After completing the installation, verify everything is working:

1. Run the following command to check for any remaining issues:
   ```
   flutter doctor --verbose
   ```

2. Create a test Flutter project:
   ```
   flutter create my_test_app
   cd my_test_app
   flutter run
   ```

## Troubleshooting

If you encounter issues:

1. Verify your PATH environment variable is correctly set
2. Ensure you have the latest Flutter SDK
3. Run `flutter doctor` to identify specific issues
4. Check the official Flutter troubleshooting guide: https://docs.flutter.dev/get-started/install/windows#troubleshooting

## Next Steps

Once Flutter is successfully installed, you can proceed with the VIA app setup according to the project checklist. 