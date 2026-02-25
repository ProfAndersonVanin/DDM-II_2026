import 'dart:io'; // Biblioteca para ler do teclado

void main() {
  print("--- Calculadora de IMC ---");

  // 1. Entrada de Dados
  print("Digite seu peso (kg):");
  // O readLineSync retorna uma String? (pode ser nulo), por isso o '!'
  String? inputPeso = stdin.readLineSync();

  print("Digite sua altura (m):");
  String? inputAltura = stdin.readLineSync();

  // 2. Conversão e Validação (Tratamento básico)
  if (inputPeso != null && inputAltura != null) {
    // Convertendo String para double
    double peso = double.parse(inputPeso);
    double altura = double.parse(inputAltura);

    // 3. Processamento
    double imc = peso / (altura * altura);

    // 4. Saída formatada
    print("Seu IMC é: ${imc.toStringAsFixed(2)}"); // Limita a 2 casas decimais

    // 5. Lógica de Decisão
    if (imc < 18.5) {
      print("Classificação: Abaixo do peso");
    } else if (imc < 24.9) {
      print("Classificação: Peso normal");
    } else if (imc < 29.9) {
      print("Classificação: Sobrepeso");
    } else {
      print("Classificação: Obesidade");
    }
  } else {
    print("Erro: Dados inválidos.");
  }
}
