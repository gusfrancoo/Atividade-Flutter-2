import 'dart:convert';
import 'package:http/http.dart' as http;

// Enum para os tipos de serviço de envio
enum TipoEnvio {
  sedex('04014'),
  pac('04510'),
  desconhecido('');

  final String codigo;
  const TipoEnvio(this.codigo);

  // Método para converter código para TipoEnvio
  static TipoEnvio fromCodigo(String codigo) {
    return TipoEnvio.values.firstWhere(
      (e) => e.codigo == codigo,
      orElse: () => TipoEnvio.desconhecido,
    );
  }
}

// Modelo para a resposta da API dos Correios
class FreteResponse {
  final TipoEnvio servico;
  final double valor;
  final int prazo;

  FreteResponse({
    required this.servico,
    required this.valor,
    required this.prazo,
  });

  // Factory method para criar um objeto a partir de JSON
  factory FreteResponse.fromJson(Map<String, dynamic> json) {
    return FreteResponse(
      servico: TipoEnvio.fromCodigo(json['nCdServico']),
      valor: (json['valor'] as num).toDouble(),
      prazo: json['prazo'] as int,
    );
  }

  // Método para converter o objeto de volta para JSON
  Map<String, dynamic> toJson() {
    return {
      'servico': servico.codigo,
      'valor': valor,
      'prazo': prazo,
    };
  }
}