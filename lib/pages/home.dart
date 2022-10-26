import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/controllers/movie_bottom_bar_controller.dart';
import 'package:movie_explorer/controllers/movie_list_controller.dart';
import 'package:movie_explorer/widgets/movie_bottom_bar.dart';
import 'package:movie_explorer/widgets/movie_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MovieListController movieListController = Get.find();
    MovieBottomBarController bottomBarController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Explorer"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            movieListController.fillList();
          }),
      body: Obx(() {
        // Al abrir la app estaremos en la home, con los populares.
        // Se cargara solo la primera vez
        if (bottomBarController.selectedIndex.value == 0) {
          if (!movieListController.loaded.value) {
            movieListController.fillList();
          }
          return MovieListView(movieList: movieListController.movieList.value);
        } else {
          return const Text("");
        }
      }),
      bottomNavigationBar: const MovieBottomBar(),
    );
  }
}
