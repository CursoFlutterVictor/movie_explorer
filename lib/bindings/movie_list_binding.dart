import 'package:get/get.dart';
import 'package:movie_explorer/controllers/movie_bottom_bar_controller.dart';
import 'package:movie_explorer/controllers/movie_detail_controller.dart';
import 'package:movie_explorer/controllers/movie_list_controller.dart';

// Una clase Binding por cada Controlador
class MovieListBinding extends Bindings {
  // Inyectamos las dependencias del controlador que va a ser lazy
  @override
  void dependencies() {
    Get.lazyPut<MovieListController>(() => MovieListController());
    Get.lazyPut<MovieDetailController>(() => MovieDetailController());
    Get.lazyPut<MovieBottomBarController>(() => MovieBottomBarController());
  }
}
