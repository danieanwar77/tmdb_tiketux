import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/constant/app_constant.dart';
import 'package:tmdb_tiketux/data/model/credits_model.dart';
import 'package:tmdb_tiketux/data/model/detail_model.dart';
import 'package:tmdb_tiketux/data/model/genre_list_model.dart';
import 'package:tmdb_tiketux/data/model/movie_list_model.dart';
import 'package:tmdb_tiketux/data/model/review_model.dart';
import 'package:tmdb_tiketux/data/model/user_model.dart';
import 'package:tmdb_tiketux/data/network.dart';
import 'package:tmdb_tiketux/data/respository/repository.dart';
import 'package:get/get.dart';

class RepositoryImpl implements Repository {
  RepositoryImpl({required this.networkCore});

  NetworkCore networkCore;

  @override
  FutureOr<UserModel?> getUser(int page) async {
    late Response? response;
    try {
      response = await networkCore.getRequest<UserModel>("/users",
          queryParameters: {
            "page": page.toString()
          },
          decoder: (val) => UserModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json"
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<MovieListModel?> getTrendingList() async {
    late Response? response;
    try {
      response = await networkCore.getRequest<MovieListModel>("/trending/all/day",
          decoder: (val) => MovieListModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<MovieListModel?> getTVOntheAirList() async {
    late Response? response;
    try {
      response = await networkCore.getRequest<MovieListModel>("/tv/on_the_air",
          decoder: (val) => MovieListModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<MovieListModel?> getMovieNowPlayingList() async {
    late Response? response;
    try {
      response = await networkCore.getRequest<MovieListModel>("/movie/now_playing",
          decoder: (val) => MovieListModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<MovieListModel?> getTopRatedTvList() async {
    late Response? response;
    try {
      response = await networkCore.getRequest<MovieListModel>("/tv/top_rated",
          decoder: (val) => MovieListModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<MovieListModel?> getTopRatedMovieList() async {
    late Response? response;
    try {
      response = await networkCore.getRequest<MovieListModel>("/movie/top_rated",
          decoder: (val) => MovieListModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<MovieListModel?> getPopularTvList() async {
    late Response? response;
    try {
      response = await networkCore.getRequest<MovieListModel>("/tv/popular",
          decoder: (val) => MovieListModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<MovieListModel?> getPopularMovieList() async {
    late Response? response;
    try {
      response = await networkCore.getRequest<MovieListModel>("/movie/popular",
          decoder: (val) => MovieListModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<GenreListModel?> getTVGenreList() async {
    late Response? response;
    try {
      response = await networkCore.getRequest<GenreListModel>("/genre/tv/list",
          decoder: (val) => GenreListModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<GenreListModel?> getMovieGenreList() async {
    late Response? response;
    try {
      response = await networkCore.getRequest<GenreListModel>("/genre/movie/list",
          decoder: (val) => GenreListModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<DetailModel?> getDetailTv(int id) async {
    late Response? response;
    try {
      response = await networkCore.getRequest<DetailModel>("/tv/$id",
          decoder: (val) => DetailModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<DetailModel?> getDetailMovie(int id) async {
    late Response? response;
    try {
      response = await networkCore.getRequest<DetailModel>("/movie/$id",
          decoder: (val) => DetailModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<CreditsModel?> getTvCredits(int id) async {
    late Response? response;
    try {
      response = await networkCore.getRequest<CreditsModel>("/tv/$id/credits",
          decoder: (val) => CreditsModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<CreditsModel?> getMovieCredits(int id) async {
    late Response? response;
    try {
      response = await networkCore.getRequest<CreditsModel>("/movie/$id/credits",
          decoder: (val) => CreditsModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<ReviewModel?> getTvReviews(int id) async {
    late Response? response;
    try {
      response = await networkCore.getRequest<ReviewModel>("/tv/$id/reviews",
          decoder: (val) => ReviewModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }

  FutureOr<ReviewModel?> getMovieReviews(int id) async {
    late Response? response;
    try {
      response = await networkCore.getRequest<ReviewModel>("/movie/$id/reviews",
          decoder: (val) => ReviewModel.fromJson(val),
          headers: {
            'Accept': 'application/json',
            'Content-Type': "application/json",
            'Authorization' : 'Bearer ${AppConstant.API_KEY}'
          });
    } on Exception catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return response?.body;
  }
}
