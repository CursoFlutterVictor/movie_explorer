import 'package:flutter/material.dart';
import 'package:movie_explorer/services/movies_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Explorer"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        ServiceGetMovies.getPopularMovies(page: 2);
      }),
    );
  }
}
