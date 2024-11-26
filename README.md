# weather_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# Weather App 🌤

A dynamic weather application built using Flutter to provide users with real-time weather updates for any location. This app leverages modern APIs to fetch accurate weather data, presenting it in an intuitive and user-friendly interface.

## Features

* Current Weather Information: Displays temperature, weather condition, humidity, and wind speed.
* Search Functionality: Find weather details for any city.
* Dynamic UI: Weather-based background animations.
* Responsive Design: Works seamlessly on both Android and iOS devices.
* Error Handling: Alerts users if the location is invalid or if there’s a network issue.

## Technology Stack

* Frontend: Flutter
* Backend API: OpenWeatherMap API (or your chosen weather API)
* Languages: Dart

## Prerequisites

Before you begin, ensure you have met the following requirements:

* Flutter SDK installed 
* An API key from OpenWeatherMap or your preferred weather service provider

## Getting Started

### Step 1: Clone the Repository

bash
git clone [https://github.com/Youmna-Refaat/Weather_APP.git](https://github.com/Youmna-Refaat/Weather_APP.git)
cd Weather_APP

### Step 2: Install Dependencies
bash
flutter pub get

### Step 3: Add API Key
const String apiKey = "YOUR_API_KEY_HERE";

### Step 4: Run the App
bash
flutter run

## Requirements

* Emulator or Physical Device: Ensure you have an emulator or a physical device connected to test the app.

## Troubleshooting

No Data Displayed:

* Verify your API key: Check if your API key for the weather service is valid and entered correctly.
* Internet Connection: Ensure you have a stable internet connection.

App Not Running:

* Dependencies: Check if all required dependencies for the app are installed.
* Flutter Configuration: Make sure Flutter is properly configured on your system. Refer to Flutter's documentation for troubleshooting steps: https://medium.com/wayvs-tech/flutter-troubleshooting-guide-c5eb5ccb595f

## License

This project is licensed under the MIT License.
