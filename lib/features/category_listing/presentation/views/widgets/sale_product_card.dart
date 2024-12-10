import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_level1/core/widgets/product_card.dart';
import 'package:task2_level1/gen/assets.gen.dart';

class SaleProductCard extends StatelessWidget {
  const SaleProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ProductCard(),
        Positioned(
          child: Stack(
            children: [
              Assets.images.vector3.svg(),
              Padding(
                padding: EdgeInsets.only(top: 16.h, left: 4.w),
                child: Transform.rotate(
                    angle: -0.8,
                    child:  Text(
                      'SALE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: 'Overpass',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
