import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:loginpage/model/loginmodel.dart';
import 'package:loginpage/screen/homescreen.dart';

class LoginController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<LoginModel> loginModel = LoginModel().obs;
  
  // final loginModel = ;
  // var loginModel = LoginModel().obs;
  var str = "".obs;

  loginData(String userName, String password, bool isRememberMe) async {
    var url = Uri.parse('http://84.241.34.41:7007/api/v1/AuthApi/LoginAsync');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.post(url,
        headers: {'Content-Type': 'application/json', 'accept': 'text/plain'},
        body: convert.jsonEncode({
          "userName": userName,
          "password": password,
          "isRememberMe": isRememberMe
        }));
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      loginModel.value = LoginModel.fromJson(jsonResponse);
      // str.value = loginModel.result.roleName;
      log(loginModel.toString());
      if (loginModel.value.isSuccess == true) {
        final Future<SharedPreferences> _prefs =
            SharedPreferences.getInstance();
        final SharedPreferences prefs = await _prefs;
        prefs.setString('userToken', loginModel.value.result.tokenAccess);
        Get.off(() => HomeScreen());
      } else {
        Get.snackbar('ERROR', 'please enter corrent Ifo',
            duration: Duration(seconds: 3), backgroundColor: Color(0xffff0000));
      }
    }
  }
}
