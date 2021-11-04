import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slp2021/helpers/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:slp2021/pages/categorylistpage.dart';
import 'package:slp2021/pages/selectedcategorypage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
      theme: ThemeData(fontFamily: 'Epilogue'),
      debugShowCheckedModeBanner: false,
      home: CategoryListPage(
      )
      ));
}
