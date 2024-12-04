import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: DashboardController(),
        builder: (controller) => Obx(() =>
            PopScope(
              canPop: false,
              child: Scaffold(
                  backgroundColor: Colors.white,
                  body: controller.pageOptions[controller.selectedPage.toInt()],
                  extendBody: true, // <--- do not forget mark this as true
                  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                  floatingActionButton: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: graySoft),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: NavigationBar(
                      selectedIndex: controller.selectedPage.value,
                      backgroundColor: Colors.transparent, // <--- to remove background color
                      elevation: 0,
                      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                      onDestinationSelected: (int index) {
                          controller.selectedPage.value = index;
                      },
                      destinations: <Widget>[
                        NavigationDestination(
                          icon: Image.asset('assets/icons/home.png',
                            height: 18.w,
                            color: gray,
                          ),
                          selectedIcon: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(32)
                            ),
                            child: Wrap(
                              children: [
                                Image.asset('assets/icons/home.png',
                                  height: 18.w,
                                ),
                                const SizedBox(width: 4,),
                                Text('Beranda',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          label: 'Explore',
                        ),
                        NavigationDestination(
                          icon: Image.asset('assets/icons/archive.png',
                            height: 18.w,
                          ),
                          selectedIcon: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(32)
                            ),
                            child: Wrap(
                              children: [
                                Image.asset('assets/icons/archive.png',
                                  height: 18.w,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 4,),
                                Text('Archive',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          label: 'Commute',
                        ),
                        NavigationDestination(
                          icon: Image.asset('assets/icons/profile.png',
                            height: 18.w,
                          ),
                          selectedIcon: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(32)
                            ),
                            child: Wrap(
                              children: [
                                Image.asset('assets/icons/profile.png',
                                  height: 18.w,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 4,),
                                Text('Profile',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          label: 'Saved',
                        ),
                      ],
                    ),
                  )
              ),
            )
          ,)
    );
  }
}