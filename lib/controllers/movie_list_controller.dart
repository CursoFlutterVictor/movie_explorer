import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movie_explorer/models/movie_list_model.dart';
import 'package:movie_explorer/services/movies_service.dart';

class MovieListController extends GetxController {
  final Rx<MovieList?> movieList = MovieList().obs;
  RxBool loaded = false.obs;

  Future<void> fillList() async {
    MovieList? list = await ServiceGetMovies.getPopularMovies(page: 1);
    movieList.value = list;
    loaded.value = true;
  }
}
