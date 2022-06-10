import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:movie_app/data/remote/api_client.dart';
import 'package:movie_app/data/remote/tmdb_api.dart';
import 'package:movie_app/data/repositories/movie_repository_impl.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';
import 'package:movie_app/domain/use_cases/get_playing_now.dart';
import 'package:movie_app/domain/use_cases/get_popular.dart';
import 'package:movie_app/domain/use_cases/get_soon.dart';
import 'package:movie_app/domain/use_cases/get_trending.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerLazySingleton(() => Client());

  getIt.registerLazySingleton<ApiClient>(() => ApiClient(getIt()));

  getIt.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoteDataSourceImpl(getIt()));

  getIt.registerLazySingleton<MovieRepository>(
      () => MovieRepositoryImpl(getIt()));
  getIt.registerLazySingleton<GetTrending>(() => GetTrending(getIt()));
  getIt.registerLazySingleton<GetPopular>(() => GetPopular(getIt()));
  getIt.registerLazySingleton<GetComingSoon>(() => GetComingSoon(getIt()));
  getIt.registerLazySingleton<GetPlayingNow>(() => GetPlayingNow(getIt()));
}
