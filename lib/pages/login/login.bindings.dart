import 'package:get/get.dart';
import 'package:marketsys/pages/login/login.controller.dart';
import 'package:marketsys/pages/new_notify/newnotify.controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotifyController());
    Get.lazyPut(() => LoginController());
  }
}