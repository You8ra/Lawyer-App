import 'package:flutter/material.dart';

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Color.fromARGB(255, 4, 69, 25),
    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Color.fromRGBO(230, 153, 65, 0.784),
      ),
      labelText: text,
      labelStyle: TextStyle(color: Color.fromARGB(255, 3, 36, 19)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Color.fromARGB(255, 252, 252, 252),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container signInSignUpButton(
    BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: 200,
    //width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(90),
      color: Color.fromRGBO(227, 158, 79, 0.78),
    ),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },

      child: Text(
        isLogin ? 'LOG IN' : 'SIGN UP',
        style: const TextStyle(
            color: Color.fromARGB(255, 3, 36, 19),
            fontWeight: FontWeight.bold,
            fontSize: 25), // TextStyle
      ), // Text
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Color.fromARGB(255, 5, 85, 43);
            }
            return Color.fromARGB(255, 207, 154, 64);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ))), // ButtonStyle
    ),
  );
}
