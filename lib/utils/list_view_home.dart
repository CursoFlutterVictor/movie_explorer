import 'package:flutter/material.dart';
import 'package:movie_explorer/models/movie_list_model.dart';

class ListViewHome extends StatelessWidget {
  ListViewHome({super.key, required this.movieList});

  final MovieList? movieList;
  final List<Widget> rows = [];

  void buildRows() {
    movieList!.results?.forEach((element) {
      final row = Wrap(
        children: [
          Image.network(
            "http://image.tmdb.org/t/p/w300${element.posterPath}",
            width: 80,
            height: 100,
          ),
          Text(
            element.title.toString(),
            style: const TextStyle(
              fontSize: 15,
            ),
          )
        ],
      );

      rows.add(row);
    });
  }

  @override
  Widget build(BuildContext context) {
    buildRows();
    return ListView(
      padding: const EdgeInsets.all(8),
      children: rows,
    );
  }
}
