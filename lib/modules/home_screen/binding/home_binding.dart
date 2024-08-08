import 'package:get/get.dart';
import 'package:webappdemo/modules/home_screen/controller/homecontroller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
