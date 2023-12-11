import 'package:listing_detail_showcase_app/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  static var client = http.Client();
  static Future<List<Post>?> getPosts() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}
