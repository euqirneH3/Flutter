import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Sistema de Notas");
  var line = stdin.readLineSync(encoding: utf8);
  try {
    double numero = double.parse(line ?? "");
    print(numero);
  } catch (e) {
    print("Numero invalido: $line");
  } finally {
    print("Executando finally");
  }
}
