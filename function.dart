import 'dart:io';

void main() {
  int somatorioDeDivisores(int numInteiro) {
    var somaDosDivisores = 0;
    for (var i = numInteiro - 1; i > 0; i--) {
      if (i % 3 == 0 || i % 5 == 0) {
        somaDosDivisores = somaDosDivisores + i;
      }
    }
    return somaDosDivisores;
  }

  int? numInteiro;
  while (numInteiro == null) {
    print("Informe um numero inteiro positivo: ");
    String? num = stdin.readLineSync();

    numInteiro = int.tryParse(num ?? '-1');
    if (numInteiro != null && numInteiro > 0) {
      print(
          "\nO somatorio dos números é:\n${somatorioDeDivisores(numInteiro)}");
    } else {
      print("Número fornecido inválido.Tente novamente.\n");
      numInteiro = null;
    }
  }
}
