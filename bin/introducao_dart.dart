
import 'package:my_simple_package/my_simple_package.dart';

void main(List<String> arguments) async {
  print("inicializando aplicação");
  ClientInterceptor client = ClientInterceptor();
  await findAll(client);
  await create(client, CreatePostModel(id: 123, body: "Meu Post flutter 123", title: "Titulo post"));
  await updateOne(client, CreatePostModel(id: 123, body: "Meu Post flutter update", title: "Titulo post 2"));
  await findAll(client);

  await deleteOne(client, 123);
}
