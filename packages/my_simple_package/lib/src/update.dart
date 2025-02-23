import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_simple_package/src/urls.dart';

import 'models/create_post_model.dart';

Future<void> updateOne(CreatePostModel data) async {
  var body = {"id": data.id, "body": data.body, "title": data.title};
  var dataEncode = jsonEncode(body);

  final response = await http.put(
    Uri.parse(urlBase),
    headers: {
      'accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: dataEncode,
  );

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print("PUT: $data");
  } else {
    throw Exception('Erro ao atualizar');
  }
}
