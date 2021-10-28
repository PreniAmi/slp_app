import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slp_app/Screens/HomeScreen/home_screen.dart';
import 'package:slp_app/Screens/Login/login_screen.dart';
import 'package:slp_app/components/already_have_an_account_check.dart';
import 'package:slp_app/components/rounded_button.dart';
import 'package:slp_app/components/rounded_input_field.dart';
import 'package:slp_app/components/rounded_password_field.dart';
import 'package:slp_app/services/auth_services.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();

}

class _BodyState extends State<Body> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

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
                "SIGN UP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
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
                  onChanged: (value){}
              ),
              RoundedInputField(
                  controller: phoneNumberController,
                  hintText: "Phone Number",
                  icon: Icons.phone,
                  onChanged: (value){}
              ),
              RoundedPasswordField(
                  controller: passwordController,
                  onChanged: (value){}
              ),
              RoundedButton(
                text: "SIGN UP",
                press: (){
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();
                  String phone = phoneNumberController.text.trim();

                  if(email.isEmpty){
                    print("Email is Empty");
                  } else {
                    if(password.isEmpty){
                      print("Password is Empty");
                    } else {
                      context.read<AuthService>().signUp(
                          email,
                          password
                      ).then((value) async {
                        User user = FirebaseAuth.instance.currentUser;

                        await FirebaseFirestore.instance.collection("users").doc(user.uid).set({
                          'uid': user.uid,
                          'email': email,
                          'phone': phone,
                        });
                      }
                      );

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
                login: false,
                press: (){
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
            ],
          ),
        )
    );
  }

}