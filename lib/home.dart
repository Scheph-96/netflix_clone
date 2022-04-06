import 'package:flutter/material.dart';
import 'package:netflix_clone/logintab.dart';
import 'package:netflix_clone/series.dart';
import 'package:netflix_clone/signuptab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String loginStatus = "Does not have an account?";
  String destination = "Sign Up";
  String btnText = "Sign In";
  bool isLoginTab = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Image.asset(
              "assets/images/login_bg_pic.jpg",
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              height: 800,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black54,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo/netflix_logo.png",
                    height: 72,
                    width: 72,
                  ),
                  isLoginTab ? const LoginTab() : const SignUp(),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          if (!isLoginTab) {
                            isLoginTab = true;
                            destination = "Sign Up";
                            loginStatus = "Does not have an account?";
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Series(),
                              ),
                            );
                          }
                        });
                      },
                      child: Text(
                        btnText,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          loginStatus,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: (() {
                            setState(() {
                              if (isLoginTab) {
                                isLoginTab = false;
                                btnText = "Sign Up";
                                destination = "Sign In";
                                loginStatus = "Have an account?";
                              } else {
                                isLoginTab = true;
                                btnText = "Sign In";
                                destination = "Sign Up";
                                loginStatus = "Does not have an account?";
                              }
                            });
                          }),
                          child: Text(
                            destination,
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
