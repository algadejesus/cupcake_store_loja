import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC9c2gwIl5LtSNhguXbxowftbRseGtSzU4",
            authDomain: "cupcakectore-v1.firebaseapp.com",
            projectId: "cupcakectore-v1",
            storageBucket: "cupcakectore-v1.appspot.com",
            messagingSenderId: "101452353541",
            appId: "1:101452353541:web:e88abafba6cf9e33bc4c6c"));
  } else {
    await Firebase.initializeApp();
  }
}
