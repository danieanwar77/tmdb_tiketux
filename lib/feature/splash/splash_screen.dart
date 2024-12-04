import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/app.dart';
import 'package:tmdb_tiketux/feature/splash/splash_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (controller) => Scaffold(
        body: SafeArea(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                  child: Center(
                    child: Image.asset('assets/images/tmdb_logo.png',
                      height: 200.w,
                    )
                  )
              ),
              Image.asset('assets/images/tiketux_logo.png',
                height: 24.w,
              ),
              const SizedBox(height: 24,)
            ],
          )
        )
      ),
    );
  }
}
