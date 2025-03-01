// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyA6sliEMNnaPO0ETzI3Ntg2gkuL63GUSRo',
    appId: '1:396041739574:web:4aad25be368b61d0626797',
    messagingSenderId: '396041739574',
    projectId: 'main-3d09e',
    authDomain: 'main-3d09e.firebaseapp.com',
    storageBucket: 'main-3d09e.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmrP8IbWjKUAtO1sy2NMy-rHLDuMnWeBU',
    appId: '1:396041739574:android:0941b5672060eca6626797',
    messagingSenderId: '396041739574',
    projectId: 'main-3d09e',
    storageBucket: 'main-3d09e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-vGglJWMrFZ98JIxrVml1woizxDHdx_E',
    appId: '1:396041739574:ios:6127aa3e7dd5536c626797',
    messagingSenderId: '396041739574',
    projectId: 'main-3d09e',
    storageBucket: 'main-3d09e.firebasestorage.app',
    iosBundleId: 'com.example.main',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB-vGglJWMrFZ98JIxrVml1woizxDHdx_E',
    appId: '1:396041739574:ios:6127aa3e7dd5536c626797',
    messagingSenderId: '396041739574',
    projectId: 'main-3d09e',
    storageBucket: 'main-3d09e.firebasestorage.app',
    iosBundleId: 'com.example.main',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA6sliEMNnaPO0ETzI3Ntg2gkuL63GUSRo',
    appId: '1:396041739574:web:9d3b67f6dc35fdd1626797',
    messagingSenderId: '396041739574',
    projectId: 'main-3d09e',
    authDomain: 'main-3d09e.firebaseapp.com',
    storageBucket: 'main-3d09e.firebasestorage.app',
  );
}
