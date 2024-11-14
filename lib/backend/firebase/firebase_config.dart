import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAjm5DizKuS9mchbmxKTE9P2h9NBV9i4n0",
            authDomain: "food-delivery-app-a99be.firebaseapp.com",
            projectId: "food-delivery-app-a99be",
            storageBucket: "food-delivery-app-a99be.appspot.com",
            messagingSenderId: "276231466918",
            appId: "1:276231466918:web:c5081aee2bfde86fb22967",
            measurementId: "G-2MBN77Q712"));
  } else {
    await Firebase.initializeApp();
  }
}
