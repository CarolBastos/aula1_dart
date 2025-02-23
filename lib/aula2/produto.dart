class Produto {
  int id;
  String nome;
  double preco;

  Produto({required this.id, required this.nome, required this.preco});

  void detalhesProduto() {
    print("id: $id");
    print("nome: $nome");
    print("preço: $preco");
  }
}
