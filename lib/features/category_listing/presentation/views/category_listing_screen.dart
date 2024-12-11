import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_level1/features/category_listing/presentation/views/widgets/sale_product_card.dart';
import 'package:task2_level1/gen/assets.gen.dart';

class CategoryListingScreen extends StatelessWidget {
  final String categoryName;

  const CategoryListingScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
          style: TextStyle(
            color: const Color(0xFF090F47),
            fontSize: 16.sp,
            fontFamily: 'Overpass',
            fontWeight: FontWeight.w700,
            height: 1.0,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: const Color(0xFF090F47),
                      fontSize: 16.sp,
                      fontFamily: 'Overpass',
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    height: 230.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 16.0.w),
                          child: Container(
                            width: 111.41.w,
                            height: 230.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF5F7FA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 111.41.w,
                                  height: 150.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFC4C4C4),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.r),
                                      topRight: Radius.circular(10.r),
                                    ),
                                    image:  DecorationImage(
                                      image:   AssetImage(
                                          Assets.images.image133.path),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                SizedBox(
                                  width: 62.35.w,
                                  child: Text(
                                    'Sugar \nSubstitute',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color(0xFF090F47),
                                      fontSize: 13.sp,
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w400,
                                      height: 1.2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 60.h),
                  Text(
                    'All Products',
                    style: TextStyle(
                      color: const Color(0xFF090F47),
                      fontSize: 16.sp,
                      fontFamily: 'Overpass',
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                childAspectRatio: 3 / 4,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const SaleProductCard();
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
