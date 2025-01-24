import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:main/pages/auth_page.dart';
import 'package:main/pages/cart_page.dart';
import 'package:main/pages/intro_page.dart';
import 'package:main/themes/light_mode.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => IntroPage(),
        '/auth_page': (context) => AuthPage(),
        '/cart_page': (context) => CartPage(),
      },
    );
  }
}
