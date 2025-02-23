import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_simple_package/src/urls.dart';

Future<void> deleteOne(int id) async {
  final response = await http.delete(Uri.parse('$urlBase/$id'));

  if(response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print("DELETE: $data");
  } else {
    throw Exception('Erro ao deletar post');
  }
}