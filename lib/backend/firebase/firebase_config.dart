import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDWs2A_mR6eKBR-iW9NKOfoN5yf8e_1hKo",
            authDomain: "ctrlsend-af9fd.firebaseapp.com",
            projectId: "ctrlsend-af9fd",
            storageBucket: "ctrlsend-af9fd.appspot.com",
            messagingSenderId: "51742710343",
            appId: "1:51742710343:web:f84ae438e7c038e8276f62",
            measurementId: "G-DXT0FMHMM4"));
  } else {
    await Firebase.initializeApp();
  }
}
