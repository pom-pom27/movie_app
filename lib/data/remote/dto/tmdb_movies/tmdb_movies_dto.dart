import 'package:json_annotation/json_annotation.dart';

import 'movie_dto.dart';

part 'tmdb_movies_dto.g.dart';

@JsonSerializable()
class TmdbMoviesDto {
  final int? page;
  final List<MovieDto>? results;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  const TmdbMoviesDto({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory TmdbMoviesDto.fromJson(Map<String, dynamic> json) {
    return _$TmdbMoviesDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TmdbMoviesDtoToJson(this);
}
