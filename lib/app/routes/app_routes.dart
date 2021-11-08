import 'package:flutter_personal_demo/app/module/home/view/home_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: HomePage.routePath, page: () => HomePage()),
  ];
}
