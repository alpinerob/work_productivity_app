// firebase_options.dart
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAj7h5-tlatS0MVUNT4MTVikuWwEQbKiEs', // Replace with your Web API Key if different
    appId: '1:390901520688:web:examplewebappid123456', // Replace with your Web App ID
    messagingSenderId: '390901520688', // Replaced with your Messaging Sender ID
    projectId: 'workproductivityapp', // Replaced with your Project ID
    authDomain: 'workproductivityapp.firebaseapp.com', // Constructed Auth Domain
    storageBucket: 'workproductivityapp.firebasestorage.app', // Replaced with your Storage Bucket
    measurementId: '', // Replace with your Measurement ID if applicable
  );

  static const FirebaseOptions ios = FirebaseOptions(
    appId: '1:390901520688:ios:f58ec4be4362dff1d190f5', // Provided App ID
    apiKey: 'AIzaSyAj7h5-tlatS0MVUNT4MTVikuWwEQbKiEs', // Extracted API_KEY from plist
    projectId: 'workproductivityapp', // Extracted PROJECT_ID from plist
    messagingSenderId: '390901520688', // Extracted GCM_SENDER_ID from plist
    iosBundleId: 'com.r2social.workProductivityApp', // Provided Bundle ID
    iosClientId: '', // Not present in plist. If needed, retrieve from Google Cloud Console.
    iosClientSecret: '', // Typically not required for mobile apps. Leave empty.
  );

  static const FirebaseOptions android = FirebaseOptions(
    appId: 'YOUR_ANDROID_APP_ID', // Replace with your Android App ID
    apiKey: 'YOUR_ANDROID_API_KEY', // Replace with your Android API Key
    projectId: 'workproductivityapp', // Replaced with your Project ID
    messagingSenderId: '390901520688', // Your Messaging Sender ID
    androidClientId: 'YOUR_ANDROID_CLIENT_ID', // Replace with your Android Client ID
    androidClientSecret: 'YOUR_ANDROID_CLIENT_SECRET', // Replace with your Android Client Secret
  );
}