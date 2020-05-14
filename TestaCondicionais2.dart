void main() {
  print("Testando condicionais");
  int idade = 17;

  bool maiorIdade = idade >= 18;
  bool acompanhado = true;
  if(maiorIdade) {
    print("Você é maior de idade, pode entrar!");
  } 
  else {
    if(acompanhado) {
      print("Você é menor de idade, mas está acompanhado. Pode entrar");
    } 
    else {
      print("Você é menor de idade, não pode entrar");
    }
  }
}