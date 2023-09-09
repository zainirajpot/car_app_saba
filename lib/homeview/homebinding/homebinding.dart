import 'package:car_app_saba/homeview/homecontroller/homecontroller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController(
    ));
  }
}