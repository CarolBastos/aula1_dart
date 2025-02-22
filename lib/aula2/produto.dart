class Produto {
  final String nome;
  final int id;
  String _cor = "azul"; //encapsulamento

  Produto({
    required this.nome,
    required this.id,
    required String corParametro,
  }) {
    _cor = corParametro;
  }

  void detalhesProduto() {
    print("nome produto: ${this.nome}");
    print("id produto: ${this.id}");
    print("cor produto: ${this._cor}");
  }
}

class Eletronico extends Produto {
  String marca;
  int garantiaMeses;

  Eletronico({
    required this.marca,
    required this.garantiaMeses,
    required String nomeParametro,
    required int idParametro,
    required String corParametro,
  }) : super(corParametro: corParametro, id: idParametro, nome: nomeParametro);

  void _detalhesEletronico() {
    print("marca Eletronico: ${this.marca}");
    print("garantia Eletronico: ${this.garantiaMeses}");
  }

  //polimorfismo
  @override
  void detalhesProduto() {
    super.detalhesProduto();
    _detalhesEletronico();
  }

}
