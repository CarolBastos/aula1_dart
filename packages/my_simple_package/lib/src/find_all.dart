import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_simple_package/src/urls.dart';

Future<void> findAll() async {
  final response = await http.get(Uri.parse(urlBase));

  if(response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print("GET: $data");
  } else {
    throw Exception('Erro ao pegar informações');
  }
}