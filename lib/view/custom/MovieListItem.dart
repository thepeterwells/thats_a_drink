import 'package:drinking_games/data/models/Movie.dart';
import 'package:drinking_games/utils/DateUtil.dart';
import 'package:drinking_games/view/movies/list/MovieListPresenter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MovieListItem extends Card {
  MovieListItem(Movie movie, MovieListPresenter presenter) :
      super(
        child: ListTile(
          title: Text(movie.originalTitle),
          subtitle: DateUtil.formatDate(movie.releaseDate),
        ),
      );
}