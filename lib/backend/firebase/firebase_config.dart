import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCldn0uQEGga2lNFki9sNegqF2vd5eTpz8",
            authDomain: "ev-charging-management-system.firebaseapp.com",
            projectId: "ev-charging-management-system",
            storageBucket: "ev-charging-management-system.appspot.com",
            messagingSenderId: "1091192539175",
            appId: "1:1091192539175:web:7aa57ca5d3dc4b1219e602",
            measurementId: "G-8W2Y4F8HY5"));
  } else {
    await Firebase.initializeApp();
  }
}
