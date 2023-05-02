import 'dart:io';

void main() {
  Map<String, String> contatos = {};

  while (true) {
    print("\nEscolha uma opção:");
    print("1. Inserir nome e telefone");
    print("2. Exibir lista de nomes e telefones");
    print("3. Sair");

    stdout.write("Opção escolhida: ");
    String? opcao = stdin.readLineSync();

    if (opcao == null || opcao.isEmpty) {
      print("Opção inválida!");
      continue;
    }

    switch (int.parse(opcao)) {
      case 1:
        stdout.write("Digite o nome: ");
        String nome = stdin.readLineSync()!;
        stdout.write("Digite o telefone: ");
        String telefone = stdin.readLineSync()!;
        contatos[nome] = telefone;

        print("Digite 'sair' para sair ou pressione Enter para continuar: ");
        String? resposta = stdin.readLineSync();

        if (resposta?.toLowerCase() == "sair") {
          print('FIM DO PROGRAMA');
          return;
        }
        break;

      case 2:
        if (contatos.isEmpty) {
          print("Nenhum contato encontrado!");
        } else {
          print("Lista de contatos:");
          contatos.forEach((nome, telefone) => print("$nome - $telefone"));
        }
        print("Digite 'sair' para sair ou pressione Enter para continuar: ");
        String? resposta = stdin.readLineSync();

        if (resposta?.toLowerCase() == "sair") {
          print('FIM DO PROGRAMA');
          return;
        }
        break;

      case 0:
        print("FIM DO PROGRAMA");
        return;

      default:
        print("Opção inválida!");
        break;
    }
  }
}
