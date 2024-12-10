import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_level1/features/home/presentation/views/widgets/bottom_nav_item.dart';
import 'package:task2_level1/gen/assets.gen.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            index: 0,
            icon: Assets.images.btnHome,
            selectedIndex: selectedIndex,
            onTap: onItemTapped,
          ),
          BottomNavItem(
            index: 1,
            icon: Assets.images.btnNotification,
            selectedIndex: selectedIndex,
            onTap: onItemTapped,
          ),
          SizedBox(width: 30.w), // Custom space between second and third icon
          BottomNavItem(
            index: 2,
            icon: Assets.images.btnShoppingCart,
            selectedIndex: selectedIndex,
            onTap: onItemTapped,
          ),
          BottomNavItem(
            index: 3,
            icon: Assets.images.btnUserIcon,
            selectedIndex: selectedIndex,
            onTap: onItemTapped,
          ),
        ],
      ),
    );
  }
}
