import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/alice/alice_get_connect.dart';
import 'package:tmdb_tiketux/feature/splash/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:overlay_support/overlay_support.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        ensureScreenSize: true,
        child: OverlaySupport.global(
          child: GetMaterialApp(
            title: 'Flutter Template',
            navigatorKey: kDebugMode ? Get.find<AliceGetConnect>().getNavigatorKey() : null,
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
                useMaterial3: true,
                textTheme: Typography(platform: TargetPlatform.iOS).black.apply(
                    fontSizeFactor: 1,
                    fontFamily: GoogleFonts.plusJakartaSans().fontFamily)),
            home: const SplashScreen(),
          ),
        ));
  }
}
