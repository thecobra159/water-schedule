import 'package:http/http.dart' as http;

Future<String> getJsonData(String url) async {
  var response =
      await http.get(Uri.parse(url), headers: {"Accept": "application/json"});

  return response.body;
}
