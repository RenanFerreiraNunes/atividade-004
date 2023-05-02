import 'dart:io';

void main() {
  //Criando meu mapa com os estados e suas capitais
  Map<String, String> capitais = {
    'Acre': 'Rio Branco',
    'Alagoas': 'Maceió',
    'Amapá': 'Macapá',
    'Amazonas': 'Manaus',
    'Bahia': 'Salvador',
    'Ceará': 'Fortaleza',
    'Distrito Federal': 'Brasília',
    'Espírito Santo': 'Vitória',
    'Goiás': 'Goiânia',
    'Maranhão': 'São Luís',
    'Mato Grosso': 'Cuiabá',
    'Mato Grosso do Sul': 'Campo Grande',
    'Minas Gerais': 'Belo Horizonte',
    'Pará': 'Belém',
    'Paraíba': 'João Pessoa',
    'Paraná': 'Curitiba',
    'Pernambuco': 'Recife',
    'Piauí': 'Teresina',
    'Rio de Janeiro': 'Rio de Janeiro',
    'Rio Grande do Norte': 'Natal',
    'Rio Grande do Sul': 'Porto Alegre',
    'Rondônia': 'Porto Velho',
    'Roraima': 'Boa Vista',
    'Santa Catarina': 'Florianópolis',
    'São Paulo': 'São Paulo',
    'Sergipe': 'Aracaju',
    'Tocantins': 'Palmas'
  };

  //Criei uma lista separada com os meus estados
  List<String> estados = capitais.keys.toList(); //toList transforma minhas chaves em lista

  //Variável para armazenar o número de tentativas restantes
  int tentativasRestantes = 3;

  //Variável responsável por quebrar meu laço
  bool jogando = true;

  //Laço while
  while (jogando) {
    print('*** Jogo das Capitais ***\n');

    // Embaralha os estados
    estados.shuffle();

    // Pergunta a capital de cada estado em ordem aleatória
    for (String estado in estados) {
      print('Qual é a capital de $estado?');
      String resposta = stdin.readLineSync()!.trim(); //trim tira os espaços

      //Validação pra ver se a pergunta está correta oh mai godi eu sou muito foda
      if (resposta.toLowerCase() == capitais[estado]!.toLowerCase()) {
        print('Resposta correta!');
      } else {
        //Decrementa minhas tentativas
        tentativasRestantes--;
        print('Resposta incorreta. Tente novamente. Tentativas restantes: $tentativasRestantes');

        //Se eu tiver 0 tentativas ele pergunta se quero jogar novamente ou sair
        if (tentativasRestantes == 0) {
          print('Você perdeu o jogo!');
          print('Quer jogar novamente? (sim ou não)');
          String? resposta = stdin.readLineSync()!.trim();
        //Se a resposta for diferente "sim" o sistema irá parar
        if (resposta.toLowerCase() != 'sim') {
          jogando = false;
          break;
      } else {
        tentativasRestantes = 3;
      }
        }
      }
    }

    if (jogando) {
      // Se chegou até aqui, o usuário acertou todas as capitais
      print('\nParabéns, você acertou todas as capitais!');
      print('Quer jogar novamente? (sim ou não)');
      //entrada de dados para verificar se o usuario deseja tentar novamente ou não
      String? resposta = stdin.readLineSync()!.trim();
      //se o usuario não quiser, o jogo acaba
      if (resposta.toLowerCase() != 'sim') {
        jogando = false;
        break;
        //senão, se o usuario quiser continuar, o numero de tentavias restantes será igual a 3
      } else {
        tentativasRestantes = 3;
      }
    }
  }
}
