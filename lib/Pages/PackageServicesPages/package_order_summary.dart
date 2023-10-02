import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageOrderSummary extends StatefulWidget {
  const PackageOrderSummary({super.key});

  @override
  State<PackageOrderSummary> createState() => _PackageOrderSummaryState();
}

class _PackageOrderSummaryState extends State<PackageOrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Services',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF222222)),
              ),
            ),
            SizedBox(height: 28.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 22, 0),
                  child: Image.asset('assets/icons/cmtruck.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mini Truck',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2E2E2E)),
                    ),
                    Text(
                      '__kg, 20x 8x6 ft',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF667085)),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 16, 16, 16),
              child: Divider(
                color: Color(0xFFCDCDCD),
                height: 1.h,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 22, 0),
                  child: Image.asset('assets/icons/chelper.png'),
                ),
                Text(
                  '1 Helper',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2E2E2E)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 16, 0, 32),
              child: Divider(
                color: Color(0xFFCDCDCD),
                height: 1.h,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Pickup Date',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Color(0xFF000000)),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 22, 0),
                  child: Image.asset('assets/icons/calendar.png'),
                ),
                Text(
                  '20.15.2023',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF667085)),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Divider(
              color: Color(0xFFCDCDCD),
              height: 1.h,
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Order Summary",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    color: Color(0xFF222222)),
              ),
            ),
            SizedBox(height: 26.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Charge',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2E2E2E)),
                  ),
                  Text(
                    '₹1500/-',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2E2E2E)),
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Labour Charge',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2E2E2E)),
                  ),
                  Text(
                    '₹100/-',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2E2E2E)),
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Convenience fee',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2E2E2E)),
                  ),
                  Text(
                    '₹100/-',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2E2E2E)),
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 16, 0, 32),
              child: Divider(
                color: Color(0xFFCDCDCD),
                height: 1.h,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2E2E2E)),
                  ),
                  Text(
                    '₹1700/-',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2E2E2E)),
                  )
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Divider(
              color: Color(0xFFCDCDCD),
              height: 1.h,
            ),
            SizedBox(height: 26.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Booking Details',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF222222)),
              ),
            ),
            SizedBox(height: 22.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF4CAF50),
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFED4C5C),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Text(
                        'Vijay Complex, Bhavanipur Colony, Shas...',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'Paradise Residency, Bhavanipur Colony, ...',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Divider(
              color: Color(0x40606060),
              height: 1.h,
            ),
            SizedBox(height: 29),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 24.w,
                          height: 24.h,
                          padding: const EdgeInsets.fromLTRB(6, 1, 5, 1),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF19305),
                          ),
                          child: Text(
                            "%",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            "Apply Coupon",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFF19305),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/icons/right_arrow.png', // Replace with the correct path to your SVG file
                      width: 24.w, // Customize the width
                      height: 24.h, // Customize the icon color
                    ),
                  ],
                ),
            ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Divider(
                  color: Colors.amber,
                  height: 1.h,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/indianrupee.png",
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            "Cash",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFF19305),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/icons/right_arrow.png', // Replace with the correct path to your SVG file
                      width: 24, // Customize the width
                      height: 24, // Customize the icon color
                    ),
                  ],
                ),
              ),
              SizedBox(height: 55.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: 353.w,
                  height: 55.h,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/package_booking_sucess');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF19305),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r))),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 21.h,
              )
          ],
        )),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: Colors.white,
      title: Text(
        "Order Summary",
        style: TextStyle(
            fontSize: 20.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            color: Colors.black),
      ),
    );
  }
}
