import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/base/base_controller.dart';
import 'package:tmdb_tiketux/data/model/credits_model.dart';
import 'package:tmdb_tiketux/data/model/detail_model.dart';
import 'package:tmdb_tiketux/data/model/review_model.dart';
import 'package:get/get.dart';

class DetailController extends BaseController{

  var header = {};
  DetailModel detail = DetailModel();
  CreditsModel credits = CreditsModel();
  ReviewModel reviews = ReviewModel();

  @override
  void onInit()async{
    var arguments = await Get.arguments;
    debugPrint('arguments : ${arguments}');
    header = arguments;

    await getDetail(arguments['id']);

    super.onInit();
  }

  Future<void> getDetail(int id) async {
    late var response;
    late var responseCredits;
    late var responseReviews;
    if(header['media_type'] == 'tv'){
      response = await repository.getDetailTv(id);
      debugPrint('detail tv : ${jsonEncode(response)}');
      responseCredits = await repository.getTvCredits(id);
      debugPrint('detail tv credits : ${jsonEncode(response)}');
      responseReviews = await repository.getTvReviews(id);
      debugPrint('detail tv reviews : ${jsonEncode(response)}');
    } else {
      response = await repository.getDetailMovie(id);
      debugPrint('detail movie : ${jsonEncode(response)}');
      responseCredits = await repository.getMovieCredits(id);
      debugPrint('detail movie credits : ${jsonEncode(response)}');
      responseReviews = await repository.getMovieReviews(id);
      debugPrint('detail movie Reviews : ${jsonEncode(response)}');
    }
    detail = response ?? DetailModel();
    credits = responseCredits ?? CreditsModel();
    reviews = responseReviews ?? ReviewModel();
    update();
  }
}