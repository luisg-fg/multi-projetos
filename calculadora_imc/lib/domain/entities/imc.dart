enum ImcClassificacao {
  abaixoPeso,
  normal,
  sobrepeso,
  obesidade1,
  obesidade2,
  obesidade3;

  static ImcClassificacao fromIMC(double imc) {
    return switch (imc) {
      < 18.5 => ImcClassificacao.abaixoPeso,
      < 25 => ImcClassificacao.normal,
      < 30 => ImcClassificacao.sobrepeso,
      < 35 => ImcClassificacao.obesidade1,
      < 40 => ImcClassificacao.obesidade2,
      _ => ImcClassificacao.obesidade3,
    };
  }

  String get descricao {
    return switch (this) {
      ImcClassificacao.abaixoPeso => "Abaixo do peso",
      ImcClassificacao.normal => "Peso normal",
      ImcClassificacao.sobrepeso => "Sobrepeso",
      ImcClassificacao.obesidade1 => "Obesidade grau 1",
      ImcClassificacao.obesidade2 => "Obesidade grau 2",
      ImcClassificacao.obesidade3 => "Obesidade grau 3",
    };
  }
}
