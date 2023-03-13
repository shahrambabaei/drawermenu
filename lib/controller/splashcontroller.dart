import 'package:get/get.dart';
import 'package:loginpage/screen/loginscreen.dart';
import 'package:loginpage/screen/homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onInit() {

    _handleScreen();
    super.onInit();
  }

  void _handleScreen() async {
    await Future.delayed(Duration(seconds: 3));
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    Get.off(() => LoginScreen(),
        transition: Transition.upToDown, duration: Duration(milliseconds: 800));
    // if (prefs.getString('userToken') == null) {
    //   Get.off(() => LoginScreen(),
    //       transition: Transition.upToDown,
    //       duration: Duration(milliseconds: 800));
    // } else {
    //   Get.to(() => HomeScreen(),
    //       transition: Transition.upToDown,
    //       duration: Duration(milliseconds: 800));
    // }
  }
}
