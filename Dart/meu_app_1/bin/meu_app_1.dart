import 'package:meu_app_1/Service/enviar_notificacao.dart';
import 'package:meu_app_1/classes/pessoa_fisica.dart';
import 'package:meu_app_1/classes/pessoa_juridica.dart';
import 'package:meu_app_1/enum/tipo_notificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = PessoaFisica("José", "Rua 19", "123.456.789-00",
      tipoNotificacao: TipoNotificacao.PUSH_NOTIFICATION);
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica(
      "Empresa 2", "Avenida 01", "1233444718762876",
      tipoNotificacao: TipoNotificacao.EMAIL);
  print(pessoaJuridica1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);
  enviarNotificacao.notificar(pessoaJuridica1);
}
