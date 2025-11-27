# Rescue Ace

A Flutter application for firefighting and police rescue operations, featuring real-time notifications and navigation support.

## Features

- **User Authentication** - Secure login system with backend integration
- **Real-time Notifications** - Firebase Cloud Messaging for emergency alerts
- **Interactive Maps** - Mapbox integration for navigation and location tracking
- **State Management** - Provider pattern for efficient state handling

## Getting Started

### Prerequisites
- Flutter SDK (3.4.4 or higher)
- Dart SDK (3.4.4 or higher)
- Firebase project configured

### Installation

1. Clone the repository:
```bash
git clone https://github.com/AizaFuji/rescue-ace-frontend.git
cd rescue-ace-frontend
```

2. Install dependencies:
```bash
flutter pub get
```

3. Set up environment variables:
```bash
cp .env.example .env
# Edit .env with your API keys and configuration
```

4. Run the application:
```bash
flutter run
```

## Environment Variables

The application requires the following environment variables in `.env`:

- `BASE_URL` - Backend API endpoint
- `MAPBOX_ACCESS_TOKEN` - Mapbox API token
- `FIREBASE_API_KEY` - Firebase API key
- `FIREBASE_APP_ID` - Firebase app ID
- `FIREBASE_MESSAGING_SENDER_ID` - Firebase messaging sender ID
- `FIREBASE_PROJECT_ID` - Firebase project ID
- `FIREBASE_STORAGE_BUCKET` - Firebase storage bucket
- `FIREBASE_DATABASE_URL` - Firebase database URL



