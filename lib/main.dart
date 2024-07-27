import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oauth_file_upload/pages/home_page.dart';
import 'package:oauth_file_upload/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase OAuth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirebaseAuth.instance.currentUser == null ? LoginPage() : HomePage(),
    );
  }
}
