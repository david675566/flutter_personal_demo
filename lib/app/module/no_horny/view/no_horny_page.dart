import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/no_horny_controller.dart';

class NoHornyPage extends GetView<NoHornyController> {
  static const String routePath = "/no_horny";
  const NoHornyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _snackBarSuccess = SnackBar(content: Text("不可以色色"));
    const _snackBarFailed = SnackBar(content: Text("使用者帳號/密碼錯誤!"));
    final _snackBarBonk = SnackBar(
      duration: const Duration(milliseconds: 1200),
      content: const AspectRatio(
        aspectRatio: 1.2,
        child: Center(
          child: Text("Bonk!", style: TextStyle(fontSize: 31)),
        ),
      ),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(left: 69, right: 69, bottom: Get.height / 3),
    );

    return GetBuilder(
      init: NoHornyController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("No Horny Demo"),
          ),
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(right: 24, left: 24, top: 27, bottom: 69),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Username Input Field
                  TextFormField(
                    controller: this.controller.usernameController,
                    decoration: const InputDecoration(hintText: "使用者帳號"),
                  ),

                  // Password Input Field
                  TextFormField(
                    controller: this.controller.passwordController,
                    decoration: const InputDecoration(hintText: "密碼"),
                    obscureText: true,
                  ),

                  // Button Area
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Clear Button
                        TextButton(
                          child: const Text(
                            "清空",
                          ),
                          onPressed: () {
                            this.controller.usernameController.clear();
                            this.controller.passwordController.clear();
                          },
                        ),
                        // Submit Button
                        TextButton(
                          child: const Text(
                            "登入",
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            final _success = this.controller.validateUser();
                            if (_success) {
                              ScaffoldMessenger.of(context).showSnackBar(_snackBarSuccess);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(_snackBarFailed);
                            }
                          },
                          onLongPress: () {
                            final _success = this.controller.validateUser();
                            if (_success) {
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(_snackBarBonk);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
