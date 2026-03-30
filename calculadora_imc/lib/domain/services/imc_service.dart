class ImcService {
  double calcular(double peso, double altura) {
    return peso / (altura * altura);
  }

  String classificar(double imc) {
    if (imc < 18.5) return 'Abaixo do peso';
    if (imc < 25) return 'Peso normal';
    if (imc < 30) return 'Sobrepeso';
    return 'Obesidade';
  }
}
