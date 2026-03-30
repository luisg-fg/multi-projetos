import 'dart:io';

class InputUtils {

  static double lerNumero(String mensagem) {

    while (true) {

      stdout.write(mensagem);
      final input = stdin.readLineSync();

      final valor = double.tryParse(input ?? "");

      if (valor != null && valor > 0) {
        return valor;
      }

      print("Valor inválido.");
    }
  }

}
