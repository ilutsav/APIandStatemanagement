import 'package:get/get.dart';

class HomePageController extends GetxController {
  var tabIndex = 0;

  void changeIndex(int index) {
    tabIndex = index;
    update();
  }
}
