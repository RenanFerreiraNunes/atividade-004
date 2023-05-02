import 'dart:io';

void main() {

  print('-'*70);
  print('EXERCICIO A: FOR E FOREACH');
  print('-'*70);
  
  Map<int, int> numeros = {};

  // Pedir ao usuário para digitar 10 números
  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o ${i + 1}º número: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeros[i] = numero;
  }
  
  // Imprimir os números usando um loop forEach
  print("Números digitados:");
  numeros.forEach((chave, valor) => print(valor));

  print('-'*70);
  print('FIM DO PROGRAMA');
  print('-'*70);
  
}
