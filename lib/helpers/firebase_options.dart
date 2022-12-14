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
    apiKey: 'AIzaSyC5jb91WF2P8WFMmax648QJwv8HNnLAHOI',
    appId: '1:278287507199:web:a41e737111c1105f67b6ca',
    messagingSenderId: '278287507199',
    projectId: 'centraldealuminiosdelvalle',
    authDomain: 'centraldealuminiosdelvalle.firebaseapp.com',
    storageBucket: 'centraldealuminiosdelvalle.appspot.com',
    measurementId: 'G-TBCGX478ZR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCt0oaRNmA-MY0ElM4AYY8tLE7sUPXh1bU',
    appId: '1:278287507199:android:35f487c257ad91f067b6ca',
    messagingSenderId: '278287507199',
    projectId: 'centraldealuminiosdelvalle',
    storageBucket: 'centraldealuminiosdelvalle.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAE_AcVgVuPisERFYwL3xj2q94dbZv83dY',
    appId: '1:278287507199:ios:84db91fb6cc656ca67b6ca',
    messagingSenderId: '278287507199',
    projectId: 'centraldealuminiosdelvalle',
    storageBucket: 'centraldealuminiosdelvalle.appspot.com',
    iosClientId: '278287507199-23j0a87gf0gui43qdje39hq42l4poq6r.apps.googleusercontent.com',
    iosBundleId: 'com.example.barcodeGenerator',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAE_AcVgVuPisERFYwL3xj2q94dbZv83dY',
    appId: '1:278287507199:ios:84db91fb6cc656ca67b6ca',
    messagingSenderId: '278287507199',
    projectId: 'centraldealuminiosdelvalle',
    storageBucket: 'centraldealuminiosdelvalle.appspot.com',
    iosClientId: '278287507199-23j0a87gf0gui43qdje39hq42l4poq6r.apps.googleusercontent.com',
    iosBundleId: 'com.example.barcodeGenerator',
  );
}
