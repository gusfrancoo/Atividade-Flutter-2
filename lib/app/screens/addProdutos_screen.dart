import 'package:flutter/material.dart';
import 'package:flutter_faculdade/app/controllers/addProdutos_controller.dart';
import 'package:flutter_faculdade/utils/widgets/global_scaffold.dart';
import 'package:get/get.dart';

class AddprodutosScreen extends StatelessWidget {

  AddprodutosScreen({super.key});

  final AddProdutosController controller = Get.find<AddProdutosController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'TESSSSSTEEEEEE',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),
        )
      ],
    );
  }
  
}