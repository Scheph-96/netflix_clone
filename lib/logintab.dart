import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginTab extends StatefulWidget {
  const LoginTab({Key? key}) : super(key: key);

  @override
  _LoginTabState createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  IconData eyeIcon = (FontAwesomeIcons.solidEye);
  bool isDisplayed = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Username",
              hintStyle: TextStyle(
                color: Colors.grey[400],
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          // decoration: const BoxDecoration(
          //   color: Colors.green,
          // ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  obscureText: isDisplayed,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Container(
             //   width: 150,
                height: 48,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: ElevatedButton(
                  child: FaIcon(
                    eyeIcon,
                    color: Colors.grey,
                    
                  ),
                  onPressed: () {
                    setState(
                      () {
                        if (eyeIcon == FontAwesomeIcons.solidEye) {
                          isDisplayed = false;
                          eyeIcon = FontAwesomeIcons.solidEyeSlash;
                        } else {
                          isDisplayed = true;
                          eyeIcon = FontAwesomeIcons.solidEye;
                        }
                      },
                    );
                  },
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
