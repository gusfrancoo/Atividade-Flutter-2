import 'package:flutter/material.dart';
import 'package:flutter_faculdade/app/controllers/calculaCep_controller.dart';
import 'package:get/get.dart';

class CalculacepScreen extends StatelessWidget {

  CalculacepScreen({super.key});

  final CalculaCepController controller = Get.find<CalculaCepController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: TextField(
                      controller: controller.cepOrigem,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green.shade100)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 1)),
                        labelStyle: TextStyle(
                          color: Colors.black
                        ),
                        labelText: 'CEP origem',
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: TextField(
                      controller: controller.cepDestino,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green.shade100)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 1)),
                        labelStyle: TextStyle(
                          color: Colors.black
                        ),
                        labelText: 'Cep destino',
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: TextField(
                      controller: controller.peso,
                      
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green.shade100)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 1)),
                        labelStyle: TextStyle(
                          color: Colors.black
                        ),
                        labelText: 'Peso',
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    
                    child: TextField(
                      controller: controller.comprimento,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green.shade100)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 1)),
                        labelStyle: TextStyle(
                          color: Colors.black
                        ),
                        labelText: 'Comprimento',
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    
                    child: TextField(
                      controller: controller.largura,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green.shade100)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 1)),
                        labelStyle: TextStyle(
                          color: Colors.black
                        ),
                        labelText: 'Largura',
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    
                    child: TextField(
                      controller: controller.altura,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green.shade100)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 1)),
                        labelStyle: TextStyle(
                          color: Colors.black
                        ),
                        labelText: 'Altura',
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            controller.calcularCep();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade800, // Cor do botão
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Borda arredondada
                            ),
                            elevation: 5, // Sombra para efeito 3D
                          ),
                          child: Text(
                            'Calcular CEP',
                            style: const TextStyle(
                              color: Colors.white, // Cor do texto
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          child: Column(
                            children: [
                              Text(
                                'Prazo de Entrega: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                controller.prazoEntrega.value 
                              ),
                        
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          child: Column(
                            children: [
                              Text(
                                'Valor Frete: ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                controller.valorFrete.value.toStringAsFixed(2)
                              ),
                        
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
      
    },
    );
    
  }
  
}