import 'package:get/get.dart';

import '../modules/another_page/bindings/another_page_binding.dart';
import '../modules/another_page/views/another_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ANOTHER_PAGE,
      page: () => const AnotherPageView(),
      binding: AnotherPageBinding(),
    ),
  ];
}
