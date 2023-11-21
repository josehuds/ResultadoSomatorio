class ResultadoSomatorio {
  int somatorio;
  List<int> numerosSomados;

  ResultadoSomatorio(this.somatorio, this.numerosSomados);
}

ResultadoSomatorio somatorioDivisiveis3e5(int numero) {
  int somatorio = 0;
  List<int> numerosSomados = [];

  for (int i = 1; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
      numerosSomados.add(i);
    }
  }

  return ResultadoSomatorio(somatorio, numerosSomados);
}

void main() {
  
  int exemplo = 11;
  ResultadoSomatorio resultado = somatorioDivisiveis3e5(exemplo);
  
 
  print(' ${resultado.somatorio} ,resultado dos numeros somados  ${resultado.numerosSomados.join(', ')}, que são menores que o ${exemplo}  ');
}