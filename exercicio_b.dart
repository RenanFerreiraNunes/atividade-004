import 'dart:io';

void main() {
  Map<int, String> nomesMap = {};
  int contador;

  for (contador = 1; contador < 11; contador++) {
    stdout.write('Digite o nome $contador: ');
    String? nome = stdin.readLineSync();

    if (nome!.toLowerCase() == 'sair') {
      break;
    }

    nomesMap.putIfAbsent(contador, () => nome); // adiciona o nome ao mapa usando o método 'putIfAbsent'
  }

  if (contador == 0) { // caso o usuário não digite nenhum nome e saia
    print('Nenhum nome foi digitado.');
  } else {
    print('Nomes escritos:');
    nomesMap.forEach((chave, valor) {
      print(valor);
    });
  }

  print('-'*70);
  print('FIM DO PROGRAMA!');
  print('-'*70);
}