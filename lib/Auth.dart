import 'package:app_law/Screen/LoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app_law/Screen/Home_Screen.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snaphsot) {
          if (snaphsot.hasData) {
            return HomeScreen();
          } else {
            return LoginScreen();
          }
        }),
      ),
    );
  }
}
