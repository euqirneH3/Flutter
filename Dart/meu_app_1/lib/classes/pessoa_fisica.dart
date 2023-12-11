import 'package:meu_app_1/classes/pessoa_abstract.dart';
import 'package:meu_app_1/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(String nome, String endereco, String cpf,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Tipo": "PF",
      "Nome": super.getNome(),
      "Endereço": super.getEndereco(),
      "CPF": _cpf,
      "TipoNotificacao": getTiponotificacao()
    }.toString();
  }
}
