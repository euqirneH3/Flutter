import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcular o valor do produto com desconto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), equals(850));
  });

  test(
      'Calcular o valor do produto com desconto sem porcentagem passando valo do produto zerado',
      () {
    expect(() => app.calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcular o valor do produto com desconto com porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), equals(850));
  });

  test('Calcular o valor do produto com desconto com porcentagem', () {
    expect(() => app.calcularDesconto(1000, 0, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  group("Calcular o valor do produto com desconto", (){
    var valueToTest = {
      {'valor': 1000, 'desconto': 150, 'persentual': false}: 850,
      {'valor': 1000, 'desconto': 15, 'persentual': true}: 850,
    }
    valuesTOTest.forEach((values, expected){
      expect(
        app.ccalcularDesconto(
          double.parse (values["valor"]), values["desconto"], values["percentual"]),
          equals(expected));
        }
    )
    }
    )
  })
}
