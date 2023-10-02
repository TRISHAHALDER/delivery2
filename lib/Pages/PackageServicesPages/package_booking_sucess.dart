import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageBookingSuccess extends StatefulWidget {
  const PackageBookingSuccess({super.key});

  @override
  State<PackageBookingSuccess> createState() => _PackageBookingSuccessState();
}

class _PackageBookingSuccessState extends State<PackageBookingSuccess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100.h),
              Container(
                width: 94,
                height: 94,
                decoration: const BoxDecoration(
                    color: Color(0x1F098041), shape: BoxShape.circle),
                child: Center(child: Image.asset("assets/icons/tick.png")),
              ),
              SizedBox(
                height: 26.h,
              ),
              Text(
                "Booking Successful",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Your booking has been confirmed for ",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
               Text(
                "20.15.2022.",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20.h),
              buildLocationInfo(
                color: const Color(0xFF4CAF50),
                text: 'Vijay Complex, Bhavanipur Colony, Shas...',
              ),
              SizedBox(height: 16.h),
              buildLocationInfo(
                color: const Color(0xFFED4C5C),
                text: 'Paradise Residency, Bhavanipur Colony, ...',
              ),
              SizedBox(
                height: 16.h,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 0.5,
                  color: Color(0xFFCDCDCD),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Thank you for choosing us!",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 88.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 55.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF19305),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text(
                      "Done",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLocationInfo({required Color color, required String text}) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 12.w,
            height: 12.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
          SizedBox(width: 20.w),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 14.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
