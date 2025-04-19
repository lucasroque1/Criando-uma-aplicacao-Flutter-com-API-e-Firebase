import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'package:pokedex/firebase_options.dart';
import 'package:pokedex/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDTFk_vtLwXbpxdHpQjUZ2ygvQIthmzpzA",
          authDomain: "pokedex-app-e7a4c.firebaseapp.com",
          projectId: "pokedex-app-e7a4c",
          storageBucket: "pokedex-app-e7a4c.firebasestorage.app",
          messagingSenderId: "536493722600",
          appId: "1:536493722600:web:4236fc3e40918a1bc2725d"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
