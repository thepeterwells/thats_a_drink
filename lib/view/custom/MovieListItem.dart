import 'package:drinking_games/data/models/Movie.dart';
import 'package:drinking_games/utils/ColorUtil.dart';
import 'package:drinking_games/utils/DateUtil.dart';
import 'package:drinking_games/view/movies/list/MovieListPresenter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MovieListItem extends Card {
  MovieListItem(Movie movie, MovieListPresenter presenter) :
      super(
        child: ListTile(
          contentPadding: EdgeInsets.all(8.0),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network('http://image.tmdb.org/t/p/w780/' + movie.posterPath,
            fit: BoxFit.fill,),
          ),
          trailing: Icon(Icons.chevron_right),
          title: Text(movie.originalTitle),
          subtitle: DateUtil.formatDate(movie.releaseDate),
        ),
      );
}