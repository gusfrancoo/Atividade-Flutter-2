
import 'dart:convert';

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
  

  Future<void> calcularCep() async {
    print(tipoServico['pac']);
    var params = {
      "nCdServico": tipoServico['pac'],
      "sCepOrigem": 74680020,
      "sCepDestino": 35501261,
      "nvlPeso": 2.0,
      "nCdFormato": "1",
      "nvlComprimento": 120,
      "nvlLargura": 350,
      "nvlAltura": 220
    };


  }


}