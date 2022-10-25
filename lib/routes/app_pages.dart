import 'package:get/get.dart';
import 'package:movie_explorer/bindings/movie_list_binding.dart';
import 'package:movie_explorer/pages/home.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: MovieListBinding(),
    )
  ];
}
