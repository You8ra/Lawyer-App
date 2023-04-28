import 'package:app_law/category/Home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../reusable_widget/reusable_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  // Future signIn() async {
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: _emailTextController.text.trim(),
  //       password: _passwordTextController.text.trim(),
  //     );
  //   }
  //   // void getCurrentUser() {}
  //   on FirebaseAuthException catch (e) {
  //     print(e);
  //   }
  // }

  void openSignupScreen() {
    Navigator.of(context).pushReplacementNamed('signupScreen');
  }

  void openLoginScreen() {
    Navigator.of(context).pushReplacementNamed('loginScreen');
  }

  void openHomePage() {
    Navigator.of(context).pushReplacementNamed('homePage');
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _emailController.dispose();
  //   _passwordController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 231, 221),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // image
                  Image.asset(
                    'images/Logo1.png',
                    width: 240,
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  //text
                  Center(
                    child: Text(
                      'LAWYER\'S OFFICE DZ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromRGBO(230, 153, 65, 0.784),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 2, 84, 42),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    'Welcome to your office',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 35),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(12)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 30),
                  //       child: TextField(
                  //         controller: _emailController,
                  //         decoration: InputDecoration(
                  //             border: InputBorder.none, hintText: 'Your Email'),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 8,
                  // ),

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 35),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(12)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 30),
                  //       child: TextField(
                  //         controller: _passwordController,
                  //         obscureText: true,
                  //         decoration: InputDecoration(
                  //             border: InputBorder.none,
                  //             hintText: 'Your Password'),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // //sign in buttom
                  // SizedBox(
                  //   height: 20,
                  // ),

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 90),
                  //   child: GestureDetector(
                  //     onTap: signInSignUpButton,
                  //     child: Container(
                  //       padding: EdgeInsets.all(16),
                  //       decoration: BoxDecoration(
                  //           color: Color.fromRGBO(225, 129, 18, 0.78),
                  //           borderRadius: BorderRadius.circular(18)),
                  //       child: Center(
                  //           child: GestureDetector(
                  //         onTap: openHomePage,
                  //         child: Text(
                  //           'SIGN IN',
                  //           style: TextStyle(
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold,
                  //             color: Color.fromARGB(255, 3, 36, 19),
                  //           ),
                  //         ),
                  //       )),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  //Text

                  reusableTextField("Enter your email", Icons.email_outlined,
                      false, _emailTextController),
                  SizedBox(
                    height: 12,
                  ),
                  reusableTextField("Enter password", Icons.lock_outline, true,
                      _passwordTextController),
                  SizedBox(
                    height: 8,
                  ),

                  signInSignUpButton(context, true, () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      print("Created new account ");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }).onError((error, stackTrace) {
                      print("error ${error.toString()}");
                    });
                  }),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not yet a member ?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: openSignupScreen,
                        child: Text(
                          ' Sign up Now',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
