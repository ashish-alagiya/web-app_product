import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webappdemo/routes/app_pages.dart';

Future<void> main() async {
  runApp(
    GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
