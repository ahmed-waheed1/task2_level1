import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
            color: const Color(0xFF090F47),
            fontSize: 16.sp,
            fontFamily: 'Overpass',
            fontWeight: FontWeight.w700,
            height: 1.0,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0.w),
            child: Center(
              child: Text(
                'Clear all',
                style: TextStyle(
                  color: const Color(0xFF1987FB),
                  fontSize: 13.sp,
                  fontFamily: 'Overpass',
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 8.0.h),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F7FA),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ListTile(
                  title: Text(
                    'Notification Title $index',
                    style: TextStyle(
                      color: const Color(0xFF090F47),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    'This is the description of notification $index.',
                    style: TextStyle(
                      color: const Color(0xFF6A6A6A),
                      fontSize: 12.sp,
                    ),
                  ),
                  trailing: Icon(
                    Icons.notifications,
                    color: const Color(0xFF1987FB),
                    size: 20.sp,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
