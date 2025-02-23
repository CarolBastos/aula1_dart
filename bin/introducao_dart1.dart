import 'package:introducao_dart/aula2/cliente.dart';
import 'package:introducao_dart/aula2/livro.dart';
import 'package:introducao_dart/aula2/pedido.dart';
import 'package:introducao_dart/aula2/produto.dart';
import 'package:introducao_dart/aula2/sistema_loja.dart';
import 'package:introducao_dart/introducao_dart.dart' as introducao_dart;


// Future<String> fetchData() {
//   return Future.error({"mensagem": "erro na requisição"});
//   // return Future.delayed(Duration(seconds: 2),() {
//   //   return "Dados carregados";
//   // });
// }

Stream<int> generationNumbers() async* {
  for (var i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    //retorna valores sob demanda
    yield i;
  }
}

void main(List<String> arguments) async {

  print("inicializando geração de numeros...");

  await for (int number in generationNumbers()) {
    print("numero gerado: $number");
  }

  // try {  
  //   //função sincrona
  //   String data = await fetchData();
  //   print(data);
  // } catch (e) {
  //   print("error $e");
  // }

  //função assincrona
  // fetchData()
  // .then((valorRetornado) {
  //   print(valorRetornado);
  // })
  // .catchError((error) {
  //   print("error $error");
  // });

  print("final da requisição");

  // SistemaLoja sistemaObjeto = SistemaLoja(pedidos: []);
  // Cliente clienteObjeto = Cliente(
  //   nome: "Ane Caroline",
  //   email: "email@gmail.com",
  // );

  // Livro livro = Livro(autor: "C.S. Lewis", id: 1, nome: "Crônicas de Nárnia", preco: 100.0);

  // Produto produtoObjeto = Produto(id: 1, nome: "Café", preco: 18.0);
  // Produto produtoObjeto2 = Produto(id: 2, nome: "Açucar", preco: 5.0);

  // List<Produto> carrinho = [];
  // carrinho.add(produtoObjeto);
  // carrinho.add(produtoObjeto2);
  // carrinho.add(livro);

  // Pedido pedidoObjeto = Pedido(cliente: clienteObjeto, items: carrinho);

  // sistemaObjeto.adicionarPedido(pedidoObjeto);
  // sistemaObjeto.listaPedidos();
  // Produto produto = Produto(nome: "ane caroline", id: 2, corParametro: 'verde');
  // Eletronico eletronicoObjeto = Eletronico(
  //   marca: 'xpto',
  //   garantiaMeses: 1,
  //   idParametro: 1,
  //   nomeParametro: 'teste',
  //   corParametro: "cinza",
  // );

  // eletronicoObjeto.detalhesProduto();
  //Trabalhando com maps
  // Map<String, dynamic> estruturaPessoa = {
  //   "nome": "fulano",
  //   "idade": 29,
  //   "endereco": "endereco1",
  //   "conjuge": {
  //     "nome": "fulano da silva"
  //   },
  //   "telefones": [
  //     {
  //       "residencial": "1234"
  //     },
  //     {
  //       "celular": "23423"
  //     }
  //   ]
  // };

  // print(estruturaPessoa['conjuge']['nome']);

  //Trabalhando com SETS
  // var lista = <int>[]; //permite numeros duplicados na lista
  // var collection = <int>{}; //não permite numeros duplicados
  // int x = 1;
  // int y = 1;
  // int z = 2;

  // collection.add(x);
  // collection.add(y);
  // collection.add(z);

  // lista.add(x);
  // lista.add(y);
  // lista.add(z);

  // print(collection);
  // print(lista);

  //Trabalhando com Lists
  // List<int> numerosPares = [];
  // numerosPares.add(1);
  // numerosPares.add(2);
  // numerosPares.add(3);

  // for (var i = 0; i < numerosPares.length; i++) {
  //   int item = numerosPares[i];
  //   print("item: " + item.toString());
  // }

  //Trabalhando com records
  // int numero = 11;
  // final (texto, outroNumero) = introducao_dart.exemploRecord(numero);

  // print(" " + texto + "  " + outroNumero.toString());

  //Trabalhando com booleanos
  // bool valor1 = true;
  // bool valor2 = false;

  // print("valor 1 " + valor1.toString() + " valor 2 " + valor2.toString());

  // if(valor1 == true){
  //   print("valor 1 é verdadeiro");
  // }

  // if(valor2 == true){
  //   print("valor 2 é verdadeiro");
  // }

  //Trabalhando com textos
  // String nome = "joao";
  // String sobrenome = " da silva";
  // print(introducao_dart.concatenandoStrings(nome, sobrenome));

  // Trabalhando com numeros
  // int variavel1 = 1;
  // int variavel2 = 2;

  // print('Resultado numeros inteiros: ${introducao_dart.multiplicacaoNumerosInteiros(variavel1,variavel2)}!');

  // double double1 = 2.2;
  // double double2 = 2.2;

  // print('Resultado números flutuantes: ${introducao_dart.mulplicacaoNumerosDecimais(double1,double2)}!');
}
