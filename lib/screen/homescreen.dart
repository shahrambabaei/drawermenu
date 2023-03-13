import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginpage/constans.dart';
import 'package:loginpage/controller/logincontroller.dart';
import 'package:loginpage/model/menuDrawer.dart';

class HomeScreen extends StatelessWidget {
  LoginController loginController = Get.find<LoginController>();
  Set<String> pageCategoryList = {};
  List<MenuDrawer> menuDrawer = [];
  List<SubMenu> subMenu = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 0;
        i < loginController.loginModel.value.result.pages.length;
        i++) {
      pageCategoryList.add(
          loginController.loginModel.value.result.pages[i].pageCategoryName);
    }
    for (var i = 0; i < pageCategoryList.length; i++) {
      subMenu = [];
      for (var j = 0;
          j < loginController.loginModel.value.result.pages.length;
          j++) {
        if (pageCategoryList.elementAt(i) ==
            loginController.loginModel.value.result.pages[j].pageCategoryName) {
          subMenu.add(SubMenu(
            name: loginController.loginModel.value.result.pages[j].name,
            address: loginController.loginModel.value.result.pages[j].address,
            description:
                loginController.loginModel.value.result.pages[j].description,
            pageCategoryOrder: loginController
                .loginModel.value.result.pages[j].pageCategoryOrder
                .toString(),
            pageCategoryName: loginController
                .loginModel.value.result.pages[j].pageCategoryName,
          ));
        }
      }
      menuDrawer.add(MenuDrawer(
          nameCategory: pageCategoryList.elementAt(i), subMenu: subMenu));
    }

    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(title: Text('HomeScreen')),
          drawer: Drawer(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: ListView(children: [
                DrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(color: Colors.blue.shade300),
                    child: Container(
                        child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/image/img.jpg'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Shahram Babaei')
                      ],
                    ))),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    height: Get.height * .7,
                    child: ListView.builder(
                        itemCount: pageCategoryList.length,
                        itemBuilder: (c, i) {
                          return ExpansionTile(
                            title: Text(pageCategoryList.elementAt(i)),
                            childrenPadding: EdgeInsets.only(right: 10),
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: menuDrawer[i].subMenu.length,
                                itemBuilder: (c, j) {
                                  return ListTile(
                                      title: new Text(
                                    menuDrawer[i].subMenu[j].name,
                                    style: TextStyle(fontSize: 16),
                                  ));
                                },
                              ),
                            ],
                          );
                        }),
                  ),
                ),
              ])),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(loginController.loginModel.value.isSuccess.toString())
            ],
          )),
        ));
  }

}
