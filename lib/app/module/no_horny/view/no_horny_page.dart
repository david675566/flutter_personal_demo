import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/no_horny_controller.dart';

class NoHornyPage extends GetView<NoHornyController> {
  static const String routePath = "/no_horny";
  const NoHornyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _snackBar = SnackBar(content: Text("不可以色色"));

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
                            final sucess = this.controller.validateUser();
                            if (sucess) {
                              ScaffoldMessenger.of(context).showSnackBar(_snackBar);
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
