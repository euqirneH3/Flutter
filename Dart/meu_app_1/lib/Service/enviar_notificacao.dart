import 'package:meu_app_1/Service/impl/notificacao_email.dart';
import 'package:meu_app_1/Service/impl/notificacao_push_notification.dart';
import 'package:meu_app_1/Service/impl/notificacao_sms.dart';
import 'package:meu_app_1/Service/notificacao_interface.dart';
import 'package:meu_app_1/classes/pessoa_abstract.dart';
import 'package:meu_app_1/enum/tipo_notificacao.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTiponotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;

      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}
