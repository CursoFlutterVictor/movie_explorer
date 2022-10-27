import 'package:flutter/material.dart';
import 'package:movie_explorer/widgets/movie_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/controllers/movie_bottom_bar_controller.dart';
import 'package:movie_explorer/controllers/movie_list_controller.dart';
import 'package:movie_explorer/widgets/movie_list_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    MovieListController movieListController = Get.find();
    MovieBottomBarController bottomBarController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: Obx(() {
        // Al abrir la app estaremos en la home, con los populares.
        // Se cargara solo la primera vez
        if (bottomBarController.selectedIndex.value == 1) {
          if (movieListController.searchLoaded.value) {
            return MovieListView(
                movieList: movieListController.searchMovieList.value);
          } else {
            return const Text("");
          }
        } else {
          return const Text("");
        }
      }),
      bottomNavigationBar: const MovieBottomBar(),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  MovieListController movieListController = Get.find();

  @override
  void showResults(BuildContext context) {
    movieListController.fillSearchList(query: query);
    close(context, query);
  }

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back));

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = "";
              }
            },
            icon: const Icon(Icons.clear))
      ];

  @override
  Widget buildResults(BuildContext context) {
    return const SizedBox();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
