import 'package:dio/dio.dart';
import 'package:filme_flix/models/movie_model.dart';
import 'package:filme_flix/services/dio_client.dart';

class MoviesService {
  final Dio _dio = DioClient.instance;
  final String _basePath = '/movie';

  Future<List<Movie>> fetchPopularMovies() async {
    try {
      final response = await _dio.get('$_basePath/popular');

      final List<dynamic> results = response.data['results'];

      final List<Movie> movies = results
        .map((movieJson) => Movie.fromJson(movieJson as Map<String, dynamic>))
        .toList();

        return movies;
    } catch (e) {
      print(e);
    }

    return [];
  }
}