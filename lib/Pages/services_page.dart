// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {

 GestureDetector buildServiceWidget(
      String iconName, String serviceName, VoidCallback onTapCallback) {
    return GestureDetector(
      onTap: onTapCallback,
      child: Container(
        width: 168.w,
        height: 168.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Color(0xFFBBC1CC),
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/$iconName.png'),
            SizedBox(height: 20.0),
            Text(
              serviceName,
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Color(0xFF222222),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Text(
                    'Services',
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000)),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     buildServiceWidget('car', 'Ride', () {
                        // Handle the tap event for Ride service here
                      }),
                       buildServiceWidget('truck', 'Package', () {
                        // Handle the tap event for Ride service here
                        Navigator.pushNamed(context, '/package_services_select_vehicle');
                      }),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     buildServiceWidget('dog', 'Pet Transit', () {
                        // Handle the tap event for Ride service here
                      }),
                       buildServiceWidget('bike', 'Delivery', () {
                        // Handle the tap event for Ride service here
                      }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     buildServiceWidget('car_pool', 'Ride Pool', () {
                        // Handle the tap event for Ride service here
                      }),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
