import 'HttpClient.dart';

class News {
  String search = "";

  final String resource = "https://newsapi.org/v2/everything?q=";

  final String country = "chile";

  final String detailsResource = "&pageSize=2&sortBy=publishedAt&language=";

  final String language = "es";

  String url = "";

  Future generateResource() async {
    String apiKey = '5e2d5cf387554d43a6d80b3f57478ec2';

    url = '$resource$country$detailsResource$language&apiKey=$apiKey';
  }

  News() {
    generateResource();
  }

  void showResource() async {
    HttpClient client = HttpClient();
    final response = await client.get(url);
    print(response);
  }
}
