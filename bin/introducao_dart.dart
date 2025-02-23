
import 'package:intl/intl.dart';
import 'package:my_simple_package/my_simple_package.dart';

void main(List<String> arguments) async {
  print("inicializando aplicação");
  await findAll();
  await create(CreatePostModel(id: 123, body: "Meu Post flutter 123", title: "Titulo post"));
  await updateOne(CreatePostModel(id: 123, body: "Meu Post flutter update", title: "Titulo post 2"));

  await deleteOne(123);
}
