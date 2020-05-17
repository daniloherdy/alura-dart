import '../lib/cliente.dart';
import '../lib/contaCorrente.dart';
void main() {
  ContaCorrente conta = ContaCorrente();
  Cliente cliente1 = new Cliente();

  cliente1.nome = 'Danilo';
  cliente1.cpf = '123.456.789-00';
  cliente1.profissao = 'A';

  conta.titular = cliente1;
  conta.saque(200.0);

  print('Saldo de ${conta.titular}: ${conta.saldo}');
}




