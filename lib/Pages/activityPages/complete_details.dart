
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CompleteDetails extends StatelessWidget {
  const CompleteDetails({super.key});

  Widget rowDetails(
      String serviceName, String serviceDetails, Color serviceDetailsColor) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$serviceName',
            style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              '$serviceDetails',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: serviceDetailsColor),
            ),
          )
        ],
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
            color: Colors.black, // Change the color of the back button here
          ),
          onPressed: () {
            // Define the behavior when the back button is pressed
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Ride Details",
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
            Row(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 12.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF4CAF50),
                          ),
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        Container(
                          width: 12.w,
                          height: 12.h,
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
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(
                color: Color(0xFFB3B3B3),
                height: 1.h,
              ),
            ),
            Container(
              width: 353.w,
              height: 76.h,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Center(
                    child: Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFA1A1AA),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ashok Kumar',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Text(
                            "You rated 4",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Image.asset('assets/icons/star.png')
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/icons/tata.png'),
                      Text(
                        'Tata Vista',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Container(
                        width: 104.w,
                        height: 28.h,
                        decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(8.r)),
                        padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                        child: Text(
                          'DL 01 EK 4221',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(
                color: Color(0xFFB5B5B5),
                height: 1.h,
              ),
            ),
            rowDetails(
              'Service Type',
              'Mini',
              Colors.black,
            ),
            rowDetails(
              'Date of Ride',
              'Aug 05th 2023, 11:50 AM ',
              Colors.black,
            ),
            rowDetails(
              'Ride ID',
              'RD 12787696976096579',
              Colors.black,
            ),
            rowDetails(
              'Status',
              'Completed',
              Color(0xFF581C87),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 4, 0, 16),
              child: Divider(
                color: Color(0xFFB5B5B5),
                height: 1.h,
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Payment Details',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )),
            SizedBox(
              height: 12.h,
            ),
            rowDetails(
              'Payment mode',
              'Cash',
              Colors.black,
            ),
            rowDetails(
              'Ride fare',
              '₹340',
              Colors.black,
            ),
            rowDetails(
              'Convenience  charges',
              '₹17',
              Colors.black,
            ),
            Divider(
              color: Color(0xFFB5B5B5),
              height: 1.h,
            ),
            SizedBox(
              height: 8.h,
            ),
            rowDetails(
              'Total Charges',
              '₹357',
              Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 171.5.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                      border:Border.all(
                        width: 1.w,
                        color: Color(0xFFF19305)
                      ) ,
                      color: Colors.white,
                      
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text('Help',style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFF19305)
                      ),),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 171.5.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                      border:Border.all(
                        width: 1.w,
                        color: Color(0xFFF19305)
                      ) ,
                      color: Color(0xFFF19305),
                      
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text('Download',style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
