import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/base/base_controller.dart';
import 'package:tmdb_tiketux/data/model/genre_list_model.dart';
import 'package:tmdb_tiketux/data/model/movie_list_model.dart';

class HomeController extends BaseController{

  MovieListModel trendingList = MovieListModel();
  List<Results> newReleaseList = [];
  List<Results> topRatedList = [];
  List<Genres> genres = [];

  @override
  void onInit() async{
    debugPrint('initial condition: ${jsonEncode(trendingList)}');
    await getTrendingList();
    await getNowAiringList();
    await getTopRatedList();
    await getGenreList();
  }

  Future<void> getTrendingList() async{
    var response = await repository.getTrendingList();
    debugPrint('response trending list ${jsonEncode(response)}');
    Future.delayed(Duration(seconds: 2),(){
      trendingList = response ?? MovieListModel();
      update();
    });

  }

  Future<void> getNowAiringList() async{
    List<Results> nowTv = [];
    List<Results> nowMovie = [];

    var responseTv = await repository.getTVOntheAirList();
    debugPrint('response now airing tv list ${jsonEncode(responseTv)}');
    nowTv = responseTv!.results ?? [];
    for(var i = 0; i < responseTv.results!.length; i++){
      nowTv[i] = nowTv[i].copyWith(mediaType: 'tv');
    }
    update();

    var responseMovie = await repository.getMovieNowPlayingList();
    debugPrint('response now playing movie list ${jsonEncode(responseMovie)}');
    nowMovie = responseMovie!.results ?? [];
    for(var i = 0; i < responseMovie.results!.length; i++){
      nowMovie[i] = nowMovie[i].copyWith(mediaType: 'movie');
    }
    update();

    Future.delayed(Duration(seconds: 2),()
    {
      newReleaseList = [...nowMovie, ...nowTv];
      update();
    });

  }

  Future<void> getTopRatedList() async{
    List<Results> nowTv = [];
    List<Results> nowMovie = [];

    var responseTv = await repository.getTopRatedTvList();
    debugPrint('response top rated tv list ${jsonEncode(responseTv)}');
    nowTv = responseTv!.results ?? [];
    for(var i = 0; i < responseTv.results!.length; i++){
      nowTv[i] = nowTv[i].copyWith(mediaType: 'tv');
    }
    update();

    var responseMovie = await repository.getTopRatedMovieList();
    debugPrint('response top rated movie list ${jsonEncode(responseMovie)}');
    nowMovie = responseMovie!.results ?? [];
    for(var i = 0; i < responseMovie.results!.length; i++){
      nowMovie[i] = nowMovie[i].copyWith(mediaType: 'movie');
    }
    update();

    Future.delayed(Duration(seconds: 4),()
    {
      topRatedList = [...nowMovie, ...nowTv];
      update();
    });
  }

  Future<void> getGenreList() async{
    late GenreListModel genreTv;
    late GenreListModel genreMovie;

    var responseTv = await repository.getTVGenreList();
    debugPrint('response tv genres list ${jsonEncode(responseTv)}');
    genreTv = responseTv ?? GenreListModel();
    update();

    var responseMovie = await repository.getMovieGenreList();
    debugPrint('response movie genres list ${jsonEncode(responseMovie)}');
    genreMovie = responseMovie ?? GenreListModel();
    update();

    Future.delayed(Duration(seconds: 2),()
    {
      var genresTemp = [...genreTv.genres!, ...genreMovie.genres!];
      var genresSet = genresTemp.map((item) => item.id).toSet().toList();

      genresSet.forEach((genre){
        genres.add(genresTemp.firstWhere((i) => i.id == genre));
        update();
      });
    });
  }
}