import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_law/category/Home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../reusable_widget/reusable_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  Future signUp() async {}
//here
  // bool passwordConfirmed() {
  //   if (_passwordController.text.trim() ==
  //       _confirmPasswordController.text.trim()) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  void openLoginScreen() {
    Navigator.of(context).pushReplacementNamed('loginScreen');
  }

  void openSignupScreen() {
    Navigator.of(context).pushReplacementNamed('signupScreen');
  }

  void openHomePage() {
    Navigator.of(context).pushReplacementNamed('homePage');
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _emailController.dispose();
  //   _passwordController.dispose();
  //   _confirmPasswordController.dispose();
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
                    height: 10,
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
                    height: 60,
                  ),

                  Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 2, 84, 42),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    'Welcome !',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // // email
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
                  // // password
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
                  // SizedBox(
                  //   height: 8,
                  // ),
                  // //confirm password
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 35),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(12)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 30),
                  //       child: TextField(
                  //         controller: _confirmPasswordController,
                  //         obscureText: true,
                  //         decoration: InputDecoration(
                  //             border: InputBorder.none,
                  //             hintText: 'Confirm Your Password'),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  reusableTextField("Enter Username", Icons.person_outline,
                      false, _userNameTextController),
                  SizedBox(
                    height: 12,
                  ),
                  reusableTextField("Enter Your Email", Icons.email_outlined,
                      false, _emailTextController),
                  SizedBox(
                    height: 12,
                  ),
                  reusableTextField("Enter Password", Icons.lock_outline, true,
                      _passwordTextController),
                  SizedBox(
                    height: 8,
                  ),
                  // signInSignUpButton(context, false, () {
                  //   FirebaseAuth.instance.createUserWithEmailAndPassword(
                  //       email: _emailTextController.text,
                  //       password: _passwordTextController.text);
                  // }),
                  // // button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: GestureDetector(
                      onTap: signUp,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(225, 129, 18, 0.78),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: GestureDetector(
                          onTap: openHomePage,
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 3, 36, 19),
                            ),
                          ),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a member ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: openLoginScreen,
                    child: Text(
                      'Sign in here',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
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

//  void googleSignUp() async {
//     final googleUser = await GoogleSignIn().signIn();
//     final googleAuth = await googleUser!.authentication;
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );
//     final userCredential =
//         await FirebaseAuth.instance.signInWithCredential(credential);
//     final user = userCredential.user;
//     if (user != null) {
//       // Create a new UserModel instance for the user
//       final newUser = UserModel(
//         id: user.uid,
//         email: user.email ?? "",
//         fullName: user.displayName ?? "",
//         phoneNumber: "",
//         password: "",
//         profilePictureUrl: user.photoURL ?? "",
//         pubkey: "",
//       );

//       // Save the user to Firestore
//       await FirebaseFirestore.instance
//           .collection("Users")
//           .doc(user.uid)
//           .set(newUser.toJson());

//       // Navigate to the home screen
//       Get.to(() => const Dashboard());
//     }
//   }
