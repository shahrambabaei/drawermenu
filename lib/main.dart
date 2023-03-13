import 'package:flutter/material.dart';
import 'package:loginpage/controller/logincontroller.dart';
import 'package:loginpage/controller/splashcontroller.dart';
import 'package:loginpage/mybinding.dart';
import 'package:loginpage/screen/loginscreen.dart';
import 'package:loginpage/screen/splashscreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put<LoginController>(LoginController());
    Get.put<SplashController>(SplashController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialBinding: MyBiding(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
