import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/base/base_controller.dart';
import 'package:tmdb_tiketux/feature/dashboard/dashboard_screen.dart';
import 'package:tmdb_tiketux/feature/widgets/error_snackbar.dart';
import 'package:get/get.dart';

class LoginController extends BaseController{

  final formKey = GlobalKey<FormState>();

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onInit() async {

    super.onInit();
  }

  void logIn(){
    if(userName.text == 'admin' && password.text == 'admin'){
      Get.to<void>(const DashboardScreen());
    } else {
      ErrorSnackbar(Get.context, 'Username atau Password salah!');
    }

  }
}