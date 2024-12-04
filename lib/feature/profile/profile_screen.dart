import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/constant/app_constant.dart';
import 'package:tmdb_tiketux/core/core/constant/colors.dart';
import 'package:tmdb_tiketux/feature/profile/profile_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProfileController(),
        builder: (controller) => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/profile.png',
                          height: 64.w,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tiketux TMDB',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp
                              ),
                            ),
                            Text('Tiketux',
                              style: TextStyle(
                                  fontSize: 12.sp
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16,),
                    TextButton(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Log In',
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ),
                      ),
                      onPressed: () {

                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          elevation: 2,
                          backgroundColor: primaryColor),
                    ),
                    const SizedBox(height: 16,),
                    Text('Terakhir dilihat',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp
                      ),
                    ),
                    const SizedBox(height: 16,),
                    SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                          mainAxisExtent: 226.w,
                        ),
                        padding: EdgeInsets.all(8.0),
                        itemCount: controller.trendingList.totalResults!= null ? controller.trendingList.results!.length : 8,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return controller.trendingList.totalResults!= null ? Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: SizedBox(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: IntrinsicHeight(
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          height: 220.w,
                                          child: Image.network('${AppConstant.IMAGE_URL}${controller.trendingList.results![index].posterPath}',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: UnconstrainedBox(
                                            child: Container(
                                              margin: EdgeInsets.only(left: 16, bottom: 16),
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  color: controller.trendingList.results![index].voteAverage! < 8 ? surveyProgressColor : gradation3,
                                                  borderRadius: BorderRadius.circular(8.w)
                                              ),
                                              child: Row(
                                                children: [
                                                  Text('${(controller.trendingList.results![index].voteAverage! * 10).toString().substring(0,2)}',
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  Text('%',
                                                    style: TextStyle(
                                                        fontSize: 8.sp,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                          ) : Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Shimmer.fromColors(
                                baseColor: disabledColor,
                                highlightColor: graySoft,
                                child: Card(
                                    child: SizedBox(

                                    )
                                ),
                              )
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
    