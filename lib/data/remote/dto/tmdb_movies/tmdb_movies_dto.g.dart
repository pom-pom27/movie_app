// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_movies_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TmdbMoviesDto _$TmdbMoviesDtoFromJson(Map<String, dynamic> json) =>
    TmdbMoviesDto(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$TmdbMoviesDtoToJson(TmdbMoviesDto instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
