import 'cliente.dart';

class ContaCorrente {
  
  ContaCorrente(int novaAgencia,this.conta) {
    if (novaAgencia > 0) _agencia = novaAgencia;
    totalContaCorrentes++;
  }
  
  static int totalContaCorrentes = 0;

  Cliente titular;
  int _agencia = 145;
  get agencia => _agencia;
  set agencia(int novaAgencia) {
    if (novaAgencia > 0) _agencia = novaAgencia;
  }

  int conta;
  double _saldo = 0.0;
  double chequeEspecial = -100.0;
  

  get saldo {
    return _saldo;
  }

  set saldo(double novoSaldo) {
    if (novoSaldo >= chequeEspecial) {
      _saldo = novoSaldo;
    } else {
      print(
          'Erro! Tentei modificador o valor de saldo para um valor menor que o cheque especial');
    }
  }

  bool saque(double valorSaque) {
    if (!verificaSaldo(valorSaque)) {
      return false;
    } else {
      _saldo -= valorSaque;
      return true;
    }
  }

  double deposito(double valorDeposito) {
    _saldo += valorDeposito;
    return _saldo;
  }

  bool transferencia(double valorTransferencia, ContaCorrente contaDestino) {
    if (!verificaSaldo(valorTransferencia)) {
      return false;
    } else {
      _saldo -= valorTransferencia;
      contaDestino.deposito(valorTransferencia);
      return true;
    }
  }

  bool verificaSaldo(double valor) {
    if (_saldo - valor < chequeEspecial) {
      print('Sem saldo suficiente');
      return false;
    } else {
      print('Movimentando $valor reais');
      return true;
    }
  }
}
