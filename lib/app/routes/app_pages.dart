import 'package:get/get.dart';

import '../modules/add/bindings/add_binding.dart';
import '../modules/add/views/add_view.dart';
import '../modules/articles/bindings/articles_binding.dart';
import '../modules/articles/views/articles_view.dart';
import '../modules/bottombar/bindings/bottombar_binding.dart';
import '../modules/bottombar/views/bottombar_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOMBAR;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMBAR,
      page: () => BottombarView(),
      binding: BottombarBinding(),
    ),
    GetPage(
      name: _Paths.ARTICLES,
      page: () => ArticlesView(),
      binding: ArticlesBinding(),
    ),
    GetPage(
      name: _Paths.ADD,
      page: () => AddView(),
      binding: AddBinding(),
    ),
  ];
}
