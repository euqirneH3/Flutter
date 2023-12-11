import 'package:meu_app_1/Service/notificacao_interface.dart';
import 'package:meu_app_1/classes/pessoa_abstract.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Evinando SMS para: ${pessoa.getNome()}");
  }
}
