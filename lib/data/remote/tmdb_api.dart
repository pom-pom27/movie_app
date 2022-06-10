import 'package:flutter/foundation.dart';
import 'package:movie_app/data/remote/api_client.dart';
import 'package:movie_app/data/remote/dto/tmdb_movies/movie_dto.dart';
import 'package:movie_app/data/remote/dto/tmdb_movies/tmdb_movies_dto.dart';

import 'package:movie_app/domain/models/movie.dart';

abstract class MovieRemoteDataSource {
  Future<List<Movie>> getTrending();
  Future<List<Movie>> getPopular();
  Future<List<Movie>> getPlayingNow();
  Future<List<Movie>> getComingSoon();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final ApiClient _client;

  MovieRemoteDataSourceImpl(this._client);

  @override
  Future<List<Movie>> getTrending() async {
    final responseBody = await _client.getTmdbApi('trending/all/day');

    final movies = TmdbMoviesDto.fromJson(responseBody)
            .results
            ?.map((e) => e.toMovie())
            .toList() ??
        [];
    debugPrint("getTrending ${movies.toString()}");

    return movies;
  }

  @override
  Future<List<Movie>> getPopular() async {
    final responseBody = await _client.getTmdbApi('movie/popular');

    final movies = TmdbMoviesDto.fromJson(responseBody)
            .results
            ?.map((e) => e.toMovie())
            .toList() ??
        [];
    debugPrint("getPopular ${movies.toString()}");

    return movies;

    // https://api.themoviedb.org/3/movie/popular?api_key=59e2498e970987e07cd50d3e6da8421e&language=en-US&page=1
  }

  @override
  Future<List<Movie>> getComingSoon() async {
    final responseBody = await _client.getTmdbApi('movie/upcoming');

    final movies = TmdbMoviesDto.fromJson(responseBody)
            .results
            ?.map((e) => e.toMovie())
            .toList() ??
        [];
    debugPrint("getComingSoon ${movies.toString()}");

    return movies;
  }

  @override
  Future<List<Movie>> getPlayingNow() async {
    final responseBody = await _client.getTmdbApi('movie/now_playing');

    final movies = TmdbMoviesDto.fromJson(responseBody)
            .results
            ?.map((e) => e.toMovie())
            .toList() ??
        [];
    debugPrint("getPlayingNow ${movies.toString()}");

    return movies;
  }
}
