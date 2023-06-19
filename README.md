# Tirandaj Mobile App

Tirandaj Mobile App is a Flutter-based application developed for accessing news articles and updates from the Chattishgarh-based news website, Tirandaj. The app provides a user-friendly interface and utilizes various plugins and technologies to deliver an efficient and seamless user experience.

## Features

- User authentication and registration using Firebase Authentication.
- Real-time updates and notifications using Firebase Cloud Messaging (FCM).
- HTML content rendering using the flutter_widget_from_html plugin.
- Integration with Firebase Firestore for storing and retrieving data.
- Sharing articles with other apps using the share plugin.
- Displaying custom fonts using the google_fonts package.
- Launching external URLs in the default browser using the url_launcher plugin.
- Displaying toast messages using the fluttertoast plugin.
- Storing preferences locally using the shared_preferences package.
- Efficient state management using the get package.
- Fetching news articles from the Tirandaj news website using the WordPress API.

## Getting Started

To run the Tirandaj Mobile App on your local machine, follow the instructions below:

### Prerequisites

- Flutter SDK: Make sure you have Flutter SDK installed on your machine. You can download it from the official Flutter website: [https://flutter.dev](https://flutter.dev)

### Installation

1. Clone the repository:

```bash
git clone https://github.com/devansh301/TirandajApp.git
```

2. Change to the project directory:

```bash
cd TirandajApp
```

3. Install dependencies:

```bash
flutter pub get
```

4. Set up Firebase:

- Create a new Firebase project on the [Firebase Console](https://console.firebase.google.com).
- Enable Firebase Authentication and Firebase Cloud Messaging for your project.
- Download the `google-services.json` file for Android and `GoogleService-Info.plist` file for iOS from the Firebase Console.
- Place the respective configuration files in the appropriate locations in the project.

5. Set up WordPress API:

- Configure the WordPress API endpoint in the app to point to the Tirandaj news website.
- Update the necessary API endpoints and authentication credentials in the app to fetch news articles.

6. Run the app:

```bash
flutter run
```

Note: Make sure you have a connected device or emulator running before executing the above command.


## Download

You can download the Tirandaj Mobile App from the Google Play Store by following this [link](https://play.google.com/store/apps/details?id=com.yourdomain.tirandaj).

## Contributions

Contributions to the Tirandaj Mobile App are welcome! If you find any issues or have suggestions for improvements, please feel free to open issues or submit pull requests in this repository.

## License

This project is licensed under the [MIT License](LICENSE).

---

Thank you for your interest in the Tirandaj Mobile App! If you have any further questions or need assistance, please don't hesitate to contact us.
