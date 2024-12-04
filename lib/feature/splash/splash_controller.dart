import 'package:flutter/foundation.dart';
import 'package:tmdb_tiketux/core/core/base/base_controller.dart';
import 'package:tmdb_tiketux/data/model/user_model.dart';
import 'package:tmdb_tiketux/feature/login/login_screen.dart';
import 'package:get/get.dart';

class SplashController extends BaseController {

  @override
  void onInit() async {

    Future.delayed(const Duration(seconds: 3),(){
     Get.off<void>(const LoginScreen(), transition: Transition.fadeIn);
    });
    super.onInit();
  }
}