import 'package:flutter/material.dart';
import 'package:task2_level1/features/cart/presentation/views/cart_empty.dart';
import 'package:task2_level1/features/home/presentation/views/home_page.dart';
import 'package:task2_level1/features/home/presentation/views/widgets/bottom_nav_bar.dart';
import 'package:task2_level1/features/my_profile/presentation/views/my_profile_view.dart';
import 'package:task2_level1/features/notification/presentation/views/notifaction_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(), 
    const NotificationPage(),
    const CartEmptyPage(),
    const MyProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
