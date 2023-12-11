import 'package:meu_app_1/Service/notificacao_interface.dart';
import 'package:meu_app_1/classes/pessoa_abstract.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Evinando Email para: ${pessoa.getNome()}");
  }
}
