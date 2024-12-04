import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/app.dart';
import 'package:tmdb_tiketux/core/core/constant/app_constant.dart';
import 'package:tmdb_tiketux/core/core/constant/colors.dart';
import 'package:tmdb_tiketux/feature/detail/detail_screen.dart';
import 'package:tmdb_tiketux/feature/home/home_controller.dart';
import 'package:tmdb_tiketux/feature/trending/trending_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
        builder: (controller) => Scaffold(
          appBar: AppBar(
            leadingWidth: 100.w,
            leading: Row(
              children: [
                const SizedBox(width: 24,),
                Image.asset('assets/icons/ticket.png',
                  height: 32.w,
                ),
                const SizedBox(width: 6,),
                Text('TMDB',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            actions: [
              Image.asset('assets/icons/notification.png',
                height: 20.w,
              ),
              const SizedBox(width: 16,),
              Image.asset('assets/icons/search.png',
                height: 20.w,
              ),
              const SizedBox(width: 24,)
            ],
          ),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Trending ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.w),
                              child: Text('Hari Ini',
                                style: TextStyle(
                                    fontSize: 14.sp
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                                onTap: (){
                                  Get.to<void>(TrendingScreen());
                                },
                                child: Row(
                                  children: [
                                    Text('Lihat Semua',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: primaryColor
                                      ),
                                    ),
                                    Icon(Icons.chevron_right,
                                      size: 24.w,
                                      color: primaryColor
                                    )
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 270.w,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.trendingList.totalResults != null ? controller.trendingList.results?.length : 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              //var item = controller.trendingList.results![index];
                              if (controller.trendingList.totalResults != null) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Card(
                                    child: SizedBox(
                                      width: 300.w,
                                      child: ClipRRect(
                                        child: InkWell(
                                          customBorder: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          onTap: (){
                                            Get.to<void>(DetailScreen(), arguments: {'id': controller.trendingList.results![index].id!, 'media_type': controller.trendingList.results![index].mediaType});
                                          },
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                  borderRadius: BorderRadius.circular(16),
                                                  child: IntrinsicHeight(
                                                    child: Stack(
                                                      children: [
                                                        Image.network('${AppConstant.IMAGE_URL}${controller.trendingList.results![index].backdropPath}'),
                                                        Align(
                                                          alignment: Alignment.topRight,
                                                          child: UnconstrainedBox(
                                                            child: Container(
                                                              margin: EdgeInsets.only(right: 16, top: 16),
                                                              padding: EdgeInsets.all(8),
                                                              decoration: BoxDecoration(
                                                                color: controller.trendingList.results![index].voteAverage! < 8 ? surveyProgressColor : gradation3,
                                                                borderRadius: BorderRadius.circular(8.w)
                                                              ),
                                                              child: Row(
                                                                children: [
                                                                  Image.asset('assets/icons/rate.png',
                                                                    height: 9.w,
                                                                    color: Colors.black,
                                                                  ),
                                                                  SizedBox(width: 4,),
                                                                  Text('${(controller.trendingList.results![index].voteAverage! * 10).toString().substring(0,2)}',
                                                                    style: TextStyle(
                                                                      fontSize: 10.sp,
                                                                      fontWeight: FontWeight.bold
                                                                    ),
                                                                  ),
                                                                  Text('%',
                                                                    style: TextStyle(
                                                                        fontSize: 10.sp,
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
                                                  )
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(height: 8,),
                                                    Text('${controller.trendingList.results![index].name}',
                                                      style: TextStyle(
                                                        fontSize: 16.sp,
                                                        fontWeight: FontWeight.bold,
                                                        overflow: TextOverflow.ellipsis
                                                      ),
                                                    ),
                                                    const SizedBox(height: 8,),
                                                    Text('${controller.trendingList.results![index].overview}',
                                                      maxLines: 3,
                                                      style: TextStyle(
                                                          fontSize: 10.sp,
                                                          overflow: TextOverflow.ellipsis
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Shimmer.fromColors(
                                    baseColor: disabledColor,
                                    highlightColor: graySoft,
                                    child: Card(
                                        child: SizedBox(
                                          width: 300.w,
                                        )
                                    ),
                                  )
                              );
                              }
                            }
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Baru Rilis ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.w),
                              child: Text('${DateFormat.MMMM().format(DateTime.now())}',
                                style: TextStyle(
                                    fontSize: 14.sp
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                                onTap: (){
                                  Get.to<void>(TrendingScreen());
                                },
                                child: Row(
                                  children: [
                                    Text('Lihat Semua',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: primaryColor
                                      ),
                                    ),
                                    Icon(Icons.chevron_right,
                                        size: 24.w,
                                        color: primaryColor
                                    )
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 220.w,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.newReleaseList.length != 0 ? controller.newReleaseList.length : 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              if (controller.newReleaseList.length != 0) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                      child: InkWell(
                                        onTap: (){
                                          Get.to<void>(DetailScreen(), arguments: {'id': controller.newReleaseList[index].id!, 'media_type': controller.newReleaseList[index].mediaType});
                                        },
                                        customBorder: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: SizedBox(
                                          width: 140.w,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(16),
                                            child: IntrinsicHeight(
                                              child: Stack(
                                                children: [
                                                  SizedBox(
                                                    height: 220.w,
                                                    child: Image.network('${AppConstant.IMAGE_URL}${controller.newReleaseList[index].posterPath}',
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
                                                            color: controller.newReleaseList[index].voteAverage! < 8 ? surveyProgressColor : gradation3,
                                                            borderRadius: BorderRadius.circular(8.w)
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            Text('${(controller.newReleaseList[index].voteAverage! * 10).toString().substring(0,2)}',
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
                                        ),
                                      )
                                  )
                              );
                              } else {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Shimmer.fromColors(
                                    baseColor: disabledColor,
                                    highlightColor: graySoft,
                                    child: Card(
                                        child: SizedBox(
                                          width: 140.w,
                                        )
                                    ),
                                  )
                              );
                              }
                            }
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        child: Row(
                          children: [
                            Text('Rating Tertinggi',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                                onTap: (){
                                  Get.to<void>(TrendingScreen());
                                },
                                child: Row(
                                  children: [
                                    Text('Lihat Semua',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: primaryColor
                                      ),
                                    ),
                                    Icon(Icons.chevron_right,
                                        size: 24.w,
                                        color: primaryColor
                                    )
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 240.w,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.topRatedList.length != 0 ? controller.topRatedList.length : 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                              //var item = controller.trendingList.results![index];
                              if (controller.topRatedList.length != 0) {
                                return Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Card(
                                  child: InkWell(
                                    onTap: (){
                                      Get.to<void>(DetailScreen(), arguments: {'id': controller.topRatedList[index].id!, 'media_type': controller.topRatedList[index].mediaType});
                                    },
                                    customBorder: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: SizedBox(
                                      width: 300.w,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.circular(16.0),
                                              child: Image.network('${AppConstant.IMAGE_URL}${controller.topRatedList[index].backdropPath}')
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 8,),
                                                Text('${controller.topRatedList[index].name}',
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight: FontWeight.bold,
                                                      overflow: TextOverflow.ellipsis
                                                  ),
                                                ),
                                                const SizedBox(height: 8,),
                                                Row(
                                                  children: [
                                                    Text('${DateFormat('MMM dd, yyyy').format(DateTime.parse(controller.topRatedList[index].firstAirDate!))}',
                                                      maxLines: 3,
                                                      style: TextStyle(
                                                          fontSize: 12.sp,
                                                          overflow: TextOverflow.ellipsis
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Row(
                                                      children: [
                                                        Image.asset('assets/icons/rate.png',
                                                          height: 12.w,
                                                          color: gray,
                                                        ),
                                                        SizedBox(width: 4,),
                                                        Text('${(controller.topRatedList[index].voteAverage! * 10).toString().substring(0,2)}',
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight: FontWeight.bold
                                                          ),
                                                        ),
                                                        Text('%',
                                                          style: TextStyle(
                                                            fontSize: 10.sp,
                                                            fontWeight: FontWeight.bold
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                              } else {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Shimmer.fromColors(
                                    baseColor: disabledColor,
                                    highlightColor: graySoft,
                                    child: Card(
                                        child: SizedBox(
                                          width: 300.w,
                                        )
                                    ),
                                  )
                              );
                              }
                            }
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Jelajahi Film & Serial TV',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Wrap(
                          spacing: 6,
                          children: controller.genres.map((genre) => Container(
                            margin: EdgeInsets.only(left: 8, bottom: 8),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: graySoft),
                                borderRadius: BorderRadius.circular(24)
                            ),
                            child: Text('${genre.name}',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                          ).toList(),
                        ),
                      ),
                      const SizedBox(height: 104,)
                  ],
                )
              )
          ),
        )
    );
  }

}