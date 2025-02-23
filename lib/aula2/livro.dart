import 'package:introducao_dart/aula2/produto.dart';

class Livro extends Produto {
  String autor;
  Livro({required this.autor, required super.id, required super.nome, required super.preco});
  
}