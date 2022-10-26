import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_explorer/controllers/movie_detail_controller.dart';
import 'package:movie_explorer/models/movie_list_model.dart';

class MovieCard extends StatelessWidget {
  final MovieResult? movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    MovieDetailController movieDetailController = Get.find();

    return GestureDetector(
        onTap: () {
          movieDetailController.selectedMovie.value = movie;
          Get.toNamed("/DETAIL");
        },
        child: Card(
            child: Row(
          children: [
            Image.network(
              "http://image.tmdb.org/t/p/w300${movie?.posterPath}",
              width: 80,
              height: 100,
            ),
            Expanded(
                child: Text(
              maxLines: 1,
              movie!.title.toString(),
              style: const TextStyle(
                fontSize: 20,
              ),
            ))
          ],
        )));
  }
}
