import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpClient {
  String url = "";

  HttpClient() {
    //url = _url;
  }

  get(url) async {
    Uri uri = Uri.parse(url as String);
    final response = await http.get(uri);
    print("***");
    print(response);
    return response;
  }
}
