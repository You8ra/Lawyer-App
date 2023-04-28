import 'package:app_law/Auth.dart';
import 'package:app_law/category/Home_page.dart';
import 'package:app_law/Screen/Home_Screen.dart';
import 'package:app_law/Screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_law/Screen/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      //home: const Auth(),
      routes: {
        '/': (context) => const Auth(),
        'homeScreen': (context) => const HomeScreen(),
        'signupScreen': (context) => const SignupScreen(),
        'loginScreen': (context) => const LoginScreen(),
        'homePage': (context) => const HomePage(),
      },
    );
  }
}
