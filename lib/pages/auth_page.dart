import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:main/pages/login_or_register_page.dart';
import 'package:main/pages/shop_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user in loged in
          if (snapshot.hasData) {
            return ShopPage();
          } else {
            return LoginOrRegisterPage();
          }
        },
        //use is loged in

        // user is not loged in
      ),
    );
  }
}
