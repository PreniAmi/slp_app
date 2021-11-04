import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slp2021/helpers/appcolors.dart';


class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.MAIN_COLOR,
      title: const Text("Bronco Book Exchange",
          style: TextStyle(
              fontSize: 25, color: AppColors.APP_NAME, fontFamily: "Epilogue"),
          textAlign: TextAlign.center)
    );
  }
}