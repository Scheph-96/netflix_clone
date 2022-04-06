import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          child: const TextField(
            decoration: InputDecoration(
              hintText: "Username",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          child: const TextField(
            decoration: InputDecoration(
              hintText: "Email or Phone number",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirm Password",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
