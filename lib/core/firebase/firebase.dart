import 'package:firebase_core/firebase_core.dart';
import 'package:knowledge/core/firebase/firebase_options.dart';

class FirebaseI {
  static Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
