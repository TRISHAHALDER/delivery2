import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageServiceSelectVehicles extends StatefulWidget {
  const PackageServiceSelectVehicles({super.key});

  @override
  State<PackageServiceSelectVehicles> createState() =>
      _PackageServiceSelectVehiclesState();
}

class _PackageServiceSelectVehiclesState
    extends State<PackageServiceSelectVehicles> {
  int selectedVehicleIndex = -1;
  bool isVehicleSelected() {
    return selectedVehicleIndex != -1;
  }
  Widget vehicleSelectors(String imagePath, String vehicleName,
      String vehilceWeights, String amount, int index) {
    final backgroundColor =
        index == selectedVehicleIndex ? Color(0xFFFFF7DC) : Color(0xFFFFFFFF);
    return GestureDetector(
      onTap: () {
        // Check if the tapped vehicle is already selected; if not, update the selection.
        if (index != selectedVehicleIndex) {
          setState(() {
            selectedVehicleIndex = index;
          });
        }
      },
      child: Container(
        width: 353.w,
        height: 74.h,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(width: 1.w, color: Color(0xFFBBC1CC)),
          borderRadius: BorderRadius.circular(12.r),
        ),
        padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imagePath),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  vehicleName,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
                Text(
                  vehilceWeights,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF667085)),
                )
              ],
            ),
            Text(
              amount,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000)),
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
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Package Delivery",
          style: TextStyle(
              fontSize: 20.sp,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Select vehicle type',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Color(0xFF222222)),
                ),
              ),
            ),
            SizedBox(height: 22.h),
            vehicleSelectors('assets/icons/3wheel.png', '3-Wheeler',
                '__kg, 20x 8x6 ft', '₹1500', 0),
            SizedBox(height: 28.h),
            vehicleSelectors('assets/icons/mtruck.png', 'Mini Truck',
                '__kg, 20x 8x6 ft', '₹2000', 1),
            SizedBox(height: 28.h),
            vehicleSelectors('assets/icons/ltruck.png', 'Large Truck',
                '__kg, 20x 8x6 ft', '₹2000', 2),
            SizedBox(height: 311.h),
            SizedBox(
              width: 353.w,
              height: 55.h,
              child: ElevatedButton(
                  onPressed: isVehicleSelected()
                      ? () {
                          Navigator.pushNamed(context, '/package_delivery_details');
                        }
                      : null,
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
            )
          ],
        ),
      )),
    );
  }
}

