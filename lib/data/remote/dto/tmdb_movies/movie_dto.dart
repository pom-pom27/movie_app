import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/models/movie.dart';

part 'movie_dto.g.dart';

enum MediaType {
  @JsonValue("all")
  all,
  @JsonValue("movie")
  movie,
  @JsonValue("tv")
  tv,
  @JsonValue("person")
  person,
}

@JsonSerializable()
class MovieDto {
  final String? title;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  final String? overview;
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final int id;
  @JsonKey(name: 'genre_ids')
  final List<int>? genreIds;
  final bool? video;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  final double? popularity;
  @JsonKey(name: 'media_type')
  final MediaType? mediaType;

  const MovieDto({
    this.title,
    this.voteAverage,
    this.overview,
    this.releaseDate,
    this.voteCount,
    this.adult,
    this.backdropPath,
    required this.id,
    this.genreIds,
    this.video,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.popularity,
    this.mediaType,
  });

  factory MovieDto.fromJson(Map<String, dynamic> json) {
    return _$MovieDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieDtoToJson(this);
}

extension MovieConverter on MovieDto {
  Movie toMovie() => Movie(
        id: id,
        title: title ?? '',
        posterPath: posterPath ?? '',
        backdropPath: backdropPath ?? '',
        voteAverage: voteAverage ?? 0.0,
        releaseDate: releaseDate ?? '',
        overview: overview ?? '',
      );
}



// {
// "title": "Uncharted",
// "vote_average": 7.2,
// "overview": "A young street-smart, Nathan Drake and his wisecracking partner Victor “Sully” Sullivan embark on a dangerous pursuit of “the greatest treasure never found” while also tracking clues that may lead to Nathan’s long-lost brother.",
// "release_date": "2022-02-10",
// "vote_count": 2157,
// "adult": false,
// "backdrop_path": "/aEGiJJP91HsKVTEPy1HhmN0wRLm.jpg",
// "id": 335787,
// "genre_ids": [
// 28,
// 12
// ],
// "video": false,
// "original_language": "en",
// "original_title": "Uncharted",
// "poster_path": "/tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg",
// "popularity": 2988.082,
// "media_type": "movie"
// }