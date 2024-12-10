import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task2_level1/gen/assets.gen.dart';

class CartEmptyPage extends StatelessWidget {
  const CartEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  Assets.images.ellipse296.path,
                ),
                SvgPicture.asset(
                  Assets.images.cart.path,
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Text(
              'Whoops',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF091C3F),
                fontSize: 16.sp,
                fontFamily: 'Overpass',
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Your cart is empty!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0x72091C3F),
                fontSize: 14.sp,
                fontFamily: 'Overpass',
                fontWeight: FontWeight.w500,
                height: 1.5,
                letterSpacing: -0.24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
