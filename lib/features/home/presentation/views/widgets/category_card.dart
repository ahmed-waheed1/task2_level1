import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task2_level1/core/routes/app_router.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final List<Color> gradientColors;

  const CategoryCard({
    super.key,
    required this.title,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/home/categories', extra: title);
      },
      child: Container(
        width: 73.17.w,
        height: 150.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(70.r),
          boxShadow: [
            BoxShadow(
              color: const Color(0x0C000000),
              blurRadius: 23.r,
              offset: Offset(0, 6.h),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 54.88.w,
              height: 70.78.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: gradientColors,
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xF2090F47),
                fontSize: 11.sp,
                fontFamily: 'Overpass',
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
