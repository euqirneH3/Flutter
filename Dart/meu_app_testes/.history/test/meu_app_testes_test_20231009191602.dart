import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcular o desconto do produto sem porcentagem', () {
    expect(app.calcularDesconto(valor, desconto, percentual), 42);
  });

  test('calculate1', () {
    expect(calculate(), greaterThan(41));
  });
}
