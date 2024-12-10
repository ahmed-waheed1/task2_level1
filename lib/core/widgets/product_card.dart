import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task2_level1/features/product_detials/data/models/product_model.dart';
import 'package:task2_level1/gen/assets.gen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ProductModel product = ProductModel(
          title: 'Sugar Free Gold Low Calories',
          description: 'Etiam mollis metus non purus',
          imagePath: Assets.images.image21,
          oldPrice: 99,
          newPrice: 56,
          expiryDate: '12/12/2022',
          brandName: 'Brand Name',
          brandDescription: 'Brand Description',
        );
        context.go('/home/product-details', extra: product);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: const Color(0x0C000000),
              blurRadius: 23.r,
              offset: Offset(0, 6.h),
            ),
          ],
        ),
        width: 159.93.w,
        height: 280.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 147.22.h,
              decoration: ShapeDecoration(
                color: const Color(0xFFEDEDEF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.r)),
                image: DecorationImage(
                  image: AssetImage(
                    Assets.images.image138.path,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                'Accu-check Active\nTest Strip',
                style: TextStyle(
                  color: const Color(0xFF090F47),
                  fontSize: 10.sp,
                  fontFamily: 'Overpass',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                'Rs.112',
                style: TextStyle(
                  color: const Color(0xFF090F47),
                  fontSize: 16.sp,
                  fontFamily: 'Overpass',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
