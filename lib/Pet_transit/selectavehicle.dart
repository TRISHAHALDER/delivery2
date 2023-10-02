import 'package:delivery_app/Pet_transit/bookingdetails.dart';
import 'package:delivery_app/Pet_transit/modelvehicle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectVehicle extends StatefulWidget {
 const SelectVehicle({super.key});

  @override
  State<SelectVehicle> createState() => _SelectVehicleState();
}

class _SelectVehicleState extends State<SelectVehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Row(
          children: [
            Icon(
              Icons.navigate_before,
              size: 22.sp,
              color: Colors.black,
            ),
            SizedBox(
              width: 10.w,
            ),
           
            Text(
              'Pet Transit',
              style: TextStyle(
                  decoration: TextDecoration.none,
                  
                   fontSize: 20.sp,
                    fontFamily: 'Poppins',
                  color: Color(0xFF000000),
                //  height: 28.sp,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 20),
          child: SingleChildScrollView(
            child: Scrollbar(
              scrollbarOrientation: ScrollbarOrientation.bottom,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select vehicle type",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color:Color(0xFF222222),),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Cartype(vehiclename: "Car", price: "₹500", prefixIcon: Image.asset("assets/icons/ltruck.png")),
                  SizedBox(
                    height: 12.h,
                  ),
                  Cartype(vehiclename: "Mini Truck", price: "₹700", prefixIcon: Image.asset("assets/icons/mtruck.png")),
                  SizedBox(
                    height: 395.h,
                  ),
                  Container(
                      width: 353.sp,
                      height: 55.sp,
                      decoration: BoxDecoration(
                        color: Color(0xFFF19305),
                        border: Border.all(
                            color: Color.fromARGB(255, 214, 205, 205)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Bookingdetails()));
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(
                            fontSize :16.sp,
                            
                            fontFamily:'poppins',
                            fontWeight:FontWeight.w600,
                           color : Color(0xFFFFFFFF),
                           )
                          ))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}