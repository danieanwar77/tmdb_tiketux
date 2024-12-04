import 'dart:async';

import 'package:tmdb_tiketux/data/model/credits_model.dart';
import 'package:tmdb_tiketux/data/model/detail_model.dart';
import 'package:tmdb_tiketux/data/model/genre_list_model.dart';
import 'package:tmdb_tiketux/data/model/movie_list_model.dart';
import 'package:tmdb_tiketux/data/model/review_model.dart';
import 'package:tmdb_tiketux/data/model/user_model.dart';

abstract interface class Repository {
  FutureOr<UserModel?> getUser(int page);
  FutureOr<MovieListModel?> getTrendingList();
  FutureOr<MovieListModel?> getTVOntheAirList();
  FutureOr<MovieListModel?> getMovieNowPlayingList();
  FutureOr<MovieListModel?> getTopRatedTvList();
  FutureOr<MovieListModel?> getTopRatedMovieList();
  FutureOr<MovieListModel?> getPopularTvList();
  FutureOr<MovieListModel?> getPopularMovieList();
  FutureOr<DetailModel?> getDetailTv(int id);
  FutureOr<DetailModel?> getDetailMovie(int id);
  FutureOr<CreditsModel?> getTvCredits(int id);
  FutureOr<CreditsModel?> getMovieCredits(int id);
  FutureOr<ReviewModel?> getTvReviews(int id);
  FutureOr<ReviewModel?> getMovieReviews(int id);
  FutureOr<GenreListModel?> getTVGenreList();
  FutureOr<GenreListModel?> getMovieGenreList();

}
