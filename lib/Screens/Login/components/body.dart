import 'package:flutter/material.dart';
import 'package:slp_app/Screens/HomeScreen/home_screen.dart';
import 'package:slp_app/Screens/Signup/signup_screen.dart';
import 'package:slp_app/components/already_have_an_account_check.dart';
import 'package:slp_app/components/rounded_button.dart';
import 'package:slp_app/components/rounded_input_field.dart';
import 'package:slp_app/components/rounded_password_field.dart';
import 'package:slp_app/components/text_field_container.dart';
import 'package:provider/provider.dart';
import 'package:slp_app/services/auth_services.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
  
}

class _BodyState extends State<Body> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      height: size.height,
      width: double.infinity,
      child: SingleChildScrollView (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/sheCodesLogo.png",
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputField(
              controller: emailController,
              hintText: "Email Address",
              icon: Icons.person,
              onChanged: (value){
              },
            ),
            RoundedPasswordField(
              controller: passwordController,
              onChanged: (value){
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: (){
                String email = emailController.text.trim();
                String password = passwordController.text.trim();

                if(email.isEmpty){
                  print("Email is Empty");
                } else {
                  if(password.isEmpty){
                    print("Password is Empty");
                  } else {
                    context.read<AuthService>().login(email,password);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return const HomeScreen();
                        },
                      ),
                    );
                  }
                }

              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: (){
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
      ),
    );
  }
}





