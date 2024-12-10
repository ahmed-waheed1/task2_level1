import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_level1/features/my_profile/data/models/container_model.dart';
import 'package:task2_level1/features/my_profile/presentation/views/widgets/my_profile_row.dart';

Widget buildProfileOptions(List<ContainerModel> options) {
  return Column(
    children: options
        .map((option) => Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: MyProfileRow(containerModel: option),
            ))
        .toList(),
  );
}
