import 'package:dartz/dartz.dart';
import 'package:movie_app/common/app_error.dart';
import 'package:movie_app/domain/models/movie.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';

import '../../common/no_params.dart';
import 'use_case.dart';

class GetPopular extends UseCase<List<Movie>, NoParams> {
  final MovieRepository movieRepository;

  GetPopular(this.movieRepository);

  @override
  Future<Either<AppError, List<Movie>>> call(NoParams params) async {
    return await movieRepository.getPopular();
  }
}
