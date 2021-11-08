import 'package:flutter/material.dart';
import 'package:flutter_personal_demo/app/routes/app_routes.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Personal Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppRoutes.routes,
    );
  }
}
