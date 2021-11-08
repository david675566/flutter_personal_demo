import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  static const String routePath = "/";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          key: GlobalKey(),
          appBar: AppBar(
            title: const Text("My Personal Demo"),
          ),
          body: const SafeArea(
            child: Center(
              child: Text("This is my personal demo home page!"),
            ),
          ),
        );
      },
    );
  }
}
