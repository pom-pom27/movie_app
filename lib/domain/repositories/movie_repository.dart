import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/models/movie.dart';

import '../../common/app_error.dart';

abstract class MovieRepository {
  Future<Either<AppError, List<Movie>>> getTrending();
  Future<Either<AppError, List<Movie>>> getPopular();
  Future<Either<AppError, List<Movie>>> getComingSoon();
  Future<Either<AppError, List<Movie>>> getPlayingNow();
}
