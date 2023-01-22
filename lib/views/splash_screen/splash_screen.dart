// ignore_for_file: prefer_const_constructors

import 'package:emartapp/consts/consts.dart';
import 'package:emartapp/views/auth_screen/login_screen.dart';
import 'package:emartapp/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change the screen after 3 seconds

  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      //using GetX to change the screen
      Get.to(() => LoginScreen());
    });
  }

  @override
  initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg, width: 300)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            Spacer(),
            credits.text.size(10).white.semiBold.make(),
            30.heightBox,

            //Splash Screen UI is completed
          ],
        ),
      ),
    );
  }
}
