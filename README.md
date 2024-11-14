🎥 Live Streaming App with Flutter & ZEGOCLOUD

A powerful, easy-to-use live streaming application built using Flutter and the ZEGOCLOUD live streaming SDK. This app enables users to create and join live streams seamlessly with options to toggle between Host and Audience modes. Ideal for anyone looking to integrate live streaming features into their mobile app!

📱 Features

Host & Audience Modes:

Users can choose to start a live stream as a host or join as an audience member.
User-Friendly Interface:
Clean UI, designed with Flutter's Material Design principles, for an intuitive user experience.
Real-time Video Streaming:
Leveraging ZEGOCLOUD's SDK for stable and high-quality live streaming with low latency.
Unique Live IDs:
Each live session is assigned a unique ID, ensuring seamless connectivity between hosts and viewers.

Customizable Streaming Configurations:

Easily adjust configurations for host and audience modes based on the user role.
🚀 Getting Started
Clone the Repository:

bash
Copy code
git clone https://github.com/yourusername/live-streaming-app.git
cd live-streaming-app
Setup Dependencies:

Add your ZEGOCLOUD appID and appSign in constant.dart.
Install dependencies:
bash
Copy code
flutter pub get
Run the App:

Launch the app on an emulator or connected device:
bash
Copy code
flutter run
🛠️ Configuration
Add your ZEGOCLOUD credentials in constant.dart:

dart
Copy code
class Constants {
  static const int appId = <YOUR_APP_ID>;
  static const String appSign = '<YOUR_APP_SIGN>';
}
Android Permissions: Ensure AndroidManifest.xml includes permissions for camera, microphone, and internet access.

iOS Permissions: Update Info.plist with necessary permissions for camera and microphone usage.

📦 Technologies Used :

Flutter: Framework for building cross-platform apps.
ZEGOCLOUD SDK: SDK for enabling live streaming capabilities.
Dart: Programming language used in Flutter.

📸 Screenshots
Host Mode	Audience Mode
🎯 Future Improvements
Add chat support for audience members.
Enable screen sharing for hosts.
Integrate analytics to monitor live session stats.
🤝 Contributing
Contributions are welcome! Feel free to open issues or submit pull requests to improve the app.
