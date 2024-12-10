import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_level1/gen/assets.gen.dart';

class BottomNavItem extends StatelessWidget {
  final int index;
  final SvgGenImage icon;
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavItem({
    super.key,
    required this.index,
    required this.icon,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon.svg(
            color: selectedIndex == index
                ? const Color(0xFF4157FF) 
                : const Color(0xff090f4773).withOpacity(0.5), 
            width: 24.w,
            height: 24.h,
          ),
          SizedBox(height: 5.h),
          Text(
            _getLabelForIndex(index),
            style: TextStyle(
              color: selectedIndex == index
                  ? const Color(0xFF4157FF)
                  : const Color(0xff090f4773).withOpacity(0.5),
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  String _getLabelForIndex(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Notification';
      case 2:
        return 'Shopping Cart';
      case 3:
        return 'User';
      default:
        return '';
    }
  }
}
