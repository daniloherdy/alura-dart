import '../lib/cliente.dart';
import '../lib/contaCorrente.dart';

void main() {
  ContaCorrente conta = ContaCorrente();
  
  Cliente cliente1 =  Cliente()
  ..nome = 'Danilo'
  ..cpf = '123.456.789-00'
  ..profissao = 'A';

  conta.titular = cliente1;
  conta.saque(200.0);

  print('Saldo de ${conta.titular}: ${conta.saldo}');
}
