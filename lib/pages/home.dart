import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/controllers/movie_list_controller.dart';
import 'package:movie_explorer/utils/list_view_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MovieListController movieListController = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: Text("Movie Explorer"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          movieListController.fillList();
        }),
        body: Obx(() {
          if (movieListController.loaded.value) {
            return ListViewHome(movieList: movieListController.movieList.value);
          } else {
            return Text("Empty");
          }
        }));
  }
}
