import 'package:drinking_games/data/models/Movie.dart';
import 'package:drinking_games/view/movies/list/MovieListPresenter.dart';
import 'package:flutter/material.dart';

class MovieListItem extends ListTile {
  MovieListItem(Movie movie, MovieListPresenter presenter) :
      super(
        title: Text('Moulin Rouge!'),
        subtitle: Text('Literally the best musical of all time.'),
      );
}