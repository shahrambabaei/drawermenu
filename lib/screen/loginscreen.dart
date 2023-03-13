import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginpage/constans.dart';
import 'package:loginpage/controller/logincontroller.dart';
import 'package:loginpage/screen/widget/buttonWidget.dart';
import 'package:loginpage/screen/widget/textFieldWidget.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var loginController = Get.find<LoginController>();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: Get.height * .3,
              alignment: Alignment.center,
              width: double.infinity,
              decoration: new BoxDecoration(
                color: mediumBlue,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              child: new Text('Login',
                  style: new TextStyle(
                      color: whiteColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w900))),
         
          Expanded(
            child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 160,),
                          TextFieldWidget(
                              controller: loginController.userNameController,
                              validator: (String value) {
                                if (value == null || value.isEmpty) {
                                  return 'please enter current userName';
                                }
                                return null;
                              },
                              labelText: "UserName",
                              icon: Icons.email_outlined),
                          SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            validator: (String value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter current password';
                              }
                              return null;
                            },
                            labelText: "password",
                            icon: Icons.lock_outline,
                            obscureText: true,
                            suffixIcon: Icons.visibility_off,
                            controller: loginController.passwordController,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                loginController.loginData(
                                    loginController.userNameController.text,
                                    loginController.passwordController.text,
                                    true);
                              }
                            },
                            child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                                primary: mediumBlue,
                                fixedSize:
                                    Size(MediaQuery.of(context).size.width, 55)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ButtonWidget(
                            title: "Sign Up",
                            hasBorder: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
