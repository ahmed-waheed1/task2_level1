import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_level1/features/my_profile/data/models/container_model.dart';
import 'package:task2_level1/gen/assets.gen.dart';

class MyProfileRow extends StatelessWidget {
  const MyProfileRow({super.key, required this.containerModel});
  final ContainerModel containerModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            containerModel.icon.svg(
              width: 30.w,
              height: 30.h,
            ),
            SizedBox(width: 10.w),
            Text(
              containerModel.title,
              style: TextStyle(
                color: const Color(0xBF091C3F),
                fontSize: 15.sp,
                fontFamily: 'Overpass',
                fontWeight: FontWeight.w500,
                height: 0.09,
                letterSpacing: -0.24,
              ),
            ),
            const Spacer(),
            Assets.images.arrowRight.svg(
              width: 30.w,
              height: 30.h,
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Divider(
          color: const Color(0x14091C3F),
          thickness: 1.h,
          indent: 40.w,
          endIndent: 40.w,
        ),
      ],
    );
  }
}
