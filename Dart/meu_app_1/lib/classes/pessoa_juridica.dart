import 'package:meu_app_1/classes/pessoa_abstract.dart';
import 'package:meu_app_1/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  void setCpf(String cnpj) {
    _cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      "Tipo": "PJ",
      "Nome": super.getNome(),
      "Endereço": super.getEndereco(),
      "CNPJ": _cnpj,
      "TipoNotificacao": getTiponotificacao()
    }.toString();
  }
}
