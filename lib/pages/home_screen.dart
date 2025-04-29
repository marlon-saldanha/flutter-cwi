import 'package:filme_flix/components/button_component.dart';
import 'package:filme_flix/models/movie_model.dart';
import 'package:filme_flix/services/movies_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MoviesService _moviesService = MoviesService();

  List<Movie> _popularMovies = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadPopularMovies();
  }

  Future<void> _loadPopularMovies() async {
    try {
      final data = await _moviesService.fetchPopularMovies();
      setState(() {
        _popularMovies = data;
      });
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff121212), body: _buildBody());
  }

  Widget _buildBody() {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      itemCount: _popularMovies.length,
      itemBuilder: (context, index) {
        final movie = _popularMovies[index];

        return ListTile(
          title: Text(movie.title),
          subtitle: Text(movie.overview),
        );
      },
    );
  }
}
