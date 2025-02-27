import 'package:flutter/widgets.dart';
import 'package:flutter_faculdade/app/routes/app_routes.dart';
import 'package:flutter_faculdade/app/screens/addProdutos_screen.dart';
import 'package:flutter_faculdade/app/screens/home_screen.dart';
import 'package:flutter_faculdade/app/screens/listProdutos.screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final RxString appBarTitle = 'Home'.obs;
  // final box = GetStorage(); // Instância do GetStorage



  void changePage(int index) {
    selectedIndex.value = index;

    switch (selectedIndex.value) {
      case 0:
        appBarTitle.value = 'Home';
        // Get.offNamed(AppRoutes.home); // Remove a tela anterior da pilha
        return;
      case 1:
        appBarTitle.value = 'Adicionar Produto';
        // Get.offNamed(AppRoutes.addProduto); // Remove a tela anterior da pilha
        return;
      case 2:
        appBarTitle.value = 'Listar Produtos';
        // Get.offNamed(AppRoutes.listProdutos); // Remove a tela anterior da pilha
        return;
    }
  }
  
}