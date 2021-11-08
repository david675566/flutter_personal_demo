import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NoHornyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoHornyController>(() => NoHornyController(), fenix: true);
  }
}

class NoHornyController extends GetxController {
  // Login Data
  final username = "".obs;
  final password = "".obs; // yes, this definitely a no-no design.

  // TextEditingController
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool validateUser() {
    return (usernameController.text == "yee" && passwordController.text == "yee");
  }
}
