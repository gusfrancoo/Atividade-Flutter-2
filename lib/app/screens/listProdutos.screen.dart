import 'package:flutter/material.dart';
import 'package:flutter_faculdade/app/controllers/listProdutos_controller.dart';
import 'package:flutter_faculdade/utils/widgets/global_scaffold.dart';
import 'package:get/get.dart';

class ListProdutosScreen extends StatelessWidget {
  
  ListProdutosScreen({super.key});
  final ListprodutosController inventarioController =
      Get.find<ListprodutosController>();

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      child:  Column(
        children: [
          Text(
            'TESSSSSTEEEEEE',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black
            ),
          )
        ],
      ),
    );
  }
  
}