import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_level1/features/my_profile/data/models/container_model.dart';
import 'package:task2_level1/features/my_profile/presentation/views/widgets/header.dart';
import 'package:task2_level1/features/my_profile/presentation/views/widgets/profile_options.dart';
import 'package:task2_level1/features/my_profile/presentation/views/widgets/user_info.dart';
import 'package:task2_level1/gen/assets.gen.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ContainerModel> profileOptions = [
      ContainerModel(
        icon: Assets.images.editProfile,
        title: 'Edit Profile',
      ),
      ContainerModel(
        icon: Assets.images.myOrders,
        title: 'My Orders',
      ),
      ContainerModel(
        icon: Assets.images.billing,
        title: 'Billing',
      ),
      ContainerModel(
        icon: Assets.images.faq,
        title: 'FAQ',
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 70.h, start: 22.w, end: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildHeader(),
            SizedBox(height: 25.h),
            buildUserInfo(),
            SizedBox(height: 40.h),
            buildProfileOptions(profileOptions),
          ],
        ),
      ),
    );
  }
}
