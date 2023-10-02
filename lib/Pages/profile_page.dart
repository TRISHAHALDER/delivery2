import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  Widget buildProfileHeader() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: Text(
              'Profile',
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileInfo() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 25, 20, 12),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Container(
                width: 64.w,
                height: 64.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFFA1A1AA),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Michael Scott',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'scott_michael@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF667085),
                  ),
                ),
                Text(
                  '+91 8996584554',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF667085),
                  ),
                )
              ],
            ),
            Spacer(),
            IconButton(
              icon: Image.asset('assets/icons/edit.png'),
              onPressed: () {
                // Add your edit functionality here
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListItem(String title, String iconPath, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset(iconPath),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: onTap,
            child: Image.asset('assets/icons/right_arrow.png'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              buildProfileHeader(),
              buildProfileInfo(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          SizedBox(height: 93.h),
                          buildListItem('Payments', 'assets/icons/payments.png', () {
                            // Handle Payments
                          }),
                          Center(
                            child: Divider(
                              color: Color(0xFFBBC1CC),
                              height: 1.h,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          buildListItem('Refer and Earn', 'assets/icons/gift.png', () {
                            // Handle Refer and Earn
                          }),
                          Center(
                            child: Divider(
                              color: Color(0xFFBBC1CC),
                              height: 1.h,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          buildListItem('Notifications', 'assets/icons/bell.png', () {
                            // Handle Refer and Earn
                          }),
                          Center(
                            child: Divider(
                              color: Color(0xFFBBC1CC),
                              height: 1.h,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          buildListItem('Emergency Contacts', 'assets/icons/phone.png', () {
                            // Handle Refer and Earn
                          }),
                          Center(
                            child: Divider(
                              color: Color(0xFFBBC1CC),
                              height: 1.h,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          buildListItem('About', 'assets/icons/about.png', () {
                            // Handle Refer and Earn
                          }),
                          Center(
                            child: Divider(
                              color: Color(0xFFBBC1CC),
                              height: 1.h,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          buildListItem('Help', 'assets/icons/help.png', () {
                            // Handle Refer and Earn
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
