import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task2_level1/features/product_detials/data/models/product_model.dart';
import 'package:task2_level1/gen/assets.gen.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF090F47)),
          onPressed: () => context.pop(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Assets.images.group3636.svg(color: const Color(0xFF090F47)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Assets.images.group3637.svg(color: const Color(0xFF090F47)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.title,
              style: TextStyle(
                color: const Color(0xFF090F47),
                fontSize: 22.sp,
                fontFamily: 'Overpass',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              product.description,
              style: TextStyle(
                color: const Color(0x72090F47),
                fontSize: 14.sp,
                fontFamily: 'Overpass',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 16.h),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 200.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Colors.grey[200],
                    ),
                    child: product.imagePath.image(fit: BoxFit.contain),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        width: 8.w,
                        height: 8.h,
                        decoration: const BoxDecoration(
                          color: Color(0x26090F47),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rs.${product.oldPrice.toString()}',
                          style: TextStyle(
                            color: const Color(0x7F080E47),
                            fontSize: 18.sp,
                            fontFamily: 'Overpass',
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Rs.${product.newPrice.toString()}',
                          style: TextStyle(
                            color: const Color(0xFF090F47),
                            fontSize: 18.sp,
                            fontFamily: 'Overpass',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Etiam mollis ',
                      style: TextStyle(
                        color: const Color(0xB2080E47),
                        fontSize: 14.sp,
                        fontFamily: 'Overpass',
                        fontWeight: FontWeight.w400,
                        height: 0.09,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Add to cart',
                  style: TextStyle(
                    color: const Color(0xFF006AFF),
                    fontSize: 14.sp,
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            const Divider(),
            SizedBox(height: 16.h),
            // Product Details Section
            Text(
              'Product Details',
              style: TextStyle(
                color: const Color(0xFF090F47),
                fontSize: 16.sp,
                fontFamily: 'Overpass',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.\nNunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
              style: TextStyle(
                color: const Color(0x72090F47),
                fontSize: 14.sp,
                fontFamily: 'Overpass',
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Expiry Date',
                  style: TextStyle(
                    color: const Color(0xFF090F47),
                    fontSize: 16.sp,
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  product.expiryDate,
                  style: TextStyle(
                    color: const Color(0x72090F47),
                    fontSize: 14.sp,
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Brand Name',
                  style: TextStyle(
                    color: const Color(0xFF090F47),
                    fontSize: 16.sp,
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  product.brandName,
                  style: TextStyle(
                    color: const Color(0x72090F47),
                    fontSize: 14.sp,
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.w),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => context.push('/cart-empty'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF006AFF),
              padding: EdgeInsets.symmetric(vertical: 16.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.r),
              ),
            ),
            child: Text(
              'GO TO CART',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontFamily: 'Overpass',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
