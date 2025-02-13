import 'package:flutter/material.dart';
import 'package:flutter_faculdade/app/routes/app_pages.dart';
import 'package:flutter_faculdade/app/routes/app_routes.dart';
import 'package:flutter_faculdade/app/screens/login_screen.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Teste Flutter',
      getPages: AppPages.routes,
      initialRoute: AppRoutes.login,
    );
  }
}

