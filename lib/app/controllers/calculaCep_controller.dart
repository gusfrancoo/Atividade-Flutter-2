
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_faculdade/app/models/freteResponse.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CalculaCepController extends GetxController {
  // TextFields
  final TextEditingController cepDestino = TextEditingController();
  final TextEditingController cepOrigem = TextEditingController();
  final TextEditingController peso = TextEditingController();
  final TextEditingController comprimento = TextEditingController();
  final TextEditingController altura = TextEditingController();
  final TextEditingController largura = TextEditingController();


  final RxList<FreteResponse> frete = <FreteResponse>[].obs;
  final box = GetStorage(); // Instância do GetStorage

  final Map<String, dynamic> tipoServico = {
    'sedex': "04014",
    'pac': "04510",
  };

  final Map<String, dynamic> respostaApi = {
        "cepDestino": "cepDestino 3",
        "cepOrigem": "cepOrigem 3",
        "peso": 88,
        "cdServico": 36,
        "valorFrete": 52,
        "prazoEntrega": "9",
        "id": "3",
        "nCdServico": "04510",
        "sCepOrigem": 35501261,
        "sCepDestino": 74680020,
        "nvlPeso": 2,
        "nCdFormato": "1",
        "nvlComprimento": 23,
        "nvlLargura": 5,
        "nvlAltura": 8
    };

  final RxString prazoEntrega = 'Faça o cálculo do Frete'.obs; 
  final RxDouble valorFrete = 0.0.obs; 


  
  Future<void> calcularCep() async {

    final String cepDestinoValue = cepDestino.text;
    final String cepOrigemValue = cepOrigem.text;
    final String pesoValue = peso.text;
    final String comprimentoValue = comprimento.text;
    final String larguraValue = largura.text;
    final String alturaValue = altura.text;

    // Validação simples: verifica se algum campo está vazio
    if (cepDestinoValue.isEmpty ||
        cepOrigemValue.isEmpty ||
        pesoValue.isEmpty ||
        comprimentoValue.isEmpty ||
        larguraValue.isEmpty ||
        alturaValue.isEmpty) {
      // Exibe mensagem de erro no canto inferior da tela
      Get.snackbar(
        "Erro",
        "Preencha todos os campos antes de continuar",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red

      );
      return; // Impede a continuação se a validação falhar
    }


    final int sCepOrigemValue = int.tryParse(cepOrigemValue) ?? 0;
    final int sCepDestinoValue = int.tryParse(cepDestinoValue) ?? 0;
    final double nvlPesoValue = double.tryParse(pesoValue) ?? 0.0;
    final int nvlComprimentoValue = int.tryParse(comprimentoValue) ?? 0;
    final int nvlLarguraValue = int.tryParse(larguraValue) ?? 0;
    final int nvlAlturaValue = int.tryParse(alturaValue) ?? 0;

    var params = {
      // "nCdServico": 4230,
      "sCepOrigem": sCepOrigemValue,
      "sCepDestino": sCepDestinoValue,
      "nvlPeso": nvlPesoValue,
      "nCdFormato": "1",
      "nvlComprimento": nvlComprimentoValue,
      "nvlLargura": nvlLarguraValue,
      "nvlAltura": nvlAlturaValue
    };
    print(params);
    final dio = Dio();

    try {
      //REQUISIÇÃO EM API MOCK TESTE (PODE NAO FUNCIONAR), UTILIZAREI FLUXO DE TESTE PARA REPRESENTAR UMA UTILIZAÇÃO DE API EXTERNA 
      // final response = await dio.post(
      //   "https://67de0d95471aaaa7428325b6.mockapi.io/api/aula_poo/calcular-frete/frete",
      //   data: jsonEncode(params),
      // );

      //utilizando uma API real usariamos: prazoEntrega.value = response.data['frete']['prazoEntrega']

      prazoEntrega.value = respostaApi['prazoEntrega'] + ' dias úteis'; 
      valorFrete.value = respostaApi['valorFrete']; 

    } catch (e) {
      print("Erro ao calcular frete: $e");
    }
  }


}