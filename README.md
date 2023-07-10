# Ping - Group Chatting App

Ping is a group chatting app developed using Flutter. It allows users to create groups, invite members, and engage in real-time conversations with group members. The app provides a seamless and intuitive user interface for an enhanced chatting experience.

## Features

- User authentication: Users can create an account, sign in, and sign out securely.
- Group creation: Users can create groups and set a group name and profile picture.
- Group management: Group admins can invite members to join the group and remove members.
- Real-time messaging: Users can send and receive messages in real time within their groups.

## Screenshots
![WhatsApp Image 2023-07-10 at 20 49 13](https://github.com/suman1406/Ping/assets/119001618/786c4124-b86a-4891-97b4-b71c5104effa)
![WhatsApp Image 2023-07-10 at 20 49 17](https://github.com/suman1406/Ping/assets/119001618/6c5b66d4-19ac-4913-bf89-39f657ab9c97)
![WhatsApp Image 2023-07-10 at 20 49 17](https://github.com/suman1406/Ping/assets/119001618/e75c376b-c733-487d-a4a6-9cf1b9a3af51)

## Dependencies

Ping relies on the following dependencies:

- `flutter/material.dart`: The core Flutter framework for building UI.
- `ping/provider/auth_provider.dart`: A custom provider class for managing user authentication.
- `ping/screens/intro_screen.dart`: The introductory screen of the app displayed upon opening.
- `ping/screens/splash_screen.dart`: The splash screen displayed while the app initializes.
- `provider/provider.dart`: A Flutter package for state management using the provider pattern.
- `firebase_core/firebase_core.dart`: A Flutter plugin for Firebase Core, required for Firebase initialization.

## Getting Started

To get started with Ping, follow these steps:

1. Clone the repository:

```
git clone https://github.com/suman1406/ping.git
```

2. Install the dependencies using Flutter's package manager:

```
flutter pub get
```

3. Set up Firebase for authentication and real-time database.

4. Update the Firebase configuration in the app by replacing the `google-services.json` file (for Android) or `GoogleService-Info.plist` file (for iOS) with your own Firebase project files.

5. Run the app on a connected device or emulator:

```
flutter run
```

## Contributing

Contributions to Ping are welcome and encouraged! If you find a bug or have a feature request, please open an issue. If you'd like to contribute code, you can fork the repository and create a pull request with your changes.

When contributing, please follow the existing code style and ensure that your changes are well-documented. Also, make sure to run the tests before submitting your pull request.

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute this code as permitted by the license.
