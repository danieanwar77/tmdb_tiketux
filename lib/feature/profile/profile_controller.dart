import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/base/base_controller.dart';
import 'package:tmdb_tiketux/data/model/movie_list_model.dart';

class ProfileController extends BaseController{

  MovieListModel trendingList = MovieListModel();

  @override
  void onInit()async{

    await getTrendingList();
    super.onInit();
  }

  Future<void> getTrendingList() async{
    var response = await repository.getTrendingList();
    debugPrint('response trending list ${jsonEncode(response)}');
    Future.delayed(Duration(seconds: 2),(){
      trendingList = response ?? MovieListModel();
      update();
    });
  }
}