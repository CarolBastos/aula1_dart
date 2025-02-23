import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_simple_package/src/urls.dart';

import 'models/create_post_model.dart';

Future<void> updateOne(http.BaseClient client, CreatePostModel data) async {
  var body = {"id": data.id, "body": data.body, "title": data.title};
  var dataEncode = jsonEncode(body);

  final response = await client.put(
    Uri.parse(urlBase),
    body: dataEncode,
  );

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print("PUT: $data");
  } else {
    throw Exception('Erro ao atualizar');
  }
}
