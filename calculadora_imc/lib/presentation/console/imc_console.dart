import '../../core/utils/input_utils.dart';
import '../../domain/services/imc_service.dart';
import '../../domain/entities/imc.dart';

class ImcConsole {
  void executar() {
    print("=== Calculadora de IMC ===");

    double peso = InputUtils.lerNumero("Digite seu peso: ");
    double altura = InputUtils.lerNumero("Digite sua altura: ");

    final service = ImcService();

    double imcValor = service.calcular(peso, altura);
    final classificacao = ImcClassificacao.fromIMC(imcValor);

    print("\nIMC: ${imcValor.toStringAsFixed(2)}");
    print("Classificação: ${classificacao.descricao}");
  }
}