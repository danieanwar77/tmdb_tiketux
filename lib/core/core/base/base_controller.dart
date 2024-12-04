import 'package:tmdb_tiketux/data/network.dart';
import 'package:tmdb_tiketux/data/respository/repository.dart';
import 'package:tmdb_tiketux/data/storage.dart';
import 'package:get/get.dart';

abstract class BaseController extends GetxController {
  final network = Get.find<NetworkCore>();
  final storage = Get.find<StorageCore>();
  final repository = Get.find<Repository>();
}
