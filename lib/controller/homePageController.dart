import 'package:get/get.dart';

class HomePageController extends GetxController {
  int tabIndex = 0;

  void changeIndex(int index) {
    tabIndex = index;
    update();
  }
}
