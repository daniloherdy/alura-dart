void main() {
  //Custo Computacional. Posso modificar além do valor, o tipo
  dynamic idade = 30;
  idade = "HAHA";
  
  idade = 30;
  var pi  = 3.1415;

  //Sem custo computacional
  var texto = "Eu tenho $idade anos e o valor de pi é $pi";

  print(texto);
}