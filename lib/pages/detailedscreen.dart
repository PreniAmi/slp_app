import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slp2021/helpers/appcolors.dart';
import 'package:slp2021/widgets/categorybottombar.dart';
import 'package:slp2021/widgets/mainappbar.dart';

class DetailedScreen extends StatefulWidget{
  @override
  _DetailedScreenStates createState() => _DetailedScreenStates();
}

class _DetailedScreenStates extends State<DetailedScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: AppColors.APP_BACKGROUND,
      appBar: MainAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Column(
            children:[
              Text(Get.arguments['name'],
                style: const TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
            )),
              Padding(padding: const EdgeInsets.only(top:15.0),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      height: 200.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            Get.arguments['image']
                          ),
                          fit: BoxFit.cover,
                        )
                      ),
                    )
                  ],
                ),
              ),)
            ]
          ),
        ),

      ),

      bottomNavigationBar: const CategoryBottomBar(),

    );
  }
}


