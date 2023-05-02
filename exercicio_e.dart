import 'dart:io';

void main() {
    print('='*70);
    print('EXERCICIO E: FOR, FOREACH E REDUCE');
    print('='*70);

    //Entrada de dados pra pedir o nome do aluno
    stdout.write('Informe o nome do aluno: ');
    String nome = stdin.readLineSync()!;

    //Declarando o meu map
    Map<int, double> notas = {};

    //Meu for para pedir as 4 notas do aluno
    for (int i = 1; i <= 4; i++) {
        //Entrada de dados da nota
        stdout.write('Informe a $iº nota: ');
        double nota = double.parse(stdin.readLineSync()!);
        //Usando a iteradora como chave
        notas[i] = nota;
    }

    //Usando o foreach pra varrer meu código
    //Usei uma variavel "soma" para iterar meus valores
    double soma = 0;
    notas.forEach((key, value) => (soma += value));

    //Depois o reduce pra fazer a média
    double media = notas.values.reduce((a, b) => a + b) / notas.length;

    //Saida
    print('Médias do aluno:');
    print('$nome: $media');
}