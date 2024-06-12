import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAhFHRQJ1rQ7xbSP93reSaCt4SrHGicEaI",
            authDomain: "ctrlsend.firebaseapp.com",
            projectId: "ctrlsend",
            storageBucket: "ctrlsend.appspot.com",
            messagingSenderId: "546089946220",
            appId: "1:546089946220:web:40b51cf557ef87d9badc49",
            measurementId: "G-K2DEX1CQ34"));
  } else {
    await Firebase.initializeApp();
  }
}
