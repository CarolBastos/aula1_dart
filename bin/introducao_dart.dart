import 'package:introducao_dart/aula2/produto.dart';
import 'package:introducao_dart/introducao_dart.dart' as introducao_dart;

void main(List<String> arguments) {
  Produto produto = Produto(nome: "ane caroline", id: 2, corParametro: 'verde');
  Eletronico eletronicoObjeto = Eletronico(
    marca: 'xpto',
    garantiaMeses: 1,
    idParametro: 1,
    nomeParametro: 'teste',
    corParametro: "cinza",
  );

  eletronicoObjeto.detalhesProduto();
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
