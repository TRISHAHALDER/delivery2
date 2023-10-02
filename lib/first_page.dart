import 'package:delivery_app/Pages/activity_page.dart';
import 'package:delivery_app/Pages/home_page.dart';
import 'package:delivery_app/Pages/profile_page.dart';
import 'package:delivery_app/Pages/services_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  // Define your onTap function to handle item presses
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      String label, String imagePath, String activeIconPath) {
    return BottomNavigationBarItem(
      icon: Image.asset(imagePath, width: 24.w, height: 24.h),
      label: label,
      activeIcon: Image.asset(activeIconPath, width: 24.w, height: 24.h,)
    );
  }

  final List _pages = [
    HomePage(),
    ServicesPage(),
    ActivityPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        onTap: _onItemTapped, // Use the onTap function to handle item presses
        currentIndex: _selectedIndex,
        items: [
          _buildBottomNavigationBarItem(
            'Home',
            'assets/icons/home.png',
            'assets/icons/home_a.png',
          ),
          _buildBottomNavigationBarItem(
            'Services',
            'assets/icons/services.png',
            'assets/icons/services_a.png',
          ),
          _buildBottomNavigationBarItem(
            'Activity',
            'assets/icons/activity.png',
            'assets/icons/activity_a.png',
          ),
          _buildBottomNavigationBarItem(
            'Profile',
            'assets/icons/user.png',
            'assets/icons/user_a.png',
          ),
        ],
        selectedLabelStyle: TextStyle(
          fontSize: 12.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
          color: Colors.black,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
          color: Colors.grey.withOpacity(0.5),
        ),
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.grey.withOpacity(0.5)),
      ),
    );
  }
}
