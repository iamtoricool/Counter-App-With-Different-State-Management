import 'package:get/get.dart';

import '../../../data/counter_repo/counter_repo.dart';

class HomeController extends GetxController {
  final counterRepo = CounterRepo.getInstance();
}
