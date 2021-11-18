import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:slp_app/Screens/Welcome/welcome_screen.dart';
import 'package:slp_app/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:slp_app/components/text_field_container.dart';
import 'package:slp_app/services/auth_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    User user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "HOME SCREEN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            RoundedButton(
              text: "Sign Out",
              press: (){
                context.read<AuthService>().signOut();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return const WelcomeScreen();
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