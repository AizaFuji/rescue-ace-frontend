# Rescue Ace Flutter App

## Overview
This Flutter application is designed to support firefighting and police rescue operations. The app connects to backend services and integrates with Firebase for notifications and authentication.

## Architecture
This app is refactored to use Clean Architecture principles with separation into domain, data, and presentation layers:

- **Domain layer:** Contains entities, usecases, and repository interfaces.
- **Data layer:** Implements repository interfaces and API service calls.
- **Presentation layer:** Contains UI screens and uses Provider for state management.

## Setup

### Prerequisites
- Flutter SDK >= 3.4.4
- Dart SDK >= 3.4.4
- Firebase project setup with configurations

### Installing dependencies
Run the following command to install dependencies including `provider` and `http`:
```
flutter pub get
```

### Environment Variables
The app uses environment variables managed by the `.env` file. Update `.env` with:

```
BASE_URL=http://your-api-endpoint
```

### Running the app
Run the app on a connected device or emulator:

```
flutter run
```

## Features Implemented
- User login with backend authentication.
- Firebase Cloud Messaging for notifications.
- State management using Provider.
- Dependency injection for repositories and usecases.

## Future Improvements
- Expand usecases and repositories for full API coverage.
- Add more UI screens using state management.
- Implement robust error handling and user feedback.
- Add unit and integration tests.

## License
MIT License
