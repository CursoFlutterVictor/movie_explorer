import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/controllers/movie_detail_controller.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    MovieDetailController movieDetailController = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Movie Explorer"),
        ),
        body: Obx(() {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                movieDetailController.selectedMovie.value!.title.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Image.network(
                "http://image.tmdb.org/t/p/w300${movieDetailController.selectedMovie.value?.posterPath}",
              ),
              Text(
                movieDetailController.selectedMovie.value!.overview.toString(),
                style: TextStyle(fontSize: 15),
              )
            ],
          ));
        }));
  }
}
