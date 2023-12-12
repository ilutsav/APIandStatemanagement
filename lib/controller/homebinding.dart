import 'package:get/get.dart';
import 'package:listing_detail_showcase_app/controller/postController.dart';
import 'homePageController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(HomePageController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<PostController>(() => PostController());
  }
}
