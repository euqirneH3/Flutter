import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerdouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerdoubleComTextoComSaida(String texto, String valorSaida) {
    var value = lerStringComTexto(texto);
    if (value == valorSaida) {
      return null;
    }
    do {
      try {
        return double.parse(value);
      } catch (e) {
        print(texto)
      }
    } while (true);
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerdouble();
  }
}
