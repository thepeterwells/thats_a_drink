import 'dart:convert';
import 'dart:io';

import 'package:drinking_games/data/ApiService.dart';
import 'package:drinking_games/data/models/Movie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LiveMovieListService implements MovieListService{

  final _decoder = JsonDecoder();

  @override
  Future<List<Movie>> getMovies() async {
    final _preferences = await SharedPreferences.getInstance();
    final response = await http.get(MovieListService.movieListUrl,
    headers: { HttpHeaders.authorizationHeader: 'Bearer ' + _preferences.get('api_token') });

    final body = response.body;

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Exception('Error retrieving movie list');
    }

    final List movieList = _decoder.convert(body)['results'];

    return movieList.map((movie) => Movie(
      id: movie['id'],
      originalTitle: movie['original_title'],
      releaseDate: movie['release_date']
    )).toList();
  }
}