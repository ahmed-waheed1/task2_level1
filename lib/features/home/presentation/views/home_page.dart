import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_level1/features/home/presentation/views/widgets/category_card.dart';
import 'package:task2_level1/core/widgets/product_card.dart';
import 'package:task2_level1/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:task2_level1/gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.h),
                  Text(
                    'Top Categories',
                    style: TextStyle(
                      color: const Color(0xFF090F47),
                      fontSize: 16.sp,
                      fontFamily: 'Overpass',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const CategoryCard(
                          title: 'Dental',
                          gradientColors: [
                            Color(0xFFFF9598),
                            Color(0xFFFF70A7),
                          ],
                        ),
                        SizedBox(width: 11.w),
                        const CategoryCard(
                          title: 'Wellness',
                          gradientColors: [
                            Color(0xFF19E5A5),
                            Color(0xFF15BD92),
                          ],
                        ),
                        SizedBox(width: 11.w),
                        const CategoryCard(
                          title: 'Homeo',
                          gradientColors: [
                            Color(0xFFFFC06F),
                            Color(0xFFFF793A),
                          ],
                        ),
                        SizedBox(width: 11.w),
                        const CategoryCard(
                          title: 'Eye care',
                          gradientColors: [
                            Color(0xFF4DB7FF),
                            Color(0xFF3E7DFF),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    height: 211.7.h,
                    width: 362.11.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          Assets.images.flatLayPillsSyringeWithCopySpace1.path,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 42.w,
                          top: 66.h,
                          child: SizedBox(
                            width: 131.4.w,
                            height: 21.9.h,
                            child: Text(
                              'Save extra on',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFF1987FB),
                                fontSize: 20.sp,
                                fontFamily: 'Overpass',
                                fontWeight: FontWeight.w700,
                                height: 0.05,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 42.w,
                          top: 90.h,
                          child: SizedBox(
                            width: 131.4.w,
                            height: 21.9.h,
                            child: Text(
                              'every order',
                              style: TextStyle(
                                color: const Color(0xFF1987FB),
                                fontSize: 20.sp,
                                fontFamily: 'Overpass',
                                fontWeight: FontWeight.w700,
                                height: 0.05,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Deals of the Day',
                        style: TextStyle(
                          color: const Color(0xFF090F47),
                          fontSize: 16.sp,
                          fontFamily: 'Overpass',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      Text(
                        'More',
                        style: TextStyle(
                          color: const Color(0xFF006AFF),
                          fontSize: 14.sp,
                          fontFamily: 'Overpass',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  // Grid View inside ListView
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.w,
                      mainAxisSpacing: 16.h,
                    ),
                    itemCount: 4, // You can adjust the number of items here
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const ProductCard();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
