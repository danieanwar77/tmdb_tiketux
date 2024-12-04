import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/base/base_controller.dart';
import 'package:tmdb_tiketux/feature/archive/archive_screen.dart';
import 'package:tmdb_tiketux/feature/home/home_screen.dart';
import 'package:tmdb_tiketux/feature/profile/profile_screen.dart';
import 'package:get/get.dart';

class DashboardController extends BaseController {

  RxInt selectedPage = 0.obs;
  final RxList<dynamic> _pageOptions = [
    HomeScreen(),
    ArchiveScreen(),
    ProfileScreen()
  ].obs;

  List<dynamic> get pageOptions => _pageOptions.value;

  @override
  void onInit() async {

    super.onInit();
  }
}