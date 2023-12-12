import 'package:get/state_manager.dart';
import 'package:listing_detail_showcase_app/models/post.dart';
import 'package:listing_detail_showcase_app/services/remote_service.dart';

class PostController extends GetxController {
  // var postList = List<Post>.empty(growable: true).obs;

  // @override
  // void onInit() {
  //   fetchPosts();
  //   super.onInit();
  // }

  // void fetchPosts() async {
  //   var posts = await RemoteService.getPosts();
  //   if (posts != null) {
  //     postList.value = posts;
  //   }
  // }
  var posts = [].obs;
}
