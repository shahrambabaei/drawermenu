import 'package:get/get.dart';
import 'package:loginpage/controller/homecontroller.dart';
import 'package:loginpage/controller/logincontroller.dart';
import 'package:loginpage/controller/splashcontroller.dart';

class MyBiding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
    Get.put<SplashController>(SplashController());
    Get.put<HomeController>(HomeController());
  }
}
