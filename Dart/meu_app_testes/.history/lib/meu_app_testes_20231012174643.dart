// ignore: depend_on_referenced_packages, unused_import
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

retornarCEP(String cep) {
  http.get("https://viacep.com.br/ws/01001000/json/");
}
