import '../lib/cliente.dart';
import '../lib/contaCorrente.dart';

void main() {
  ContaCorrente conta = ContaCorrente(-123,123);
  
  Cliente cliente1 =  Cliente()
  ..nome = 'Danilo'
  ..cpf = '123.456.789-00'
  ..profissao = 'A';

  conta.titular = cliente1;
  conta.saldo = -101;

  
}
