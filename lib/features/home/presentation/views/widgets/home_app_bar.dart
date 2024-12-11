import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task2_level1/gen/assets.gen.dart'; // Assuming this is where the assets are located

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50.h),
      width: 375.w,
      height: 270.h,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.01, -1.00),
          end: Alignment(-0.01, 1),
          colors: [Color(0xFF4157FF), Color(0xFF3C50E6)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 32.h,
            left: 27.w,
            child: Image(
              image: AssetImage(Assets.images.photo1.path),
            ),
          ),
          Positioned(
            top: 130.h,
            left: 27.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Rahul",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Welcome to GDG Medical Store",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20.h,
            right: 20.w,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      context.push('/notifications');
                    },
                    icon: Icon(Icons.notifications,
                        color: Colors.white, size: 24.sp)),
                SizedBox(width: 15.w),
                IconButton(
                    onPressed: () {
                      context.push('/cart-empty');
                    },
                    icon: Icon(Icons.shopping_cart,
                        color: Colors.white, size: 24.sp)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
