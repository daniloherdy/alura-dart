void main() {
  ContaCorrente conta = ContaCorrente();
  conta.titular = 'Danilo';
  conta.agencia = 012;
  conta.conta = 123;
  conta.saldo = 150.0;


  print(conta.saldo);
}

class ContaCorrente {
  String titular;
  int agencia = 145;
  int conta;
  double saldo = 0.0;
}