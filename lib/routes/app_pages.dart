import 'package:get/get.dart';
import 'package:webappdemo/modules/home_screen/binding/home_binding.dart';
import 'package:webappdemo/modules/home_screen/view/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
