import 'package:get/get.dart';
import 'package:movie_explorer/models/movie_list_model.dart';

class MovieDetailController extends GetxController {
  final Rx<MovieResult?> selectedMovie = MovieResult().obs;

  void foo() {}
}
