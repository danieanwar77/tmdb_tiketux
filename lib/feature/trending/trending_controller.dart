import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/base/base_controller.dart';
import 'package:tmdb_tiketux/data/model/movie_list_model.dart';

class TrendingController extends BaseController{

  MovieListModel trendingList = MovieListModel();
  List<String> filter = ['Semua','Film','Serial TV'];
  int selectedFilter = 0;

  @override
  void onInit()async{

    debugPrint('initial condition: ${jsonEncode(trendingList)}');
    await getTrendingList();

    super.onInit();
  }

  Future<void> getTrendingList() async{
    trendingList = MovieListModel();
    selectedFilter = 0;
    update();
    var response = await repository.getTrendingList();
    debugPrint('response trending list ${jsonEncode(response)}');
    Future.delayed(Duration(seconds: 2),(){
      trendingList = response ?? MovieListModel();
      update();
    });
  }

  Future<void> getPopularTvList() async{
    trendingList = MovieListModel();
    selectedFilter = 2;
    update();
    var response = await repository.getPopularTvList();
    debugPrint('response trending list ${jsonEncode(response)}');
    Future.delayed(Duration(seconds: 2),(){
      trendingList = response ?? MovieListModel();
      update();
    });
  }

  Future<void> getPopularMovieList() async{
    trendingList = MovieListModel();
    selectedFilter = 1;
    update();
    var response = await repository.getPopularMovieList();
    debugPrint('response trending list ${jsonEncode(response)}');
    Future.delayed(Duration(seconds: 2),(){
      trendingList = response ?? MovieListModel();
      update();
    });
  }
}