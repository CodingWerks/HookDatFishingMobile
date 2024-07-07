import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBldvCEbnJX9N8gHNvDyQml4ZlajO0RNHg",
            authDomain: "hook-dat-fishing-9yqtja.firebaseapp.com",
            projectId: "hook-dat-fishing-9yqtja",
            storageBucket: "hook-dat-fishing-9yqtja.appspot.com",
            messagingSenderId: "975608396625",
            appId: "1:975608396625:web:e6997f470ea5cde8d2f170"));
  } else {
    await Firebase.initializeApp();
  }
}
