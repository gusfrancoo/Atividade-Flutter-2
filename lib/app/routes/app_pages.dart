import 'package:flutter_faculdade/app/controllers/addProdutos_controller.dart';
import 'package:flutter_faculdade/app/controllers/navigation_controller.dart';
import 'package:flutter_faculdade/app/controllers/listProdutos_controller.dart';
import 'package:flutter_faculdade/app/routes/app_routes.dart';
import 'package:flutter_faculdade/app/screens/addProdutos_screen.dart';
import 'package:flutter_faculdade/app/screens/home_screen.dart';
import 'package:flutter_faculdade/app/screens/listProdutos.screen.dart';
import 'package:flutter_faculdade/app/screens/login_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      // binding: BindingsBuilder(() => Get.lazyPut(() => NavigationController(), fenix: true)),
    ),
    GetPage(
      name: AppRoutes.addProduto,
      page: () => AddprodutosScreen(),
      binding: BindingsBuilder(() => Get.lazyPut(() => AddprodutosController()))
    ),
    GetPage(
      name: AppRoutes.listProdutos,
      page: () => ListProdutosScreen(),
      binding: BindingsBuilder(() => Get.lazyPut(() => ListprodutosController()))
    ),
  ];
}