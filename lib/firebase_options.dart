// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAMCv5XazMNZKJxA-wEBSyQX532HxBLLFY',
    appId: '1:300538131969:web:72d85eb7ea3a181b20f200',
    messagingSenderId: '300538131969',
    projectId: 'auth-flutter-tutorial',
    authDomain: 'auth-flutter-tutorial.firebaseapp.com',
    storageBucket: 'auth-flutter-tutorial.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcwXsUhfHa_NEkRgFYbYduSHNcylvi17k',
    appId: '1:300538131969:android:d77d5c81a9e90fcc20f200',
    messagingSenderId: '300538131969',
    projectId: 'auth-flutter-tutorial',
    storageBucket: 'auth-flutter-tutorial.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-lpo38u7d3C5QCBw1labMiWQO29rhDxE',
    appId: '1:300538131969:ios:aba8a652d83ac79520f200',
    messagingSenderId: '300538131969',
    projectId: 'auth-flutter-tutorial',
    storageBucket: 'auth-flutter-tutorial.appspot.com',
    iosClientId: '300538131969-95f1q2brmah9ocq5m52oeqpquim42cd0.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAuthFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-lpo38u7d3C5QCBw1labMiWQO29rhDxE',
    appId: '1:300538131969:ios:aba8a652d83ac79520f200',
    messagingSenderId: '300538131969',
    projectId: 'auth-flutter-tutorial',
    storageBucket: 'auth-flutter-tutorial.appspot.com',
    iosClientId: '300538131969-95f1q2brmah9ocq5m52oeqpquim42cd0.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAuthFirebase',
  );
}
