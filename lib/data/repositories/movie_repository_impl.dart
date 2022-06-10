import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/models/movie.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';

import '../../common/app_error.dart';
import '../remote/tmdb_api.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource dataSource;

  MovieRepositoryImpl(this.dataSource);

  @override
  Future<Either<AppError, List<Movie>>> getTrending() async {
    try {
      return right(await dataSource.getTrending());
    } on Exception {
      return left(const AppError("errorMessage"));
    }
  }

  @override
  Future<Either<AppError, List<Movie>>> getComingSoon() async {
    try {
      return right(await dataSource.getTrending());
    } on Exception {
      return left(const AppError("errorMessage"));
    }
  }

  @override
  Future<Either<AppError, List<Movie>>> getPlayingNow() async {
    try {
      return right(await dataSource.getTrending());
    } on Exception {
      return left(const AppError("errorMessage"));
    }
  }

  @override
  Future<Either<AppError, List<Movie>>> getPopular() async {
    try {
      return right(await dataSource.getTrending());
    } on Exception {
      return left(const AppError("errorMessage"));
    }
  }
}
