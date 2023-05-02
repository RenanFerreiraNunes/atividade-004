import 'dart:io';

void main() {
  //Criando meu mapa
  Map<String, dynamic> itens = {};

  //Meu laço pra manter o programa rodando
  while (true) {
    print('='*70);
    print('EXERCÍCIO G: WHILE, SWITCH, FOR IN, WHERE(), REMOVEWHERE()');
    print('='*70);
    print('');
    print('Selecione uma opção: ');
    print('1- Adicionar um item');
    print('2- Exibir todos os itens');
    print('3- Buscar item por nome');
    print('4- Atualizar item');
    print('5- Remover item');
    print('6- Sair');

    //Entrada de dados
    stdout.write('Opção: ');
    int opcao = int.parse(stdin.readLineSync()!);

    //Meu switch 
    switch (opcao) {

      //Adicionar um item
      case 1: 
        //Entrada de dados
        stdout.write('Digite um nome para o item: ');
        String nome = stdin.readLineSync()!;

        stdout.write('Digite a idade do item: ');
        int idade = int.parse(stdin.readLineSync()!);

        stdout.write('Digite um endereço para o item: ');
        String endereco = stdin.readLineSync()!;

        //Adicionando informações no meu mapa
        itens[nome] = {'idade': idade, 'endereço': endereco};
        print('');
        print('Item adicionado com sucesso!');
        print('');
        break;


      //Mostrar todos os itens
      case 2: 
        //Condicional caso não exista itens no meu mapa
        if (itens.isEmpty) {
          print('');
          print('Não existe nenhum item registrado!');
          print('');
          break;
        }

        //Varredura para mostrar meus itens na tela
        print('');
        print('Nomes cadastrados');
        print('');
        for (String nome in itens.keys) {
          print('Nome: $nome, Idade: ${itens[nome]['idade']}, Endereço: ${itens[nome]['endereço']}');
        }
        break;

      //Buscar item por nome
      case 3: 
        //Condicional caso não exista itens no meu mapa
        if (itens.isEmpty) {
          print('');
          print('Não existe nenhum item registrado!');
          print('');
          break;
        }

        stdout.write('Digite o nome a ser buscado: ');
        String busca = stdin.readLineSync()!;

        var itemBuscado = itens.entries.where((e) => e.key == busca);
        //Validação para verificar se o item existe
        if (itemBuscado.isEmpty) {
          print('');
          print('$busca não encontrado!');
          print('');
          break;
        } 
        //Caso o item exista ele será mostrado com meu laço for
        print('='*70);
        print('Resultados da busca');
        print('='*70);
        for (var item in itemBuscado) {
          print('Nome: ${item.key}');
          print('Idade: ${item.value['idade']}');
          print('Endereço ${item.value['endereço']}');
        }
        break;

      //Atualizar item
      case 4: 
        //Condicional caso não exista itens no meu mapa
        if (itens.isEmpty) {
          print('');
          print('Não existe nenhum item registrado!');
          print('');
          break;
        }

        //Pedindo ao usuário qual o nome do item para se atualizado
        stdout.write('Digite o nome do item a ser atualizado: ');
        String busca = stdin.readLineSync()!;

        var itemAtualizado = itens.entries.where((e) => e.key == busca);
        //Validação pra ver se o item existe
        if (itemAtualizado.isEmpty) {
          print('');
          print('$busca não encontrado!');
          print('');
          break;
        }
        //Novas informações do item
        stdout.write('Digite o novo nome: ');
        String novoNome = stdin.readLineSync()!;

        stdout.write('Digite a nova idade: ');
        int novaIdade = int.parse(stdin.readLineSync()!);

        stdout.write('Digite o novo endereço: ');
        String novoEndereco = stdin.readLineSync()!;

        //Adicionando as novas informações no mapa
        itens[busca] = {'idade': novaIdade, 'endereço': novoEndereco}; //Atualiza os valores
        itens[novoNome] = itens.remove(busca); //Atualiza minha chave


        print('');
        print('$busca atualizado com sucesso!');
        print('');
        break;

      case 5: 
        //Condicional caso não exista itens no meu mapa
        if (itens.isEmpty) {
          print('');
          print('Não existe nenhum item registrado!');
          print('');
          break;
        }
        //Removendo o item com o removeWhere()
        stdout.write('Digite o nome do item a ser removido: ');
        String nome = stdin.readLineSync()!;

        if(itens.containsKey(nome)) {
          itens.removeWhere((key, value) => key == nome);
          print('');
          print('$nome removido com sucesso!');
          print('');
          break;
        } 
        
        print('');
        print('$nome não encontrado!');
        print('');
        break;

      case 6: 
        print('Fim do programa');
        return;

      default: 
        print('Opção inválida!');
        break;
    }
  }
}