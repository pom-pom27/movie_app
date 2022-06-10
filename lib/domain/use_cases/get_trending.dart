import 'package:dartz/dartz.dart';
import 'package:movie_app/common/app_error.dart';
import 'package:movie_app/domain/models/movie.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';
import 'package:movie_app/domain/use_cases/use_case.dart';

import '../../common/no_params.dart';

class GetTrending extends UseCase<List<Movie>, NoParams> {
  final MovieRepository movieRepository;

  GetTrending(this.movieRepository);

  @override
  Future<Either<AppError, List<Movie>>> call(NoParams params) async {
    return await movieRepository.getTrending();
  }
}
