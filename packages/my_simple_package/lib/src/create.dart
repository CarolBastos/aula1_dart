import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_simple_package/src/urls.dart';

import 'models/create_post_model.dart';

Future<void> create(http.BaseClient client, CreatePostModel data) async {
  var body = {"id": data.id, "body": data.body, "title": data.title};
  var dataEncode = jsonEncode(body);
  final response = await client.post(
    Uri.parse(urlBase),
    body: dataEncode,
  );

  if (response.statusCode == 201) {
    var data = jsonDecode(response.body);
    print("POST: $data");
  } else {
    throw Exception('Erro ao criar informação');
  }
}
