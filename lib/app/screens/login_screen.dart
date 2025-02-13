import 'package:flutter_faculdade/app/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  



   @override
   Widget build(BuildContext context) {

    final RxString teste = ''.obs;
    void testeFunction(){

    }
    return Scaffold(

      body: 
      Obx(() {
        return 
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Usuario',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey), // Cor da borda
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),

                    ),
                    const SizedBox(height: 15,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey), // Cor da borda
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child:     
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: FloatingActionButton(
                                onPressed:() {
                                  if (teste.isEmpty) {
                                    
                                    teste.value = 'jhbjhbdbhsdbvbs v';
                                  } else {
                                    teste.value = '';
                                  }
                                },
                                backgroundColor: Colors.blue.shade700,
                                elevation: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Entrar',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Icon(
                                      Icons.login,
                                      size: 25,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                    Text(
                      teste.value,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    )

                  ],
                ),
              ),
            ),
          );
      },)
    );
   }
   
  
}