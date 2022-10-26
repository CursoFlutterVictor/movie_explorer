import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_explorer/models/movie_list_model.dart';

class ServiceGetMovies {
  static Future<MovieList?> getPopularMovies({int? page}) async {
    try {
      final Map<String, dynamic> queryParams = {
        "api_key": "a7daad45266c470854b13546370a88c8",
        "language": "en-US",
        "page": page == null || page < 1 ? "1" : page.toString(),
      };

      Uri url =
          Uri.https("api.themoviedb.org", "/3/movie/popular", queryParams);

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);

      if (response.statusCode == 200) {
        //print(response.body);

        final movieList = MovieList.fromJson(jsonDecode(response.body));

        /*
        movieList.results?.forEach((element) {
          print(element.title);
        });
        */

        return movieList;
      }
    } catch (error) {
      rethrow;
      //print(error);
    }

    return null;
  }
}
