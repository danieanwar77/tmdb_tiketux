import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_tiketux/core/core/constant/app_constant.dart';
import 'package:tmdb_tiketux/core/core/constant/colors.dart';
import 'package:tmdb_tiketux/feature/dashboard/dashboard_screen.dart';
import 'package:tmdb_tiketux/feature/detail/detail_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: DetailController(),
        builder: (controller) => Scaffold(
          extendBodyBehindAppBar: true,

          body: SingleChildScrollView(
            child: Column(
              children: [
                controller.detail.posterPath != null ?
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).width,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).width,
                        child: Image.network('${AppConstant.IMAGE_URL}${controller.detail.posterPath}',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.black54,
                            ),
                            const BoxShadow(
                              color: Colors.black12,
                              spreadRadius: -20.0,
                              blurRadius: 12.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppBar(
                                leadingWidth: 40.w,
                                automaticallyImplyLeading: false,
                                leading: UnconstrainedBox(
                                  child: GestureDetector(
                                    onTap: (){
                                      Get.off<void>(DashboardScreen(), transition: Transition.leftToRight);
                                    },
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Container(
                                          width: 40.w,
                                          height: 40.w,
                                          color: Colors.white24,
                                          child: Icon(Icons.arrow_back_rounded,
                                            color: Colors.white,
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                                backgroundColor: Colors.transparent,
                                elevation: 0.0,
                              ),
                              const Spacer(),
                              Text(controller.detail.originalName != null ? controller.detail.originalName! : controller.detail.title != null ? controller.detail.title! : '',
                                style: TextStyle(
                                  fontSize: 18.w,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              Text(controller.detail.genres!.length != 0 ? controller.detail.genres!.map((item){return item.name;}).toList().join(', ') : '',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                              const SizedBox(height: 16,),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 16),
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(8.w)
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.play_arrow_rounded,
                                          color: Colors.white,
                                        ),
                                        Text('Lihat Trailer',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16, bottom: 16),
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: Colors.white38,
                                        borderRadius: BorderRadius.circular(8.w)
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.add_rounded,
                                          color: Colors.white,
                                        ),
                                        Text('Watchlist',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 16, bottom: 16),
                                    padding: EdgeInsets.all(11),
                                    decoration: BoxDecoration(
                                        color: controller.detail.voteAverage! < 8 ? surveyProgressColor : gradation3,
                                        borderRadius: BorderRadius.circular(8.w)
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/icons/rate.png',
                                          height: 9.w,
                                          color: Colors.black,
                                        ),
                                        SizedBox(width: 4,),
                                        Text('${(controller.detail.voteAverage! * 10).toString().substring(0,2)}',
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
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ) : Shimmer.fromColors(
                  baseColor: disabledColor,
                  highlightColor: graySoft,
                  child: Container(
                    color: Colors.green,
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).width,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gambaran Umum',
                        style: TextStyle(
                            fontSize: 16.w,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Text(controller.detail.overview ?? '',
                        style: TextStyle(
                          fontSize: 12.sp
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
                            mainAxisExtent: 40.w,
                          ),
                          padding: EdgeInsets.all(8.0),
                          itemCount: 8,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.credits.cast?[index].knownForDepartment ?? '',
                                    style: TextStyle(
                                        fontSize: 10.sp
                                    ),
                                  ),
                                  Text(
                                    controller.credits.cast?[index].name ?? '',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        children: [
                          Text('Pemeran & Kru',
                            style: TextStyle(
                                fontSize: 16.w,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                              onTap: (){

                              },
                              child: Row(
                                children: [
                                  Text('Lihat Semua',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: primaryColor
                                    ),
                                  ),
                                  Icon(Icons.chevron_right,
                                      size: 18.w,
                                      color: primaryColor
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 220.w,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.credits.cast != null ? controller.credits.cast?.length : 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        //var item = controller.trendingList.results![index];
                        if (controller.credits.cast != null) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Card(
                              child: SizedBox(
                                width: 140.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                                        child: SizedBox(
                                            width: 140.w,
                                            height: 140.w,
                                            child: Image.network('${AppConstant.IMAGE_URL}${controller.credits.cast![index].profilePath}',
                                              fit: BoxFit.cover,
                                              alignment: Alignment.topCenter,
                                            )
                                        )
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 8,),
                                          Text('${controller.credits.cast![index].name}',
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                                overflow: TextOverflow.ellipsis
                                            ),
                                          ),
                                          const SizedBox(height: 8,),
                                          Text('${controller.credits.cast![index].character}',
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
                          );
                        } else {
                          return Padding(
                              padding: const EdgeInsets.only(left: 8),
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
                  padding: const EdgeInsets.all(24),
                  child: SizedBox(
                      width: double.infinity,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                          mainAxisExtent: 60.w,
                        ),
                        padding: EdgeInsets.all(8.0),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Status',
                                  style: TextStyle(
                                      fontSize: 10.sp
                                  ),
                                ),
                                Text(
                                  controller.detail.status ?? '-',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bahasa Ucapan',
                                  style: TextStyle(
                                      fontSize: 10.sp
                                  ),
                                ),
                                Text(
                                  controller.detail.spokenLanguages?.map((item){return item.name;}).toList().join(', ') ?? '',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Anggaran',
                                  style: TextStyle(
                                      fontSize: 10.sp
                                  ),
                                ),
                                Text(
                                  controller.detail.budget != null ? '\$ ${NumberFormat('#,##0.00', 'en_US').format(controller.detail.budget)}' : '-',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pemasukan',
                                  style: TextStyle(
                                      fontSize: 10.sp
                                  ),
                                ),
                                Text(
                                  controller.detail.revenue != null ? '\$ ${NumberFormat('#,##0.00', 'en_US').format(controller.detail.revenue)}' : '-',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 210.w,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.reviews.results != null ? controller.reviews.results?.length : 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        //var item = controller.trendingList.results![index];
                        if (controller.credits.cast != null) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Card(
                              child: SizedBox(
                                width: 300.w,
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.circular(80),
                                              child: controller.reviews.results![index].authorDetails?.avatarPath != null ? SizedBox(
                                                  width: 60.w,
                                                  height: 60.w,
                                                  child: Image.network('${AppConstant.IMAGE_URL}${controller.reviews.results![index].authorDetails?.avatarPath}',
                                                    fit: BoxFit.cover,
                                                    alignment: Alignment.topCenter,
                                                  )
                                              ) : Container(
                                                width: 60.w,
                                                height: 60.w,
                                                color: gray,
                                              )
                                          ),
                                          const SizedBox(width: 16,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(controller.reviews.results![index].author ?? '-'),
                                              Text(DateFormat('dd MMMM yyyy').format(DateTime.parse(controller.reviews.results![index].createdAt!)) ?? '-')
                                            ],
                                          ),
                                          const Spacer(),
                                          Container(
                                            margin: EdgeInsets.only(left: 16, bottom: 16),
                                            padding: EdgeInsets.all(11),
                                            decoration: BoxDecoration(
                                                color: controller.reviews.results![index].authorDetails!.rating != null ? controller.reviews.results![index].authorDetails!.rating! < 8 ? surveyProgressColor : gradation3 : surveyProgressColor,
                                                borderRadius: BorderRadius.circular(80)
                                            ),
                                            child: Row(
                                              children: [
                                                Image.asset('assets/icons/rate.png',
                                                  height: 9.w,
                                                  color: Colors.black,
                                                ),
                                                SizedBox(width: 4,),
                                                Text(controller.reviews.results![index].authorDetails!.rating != null ? '${(controller.reviews.results![index].authorDetails!.rating).toString().substring(0,3)}' : '-',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('${controller.reviews.results![index].content ?? '-'}',
                                            maxLines: 7,
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                overflow: TextOverflow.ellipsis
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
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
                const SizedBox(height: 52,)
              ],
            )
          ),
        )
    );
  }
}