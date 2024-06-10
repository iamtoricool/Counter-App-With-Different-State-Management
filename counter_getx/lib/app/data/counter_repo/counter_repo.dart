import 'package:get/get.dart';

class CounterRepo {
  /// Singleton Instance Function
  CounterRepo._();
  static CounterRepo? _instance;
  factory CounterRepo.getInstance() => _instance ??= CounterRepo._();
  void dispose() => _instance = null;

  RxInt count = RxInt(0);
  void increment() => count.value += 1;
  void decrement() => count.value -= 1;
}
