// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:lukhu_packages_pkg/lukhu_packages_pkg.dart'
    show FirebaseOptions;

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
    apiKey: 'AIzaSyAIy-2bH_nfutoW8X0Vn7DsUsvkyhJN2nU',
    appId: '1:257334306927:web:3f589c1434ad7216cb459a',
    messagingSenderId: '257334306927',
    projectId: 'lukhu-dev',
    authDomain: 'lukhu-dev.firebaseapp.com',
    storageBucket: 'lukhu-dev.appspot.com',
    measurementId: 'G-GBMEGCY8VV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPr-N51X3rR1IcBFUUXgvKWTS0zIzRviI',
    appId: '1:257334306927:android:87bfba7f7137a374cb459a',
    messagingSenderId: '257334306927',
    projectId: 'lukhu-dev',
    storageBucket: 'lukhu-dev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBuuj4S-3BzjXrMkDaioMvD-JcRD3k4x2E',
    appId: '1:257334306927:ios:b8dcbe78dd1a4668cb459a',
    messagingSenderId: '257334306927',
    projectId: 'lukhu-dev',
    storageBucket: 'lukhu-dev.appspot.com',
    androidClientId:
        '257334306927-2f7rtbsh7rou7kc0hsfptkp6081anjaa.apps.googleusercontent.com',
    iosClientId:
        '257334306927-u1rmta9k9149fu10jtm5v6mepqaj2npa.apps.googleusercontent.com',
    iosBundleId: 'com.fashion.lukhu.dukastax',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBuuj4S-3BzjXrMkDaioMvD-JcRD3k4x2E',
    appId: '1:257334306927:ios:f3cbc9879cf7a5f7cb459a',
    messagingSenderId: '257334306927',
    projectId: 'lukhu-dev',
    storageBucket: 'lukhu-dev.appspot.com',
    androidClientId:
        '257334306927-2f7rtbsh7rou7kc0hsfptkp6081anjaa.apps.googleusercontent.com',
    iosClientId:
        '257334306927-8ke2va2f5mv7e4oi6ccpoqkai23dmn47.apps.googleusercontent.com',
    iosBundleId: 'com.fashion.lukhu.dukastax.RunnerTests',
  );
}
