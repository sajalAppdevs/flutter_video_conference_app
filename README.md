# Flutter Video Conference App

A real-time video conferencing application built with Flutter and ZEGOCLOUD's UIKit. This app allows users to create or join video conferences with multiple participants, featuring a clean and intuitive user interface.

## Features

- 🎥 Real-time video conferencing
- 👤 User authentication with custom names
- 🏢 Conference rooms with unique IDs
- 🎤 Microphone control
- 👥 Custom avatar support
- 🚪 Conference leave confirmation
- 📱 Cross-platform support (iOS and Android)

## Prerequisites

Before running this application, make sure you have the following installed:

- [Flutter](https://flutter.dev/docs/get-started/install) (Latest stable version)
- [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/)
- [Git](https://git-scm.com/)

## Dependencies

This project uses the following main dependencies:

- `zego_uikit_prebuilt_video_conference`: For video conferencing functionality
- `flutter`: The base framework

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/flutter_video_conference_app.git
   ```

2. Navigate to the project directory:
   ```bash
   cd flutter_video_conference_app
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Update the ZEGO configuration:
   - Open `lib/zego_config.dart`
   - Replace `appId` and `appSign` with your own credentials from [ZEGOCLOUD Admin Console](https://console.zegocloud.com/)

5. Run the app:
   ```bash
   flutter run
   ```

## Usage

1. Launch the app
2. Enter your name and a conference ID
3. Click "Join Conference" to enter the video conference
4. Use the in-conference controls to manage your audio/video settings
5. Click the leave button and confirm to exit the conference

## Project Structure

```
lib/
├── main.dart           # Application entry point
├── login_page.dart     # Login screen UI and logic
├── video_conference_page.dart  # Video conference screen
└── zego_config.dart    # ZEGO configuration constants
```

## Security Note

Make sure to keep your ZEGO credentials (appId and appSign) secure and never commit them directly to version control. Consider using environment variables or secure storage for production deployments.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Thanks to ZEGOCLOUD for providing the video conferencing SDK
- Flutter team for the amazing framework

