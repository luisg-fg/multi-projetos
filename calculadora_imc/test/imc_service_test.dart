import 'package:test/test.dart';
import 'package:calculadora_imc/domain/services/imc_service.dart';

void main() {
  late ImcService service;

  setUp(() {
    service = ImcService();
  });

  group('Calculo de IMC', () {
    test('Deve calcular IMC corretamente', () {
      final resultado = service.calcular(70, 1.75);

      expect(resultado, closeTo(22.85, 0.01));
    });

    test('Deve classificar como Abaixo do peso', () {
      final resultado = service.classificar(17);

      expect(resultado, 'Abaixo do peso');
    });

    test('Deve classificar como Peso normal', () {
      final resultado = service.classificar(22);

      expect(resultado, 'Peso normal');
    });

    test('Deve classificar como Sobrepeso', () {
      final resultado = service.classificar(27);

      expect(resultado, 'Sobrepeso');
    });

    test('Deve classificar como Obesidade', () {
      final resultado = service.classificar(32);

      expect(resultado, 'Obesidade');
    });
  });
}
