import "package:http/http.dart" as http;
import "dart:io";

void main() async {

  String? end = stdin.readLineSync()!;
  String url = "https://cdpt.in/shorten?url=";

  if (!end.contains("http")) {
    print("Please, Enter A Valid URL");
    stdin.readLineSync();
    exit(0);
  }
  url = url + Uri.encodeComponent(end);
  final request = await http.get(Uri.parse(url));
  print("Shortened $end is " + request.body);
  stdin.readLineSync();
}