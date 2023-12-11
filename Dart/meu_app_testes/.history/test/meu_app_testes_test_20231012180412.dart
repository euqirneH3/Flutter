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

  // group("Calcular o valor do produto com desconto", () {
  //   var valueToTest = {
  //     {'valor': 1000, 'desconto': 150, 'persentual': false}: 850,
  //     {'valor': 1000, 'desconto': 15, 'persentual': true}: 850,
  //   };
  //   valuesToTest.forEach((values, expected) {
  //       expect(
  //           app.calcularDesconto(
  //               double.parse(values["valor"].toString()),
  //               double.parse(values["desconto"].toString()),
  //               values["percentual"] == true),
  //           equals(expected));
  //   });
  // });

  // group("Calcula o valor do produto com desconto", () {
  //   var valuesToTest = {
  //     {'valor': 1000, 'desconto': 150, 'percentual': false}: 850,
  //     {'valor': 1000, 'desconto': 15, 'percentual': true}: 850,
  //   };
  //   var values;
  //   var expected;
  //   test('$values: $expected', () {
  //     valuesToTest.forEach((values, expected) {
  //       expect(
  //           app.calcularDesconto(
  //               double.parse(values["valor"].toString()),
  //               double.parse(values["desconto"].toString()),
  //               values["percentual"] == 'true'),
  //           equals(expected));
  //     });
  //   });
  // });

  test('Retornar Cep', () async {
    var body = await app.retornarCEP("54270805");
    print(body);
    expect(body["bairro"], equals("Curado"));
  });
}
