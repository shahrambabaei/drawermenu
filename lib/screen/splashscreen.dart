import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginpage/constans.dart';
import 'package:loginpage/controller/splashcontroller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     Get.find<SplashController>();
    return Scaffold(
      backgroundColor: mediumBlue,
      body: Center(
          child: Text(
        'Todo App',
        style: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );
  }
}

// class share {
//   final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
//   Future<bool> setToken(String token) async {
//     final SharedPreferences prefs = await _prefs;
//     prefs.setString('userToken', token);
//   }

//   Future<String> getToken() async {
//     final SharedPreferences prefs = await _prefs;
//     if (prefs.getString('userToken') == null) {
//       return "";
//     } else {
//       return prefs.getString('userToken');
//     }
//   }
// }
