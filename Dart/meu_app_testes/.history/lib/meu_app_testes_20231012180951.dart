// ignore: depend_on_referenced_packages, unused_import
import 'dart:convert';

import 'package:http/http.dart' as http;

double calcularDesconto(double valor, double desconto, bool percentual) {
  if (valor <= 0) {
    throw ArgumentError("O valor do produto não pode ser zero");
  }
  if (desconto <= 0) {
    throw ArgumentError("O valor do desconto não pode ser zero ou negativo");
  }
  if (percentual) {
    return valor - ((valor * desconto) / 100);
  }
  return valor - desconto;
}

Future<Map<dynamic, dynamic>> retornarCEP(String cep) async {
  var uri = Uri.parse("https://viacep.com.br/ws/$cep/json/");
  var retorno = await http.get(uri);
  var decodeResponse = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;
  return decodeResponse;
}
