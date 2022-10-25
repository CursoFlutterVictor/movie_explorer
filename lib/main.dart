import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/routes/app_pages.dart';
import 'package:movie_explorer/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movie Explorer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppPaths.HOME,
      getPages: AppPages.routes,
    );
  }
}
