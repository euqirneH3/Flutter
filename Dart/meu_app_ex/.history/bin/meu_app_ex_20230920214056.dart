import 'dart:convert';
import 'dart:io';

import 'package:meu_app_ex/meu_app_ex.dart' as meu_app_ex;

void main(List<String> arguments) {
  print("digite um Numero");
  var line = stdin.readLineSync(encoding: utf8);
  try {
    double numero = double.parse(line ?? "");
  } catch (e) {
    print("Numero invalido: $line");
  }
  print(line);
}
