import 'dart:convert';
import 'dart:io';

import 'package:meu_app_ex/models/aluno.dart';
import 'package:meu_app_ex/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno:");
  var aluno = Aluno(nome);
  double? nota;
  do {
    nota = ConsoleUtils.lerdoubleComTextoComSaida(
        "Digite a nota ou S para sair", "s");
    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);
  print(" As notas digitadas foram:${aluno.getNotas()}");
  print("a média do aluno foi: ${aluno.retornaMedia()}");
  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} aprovado");
  } else {
    print("O aluno ${aluno.getNome()} reprovado");
  }
}
