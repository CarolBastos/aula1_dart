int multiplicacaoNumerosInteiros(int numero1, int numero2) {
  return numero1 * numero2;
}

double mulplicacaoNumerosDecimais(double numero1, double numero2) {
  return numero1 * numero2;
}

String concatenandoStrings(String nome, String sobrenome) {
  return nome + sobrenome;
}

(String, int) exemploRecord(int numero){
  if((numero % 2) == 0){
    return ("numero par", numero);
  }

  return ("numero impar", numero);
}
