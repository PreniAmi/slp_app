import 'package:flutter/material.dart';
import 'package:slp_app/Screens/Login/login_screen.dart';
import 'package:slp_app/Screens/Signup/signup_screen.dart';
import 'package:slp_app/components/rounded_button.dart';

import '../../../constants.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "WELCOME TO BOOK EXCHANGE APP",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: size.height * 0.05),
          Image.asset(
            "assets/sheCodesLogo.png",
            height: size.height * 0.4,
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return const LoginScreen();
                    },
                ),
              );
              },
          ),
          RoundedButton(
            text: "SIGN UP",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return const SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
      );
  }

}

