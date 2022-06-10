import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String posterPath;
  final int id;
  final String backdropPath;
  final String title;
  final double voteAverage;
  final String releaseDate;
  final String overview;

  const Movie({
    required this.posterPath,
    required this.id,
    required this.backdropPath,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
    required this.overview,
  });

  @override
  List<Object?> get props => [
        id,
        title,
      ];

  @override
  bool? get stringify => true;
}
