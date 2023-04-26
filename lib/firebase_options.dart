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
    apiKey: 'AIzaSyDvqU05u5_D2KY5_3MQSe08p6LbKdpNRFc',
    appId: '1:905193157158:web:63f481052c9b84cb9b2ce7',
    messagingSenderId: '905193157158',
    projectId: 'flashchatdream',
    authDomain: 'flashchatdream.firebaseapp.com',
    storageBucket: 'flashchatdream.appspot.com',
    measurementId: 'G-7DV3XRWE76',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDV3XhQGF2uBWY_dPz9x0Q5TiTlp_2KKiw',
    appId: '1:905193157158:android:7f03636da9675c129b2ce7',
    messagingSenderId: '905193157158',
    projectId: 'flashchatdream',
    storageBucket: 'flashchatdream.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADn4rkAeQvd44qLHkssHHF0jAO7-SIGpA',
    appId: '1:905193157158:ios:f0a948aa1d3e2d289b2ce7',
    messagingSenderId: '905193157158',
    projectId: 'flashchatdream',
    storageBucket: 'flashchatdream.appspot.com',
    iosClientId: '905193157158-iqjfvl4gj2j6vg0v4dvj18r3rcplghmq.apps.googleusercontent.com',
    iosBundleId: 'com.flashchat.flashChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADn4rkAeQvd44qLHkssHHF0jAO7-SIGpA',
    appId: '1:905193157158:ios:f0a948aa1d3e2d289b2ce7',
    messagingSenderId: '905193157158',
    projectId: 'flashchatdream',
    storageBucket: 'flashchatdream.appspot.com',
    iosClientId: '905193157158-iqjfvl4gj2j6vg0v4dvj18r3rcplghmq.apps.googleusercontent.com',
    iosBundleId: 'com.flashchat.flashChat',
  );
}