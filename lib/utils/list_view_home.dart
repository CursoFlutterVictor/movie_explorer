import 'package:flutter/material.dart';
import 'package:movie_explorer/models/movie_list_model.dart';

class ListViewHome extends StatelessWidget {
  final MovieList? movieList;
  const ListViewHome({super.key, required this.movieList});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Text('List 1'),
        Text('List 2'),
        Text('List 3'),
      ],
    );
  }
}
