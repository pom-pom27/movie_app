// ignore_for_file: non_constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:movie_app/common/app_error.dart';

///Type mean what does the use case return (output)
///Param mean what is required for use case, for now used for param for api call
///good for future proof code
abstract class UseCase<Type, Params> {
  Future<Either<AppError, Type>> call(Params params);
}
