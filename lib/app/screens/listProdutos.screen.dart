import 'package:flutter/material.dart';
import 'package:flutter_faculdade/app/controllers/addProdutos_controller.dart';
import 'package:flutter_faculdade/app/controllers/listProdutos_controller.dart';
import 'package:flutter_faculdade/utils/widgets/global_scaffold.dart';
import 'package:get/get.dart';

class ListProdutosScreen extends StatelessWidget {
  
  ListProdutosScreen({super.key});

  // final ListprodutosController controller =
  //     Get.find<ListprodutosController>(); //Finalizar depois criando lógica para buscar itens da visualização

  final AddProdutosController controller = Get.find<AddProdutosController>();


  @override
  Widget build(BuildContext context) {
    return 
    Obx(() {
      return 
        Column(
          children: [
            controller.products.length > 0 ?
              SingleChildScrollView(
                child: SizedBox(
                  height: 50,
                  child: 
                  
                    Card(
                      color: Colors.white70,
                      child: 
                      ListView.builder(
                        itemCount: controller.products.length,
                        
                        itemBuilder: (context, index) {
                        final product = controller.products[index];
                          return ListTile(
                              // leading: Image.network(product.imageUrl,
                              //     width: 50, height: 50, fit: BoxFit.cover),
                              title: Text(product.name),
                              subtitle: Text("R\$ ${product.price.toStringAsFixed(2)}"),
                              trailing: IconButton(
                                icon: Icon(Icons.delete, color: Colors.red),
                                onPressed: () =>
                                    controller.products.removeAt(index),
                              ),
                            );
                          },
                      ),
                    ),
                  ),
              ) 
            : 
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.not_interested),
                      Text(
                        'Ainda não há produtos',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      )
                    ],
                  ),
                )
              )
          ],
        );
    },);
  }
}
