double calcularDesconto(double valor, double desconto, bool percentual) {
  if (valor <= 0) {
    new ArgumentError("O valor do produto não pode ser zero")
  }
  if (percentual) {
    return valor - ((valor * desconto) / 100);
  }
  return valor - desconto;
}
