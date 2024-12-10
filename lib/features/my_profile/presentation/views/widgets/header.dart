import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildHeader() {
  return Text(
    'My Profile',
    style: TextStyle(
      color: const Color(0xFF090F47),
      fontSize: 16.sp,
      fontFamily: 'Overpass',
      fontWeight: FontWeight.w700,
      height: 1.0,
    ),
  );
}
