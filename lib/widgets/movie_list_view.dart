import 'package:flutter/material.dart';
import 'package:movie_explorer/models/movie_list_model.dart';
import 'package:movie_explorer/widgets/movie_card.dart';

class MovieListView extends StatelessWidget {
  MovieListView({super.key, required this.movieList});

  final MovieList? movieList;

  final List<Widget> rows = [];

  void buildRows() {
    movieList!.results?.forEach((element) {
      // Creo la fila
      final row = MovieCard(movie: element);

      // Añado la fila
      rows.add(row);

      // Añado un separador
      rows.add(const SizedBox(
        height: 10,
      ));
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
