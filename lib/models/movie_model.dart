class Movie {
  final int id;
  final String? posterPath;
  final String? backdropPath;
  final String overview;
  final String title;
  final String releaseDate;
  final bool adult;
  final List<String>? genres;

  Movie({
    required this.id,
    this.posterPath,
    this.backdropPath,
    required this.overview,
    required this.title,
    required this.releaseDate,
    required this.adult,
    this.genres,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      title: json['title'],
      releaseDate: json['release_date'],
      adult: json['adult'],
      genres: json['genres'],
    );
  }

  String? get fullPosterPath {
    if (posterPath != null) {
      return 'https://image.tmdb.org/t/p/w500$posterPath';
    }

    return null;
  }
}