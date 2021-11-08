import 'package:get/get.dart';

// Local Modules
import 'package:flutter_personal_demo/app/module/home/view/home_page.dart';
import 'package:flutter_personal_demo/app/module/no_horny/view/no_horny_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: HomePage.routePath, page: () => const HomePage()),
    GetPage(name: NoHornyPage.routePath, page: () => const NoHornyPage()),
  ];
}
