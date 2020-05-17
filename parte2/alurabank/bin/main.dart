void main() {
  ContaCorrente conta = ContaCorrente();

  conta.titular = 'Danilo';
  conta.saque(200.0);

  print('Saldo de ${conta.titular}: ${conta.saldo}');
}

class ContaCorrente {
  String titular;
  int agencia = 145;
  int conta;
  double saldo = 0.0;
  double chequeEspecial = -100.0;

  bool saque(double valorSaque) {
    if (!verificaSaldo(valorSaque)) {
      return false;
    } else {
      saldo -= valorSaque;
      return true;
    }
  }

  double deposito(double valorDeposito) {
    saldo += valorDeposito;
    return saldo;
  }

  bool transferencia(double valorTransferencia, ContaCorrente contaDestino) {
    if (!verificaSaldo(valorTransferencia)) {
      return false;
    } else {
      saldo -= valorTransferencia;
      contaDestino.deposito(valorTransferencia);
      return true;
    }
  }

  bool verificaSaldo(double valor) {
    if (saldo - valor < chequeEspecial) {
      print('Sem saldo suficiente');
      return false;
    } else {
      print('Movimentando $valor reais');
      return true;
    }
  }
}
