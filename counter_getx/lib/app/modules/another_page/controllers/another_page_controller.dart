import 'package:get/get.dart';

import '../../../data/counter_repo/counter_repo.dart';

class AnotherPageController extends GetxController {
  final counterRepo = CounterRepo.getInstance();

  final oldValue = Get.arguments as int;
}
