import 'dart:io';

void main() {
  //Declarando meu mapa
  Map<String, double> produtos = {};

  //Meu laço for
  for (dynamic i = 1; i <= 5; i++) {
    //Entrada de dados
    stdout.write("Digite o nome do produto $i: ");
    String nomeProduto = stdin.readLineSync()!;
    print('');

    stdout.write("Digite o valor do produto $i: ");
    double valorProduto = double.parse(stdin.readLineSync()!);
    print('');

    produtos[nomeProduto] = valorProduto;
  }

  print('Nome\tValor');
  produtos.forEach((chave, valor) {
  print('$chave\t R\$$valor');
  });
}
