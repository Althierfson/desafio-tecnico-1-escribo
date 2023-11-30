import 'dart:convert';
import 'dart:io';
import 'package:desafio_tecnico_1_escribo/sum_values_divisible_by_three_or_five.dart';

void main(List<String> arguments) {
  print('Encontre o somatório dos números divisíveis por 3 ou 5.');
  print('Digite um número inteiro positivo: ');
  var line = stdin.readLineSync(encoding: utf8);

  if (line != null) {
    late int n;
    try {
      n = int.parse(line);
    } catch (e) {
      print("O valor digitado não é um número inteiro.");
      print("Programa encerrado.");
      return;
    }

    if (n >= 0) {
      int result = sumValuesDivisibleByThreeOrFive(n);

      if (result != -1) {
        print('O resultado da soma é $result');
        print("Programa encerrado.");
      }
    } else {
      print('O número não pode ser negativo.');
      print("Programa encerrado.");
    }
  } else {
    print("Nem um valor digitado.");
    print("Programa encerrado.");
  }
}
