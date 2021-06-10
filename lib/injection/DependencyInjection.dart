import 'package:drinking_games/data/ApiService.dart';
import 'package:drinking_games/data/service/MovieListService.dart';

class Injector {
  static final Injector _singleton = Injector._internal();

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  MovieListService get movieListService {
    return LiveMovieListService();
  }
}