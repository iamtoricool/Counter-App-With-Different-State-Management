import 'package:get/get.dart';

import '../controllers/another_page_controller.dart';

class AnotherPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnotherPageController>(
      () => AnotherPageController(),
    );
  }
}
