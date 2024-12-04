import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/constant/app_constant.dart';
import 'package:tmdb_tiketux/core/core/constant/colors.dart';
import 'package:tmdb_tiketux/feature/archive/archive_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ArchiveScreen extends StatelessWidget{
  const ArchiveScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ArchiveController(),
        builder: (controller) => Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('Watchlist'),
          ),
          body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                controller.getTrendingList();
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 8, bottom: 8),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: controller.selectedFilter == 0 ? primaryColor : Colors.white,
                                    border: Border.all(color: graySoft),
                                    borderRadius: BorderRadius.circular(24)
                                ),
                                child: Text(controller.filter[0],
                                  style: TextStyle(
                                      color: controller.selectedFilter == 0 ? Colors.white : Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                controller.getPopularMovieList();
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 8, bottom: 8),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: controller.selectedFilter == 1 ? primaryColor : Colors.white,
                                    border: Border.all(color: graySoft),
                                    borderRadius: BorderRadius.circular(24)
                                ),
                                child: Text(controller.filter[1],
                                  style: TextStyle(
                                      color: controller.selectedFilter == 1 ? Colors.white : Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                controller.getPopularTvList();
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 8, bottom: 8),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: controller.selectedFilter == 2 ? primaryColor : Colors.white,
                                    border: Border.all(color: graySoft),
                                    borderRadius: BorderRadius.circular(24)
                                ),
                                child: Text(controller.filter[2],
                                  style: TextStyle(
                                      color: controller.selectedFilter == 2 ? Colors.white : Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            )
                          ]
                      ),

                      controller.trendingList.totalResults != null ?
                      Column(
                        children: controller.trendingList.results!.map((item) => Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Card(
                              child: SizedBox(
                                width: 320.w,
                                height: 280.w,
                                child: ClipRRect(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(16),
                                          child: IntrinsicHeight(
                                            child: Stack(
                                              children: [
                                                Image.network('${AppConstant.IMAGE_URL}${item.backdropPath}'),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: UnconstrainedBox(
                                                    child: Container(
                                                      margin: EdgeInsets.only(right: 16, top: 16),
                                                      padding: EdgeInsets.all(8),
                                                      decoration: BoxDecoration(
                                                          color: item.voteAverage! < 8 ? surveyProgressColor : gradation3,
                                                          borderRadius: BorderRadius.circular(8.w)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Image.asset('assets/icons/rate.png',
                                                            height: 9.w,
                                                            color: Colors.black,
                                                          ),
                                                          SizedBox(width: 4,),
                                                          Text('${(item.voteAverage! * 10).toString().substring(0,2)}',
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
                                            Text('${item.name}',
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.bold,
                                                  overflow: TextOverflow.ellipsis
                                              ),
                                            ),
                                            const SizedBox(height: 8,),
                                            Text('${item.overview}',
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
                        )
                        ).toList(),
                      ) :
                      SizedBox(
                        width: 340.w,
                        child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Shimmer.fromColors(
                                  baseColor: disabledColor,
                                  highlightColor: graySoft,
                                  child: Card(
                                      child: SizedBox(
                                          width: 320.w,
                                          height: 280.w
                                      )
                                  ),
                                )
                            );
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              )
          ),
        )
    );
  }
  
}