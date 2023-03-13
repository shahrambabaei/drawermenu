import 'package:get/get.dart';
import 'package:loginpage/controller/logincontroller.dart';

class HomeController extends GetxController {
  LoginController loginController = Get.find<LoginController>();
  RxSet pageCategoryList = Set().obs;
  // var pageCategoryList = RxSet<dynamic>;
  RxList pageCategoryDashboard = [].obs;
  RxList pageCategoryAccess = [].obs;
  RxList pageCategoryUsers = [].obs;
  RxList pageCategororyOrders = [].obs;
  RxList pageCategoryData = [].obs;
  RxList pageCategoryTraffic = [].obs;
  RxList pageCategoryHardware = [].obs;
  

//  @override
//   void onInit() {

//   loopChangge();
//     super.onInit();
//   }
//
  // List<String> pageCategoryDashboard = [].obs as List<String>;
  // List<String> pageCategoryAccess = [].obs as List<String>;
  // List<String> pageCategoryUsers = [].obs as List<String>;
  // List<String> pageCategororyOrders = [].obs as List<String>;
  // List<String> pageCategoryData = [].obs as List<String>;
  // List<String> pageCategoryTraffic = [].obs as List<String>;
  // List<String> pageCategoryHardware = [].obs as List<String>;
  loopChangge() {
    for (var i = 0;
        i < loginController.loginModel.value.result.pages.length;
        i++) {
      pageCategoryList.add(
          loginController.loginModel.value.result.pages[i].pageCategoryName);
    }
    ;
    for (var i = 0; i < pageCategoryList.length; i++) {
      switch (pageCategoryList.elementAt(i)) {
        case 'داشبورد':
          pageCategoryDashboard
              .add(loginController.loginModel.value.result.pages[i].name);
          break;
        case ' مدیریت سطوح دسترسی':
          pageCategoryAccess
              .add(loginController.loginModel.value.result.pages[i].name);
          break;
        case ' مدیریت کاربران':
          pageCategoryUsers
              .add(loginController.loginModel.value.result.pages[i].name);
          break;
        case ' مدیریت دستورات':
          pageCategororyOrders
              .add(loginController.loginModel.value.result.pages[i].name);
          break;
        case ' مدیریت داده ها':
          pageCategoryData
              .add(loginController.loginModel.value.result.pages[i].name);
          break;

        case 'مدیریت تردد ها':
          pageCategoryTraffic
              .add(loginController.loginModel.value.result.pages[i].name);
          break;
        case ' مدیریت سخت افزار':
          pageCategoryHardware
              .add(loginController.loginModel.value.result.pages[i].name);
          break;
      }
      ;
    }
  }
}
