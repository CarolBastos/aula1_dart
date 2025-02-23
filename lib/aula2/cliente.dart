class Cliente {
  String nome;
  String email;

  Cliente({
    required this.nome,
    required this.email
  });

  void detalhesCLiente(){
    print(" ");
    print('nome: ' + this.nome);
    print('email: ' + this.email);
  }
}