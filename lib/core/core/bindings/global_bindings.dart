// import 'package:flutter_alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/alice/alice_get_connect.dart';
import 'package:tmdb_tiketux/data/network.dart';
import 'package:tmdb_tiketux/data/respository/repository.dart';
import 'package:tmdb_tiketux/data/respository/repository_impl.dart';
import 'package:tmdb_tiketux/data/storage.dart';
import 'package:get/get.dart';

class GlobalBindings extends Bindings {
  final _navKey = GlobalKey<NavigatorState>();

  @override
  void dependencies() async {
    Get.put<AliceGetConnect>(
        AliceGetConnect(
            timeout: const Duration(seconds: 60), navigatorKey: _navKey),
        permanent: true);
    Get.put<NetworkCore>(NetworkCore(), permanent: true);
    Get.put<StorageCore>(StorageCore(), permanent: true);
    Get.put<Repository>(
        RepositoryImpl(
            networkCore: Get.find<NetworkCore>()),
        permanent: true);
  }
}