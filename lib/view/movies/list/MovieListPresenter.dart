import 'package:drinking_games/view/movies/list/IMovieList.dart';

class MovieListPresenter {
  IMovieList? _view;

  static final MovieListPresenter _singleton = MovieListPresenter._internal();
  MovieListPresenter._internal();

  factory MovieListPresenter() {
    return _singleton;
  }

  void start(IMovieList view) async {
    _view = view;
  }
}