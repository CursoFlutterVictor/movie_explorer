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
          title: const Text("Movie details"),
        ),
        body: Obx(() {
          return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        movieDetailController.selectedMovie.value!.title
                            .toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  Image.network(
                    "http://image.tmdb.org/t/p/w300${movieDetailController.selectedMovie.value?.posterPath}",
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        "assets/nocover.jpg",
                        width: 300,
                        height: 300,
                      );
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        movieDetailController.selectedMovie.value!.overview
                            .toString(),
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 15),
                      ))
                ],
              ));
        }));
  }
}
