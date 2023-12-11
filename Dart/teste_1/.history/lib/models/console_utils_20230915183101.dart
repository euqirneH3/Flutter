import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }
}
