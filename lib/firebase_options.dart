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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAN4M6WU1-uFOEh_PgoxXyxZV4hT_3C6A8',
    appId: '1:587052104395:web:78bb22bdd8f70052cff94e',
    messagingSenderId: '587052104395',
    projectId: 'controle-de-estoque-1d559',
    authDomain: 'controle-de-estoque-1d559.firebaseapp.com',
    storageBucket: 'controle-de-estoque-1d559.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDN7Pf1xPVso8hMUYG-OH2Df6_Wh5rBQNk',
    appId: '1:587052104395:android:0834d805f29cc1edcff94e',
    messagingSenderId: '587052104395',
    projectId: 'controle-de-estoque-1d559',
    storageBucket: 'controle-de-estoque-1d559.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCFkuc24uq4V75_HuUXxk8f0E5lvPlHnpM',
    appId: '1:587052104395:ios:3328b7e809d987e3cff94e',
    messagingSenderId: '587052104395',
    projectId: 'controle-de-estoque-1d559',
    storageBucket: 'controle-de-estoque-1d559.appspot.com',
    iosBundleId: 'com.example.flutterDesktopValidade',
  );
}
