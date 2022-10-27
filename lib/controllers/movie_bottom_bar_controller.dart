import 'package:get/get.dart';

class MovieBottomBarController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt prevSelectedIndex = 0.obs;

  void selectButton(int index) {
    prevSelectedIndex.value = selectedIndex.value;
    selectedIndex.value = index;

    switch (index) {
      case 0:
        Get.toNamed("/");
        break;
      case 1:
        Get.toNamed("/SEARCH");
        break;
    }
  }
}
