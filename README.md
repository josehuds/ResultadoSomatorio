# Somatório de Números Divisíveis por 3 ou 5

Este projeto implementa uma função em Dart que calcula o somatório de todos os números inteiros menores que um número específico e divisíveis por 3 ou 5.

## Pré-requisitos

- [Dart SDK](https://dart.dev/get-dart): Certifique-se de ter o Dart SDK instalado em sua máquina.

## Instalação

1. **Clone o repositório:**

    ```bash
    git clone https://github.com/josehuds/ResultadoSomatorio.git
    ```

2. **Navegue até o diretório do projeto:**

    ```bash
    cd ResultadoSomatorio
    ```

3. **Instale as dependências:**

    ```bash
    pub get
    ```

    

## Uso

1. **Execute o exemplo:**

    ```bash
    dart nome_do_arquivo.dart
    ```

    Substitua `nome_do_arquivo.dart` pelo nome do arquivo que contém sua função.

2. O programa mostrará o somatório e os números somados para um exemplo específico.

## Exemplo

```dart

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

