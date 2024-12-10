import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_level1/gen/assets.gen.dart';

Widget buildUserInfo() {
  return Row(
    children: <Widget>[
      Assets.images.photo1.image(),
      SizedBox(width: 12.w),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hi, Rahul Kanjariya',
            style: TextStyle(
              fontSize: 20.sp,
              fontFamily: 'Overpass',
              fontWeight: FontWeight.w400,
              height: 1.0,
              letterSpacing: -0.24,
            ),
          ),
          Text(
            'Welcome to GDG Medical Store',
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Overpass',
              fontWeight: FontWeight.w400,
              height: 1.0,
              letterSpacing: -0.24,
            ),
          ),
        ],
      ),
    ],
  );
}
