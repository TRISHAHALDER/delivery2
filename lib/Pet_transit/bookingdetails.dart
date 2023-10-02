// import 'package:date_field/date_field.dart';
import 'package:delivery_app/Pet_transit/bookingconform.dart';
import 'package:delivery_app/Pet_transit/selectavehicle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

enum dates { yesterday, today, tommorow, custom }

dates _item = dates.today;
bool color=false;
class Bookingdetails extends StatefulWidget {
  const Bookingdetails({super.key});

  @override
  State<Bookingdetails> createState() => _BookingdetailsState();
}

class _BookingdetailsState extends State<Bookingdetails> {
  String dropdownValue = "Cat";
  String dateFilter = "Today";
  final DateFormat format = DateFormat.MMMEd();
  // DateTime selectedDateTime = DateTime.now();
  final bool expands = false;
  bool isLoading = false;
  void setDate(dates date) {
    setState(() {
      dateFilter = format.format(now);
    });
  }


  DateTime now = DateTime.now();
  // List of items in our dropdown menu
  // var items = [
  //   'Cat',
  //   'Dog',
  //   'Bird',
  //   'Rabbit',

  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SelectVehicle()));
              },
              icon: Icon(
                Icons.navigate_before,
                size: 22.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "Pet Transit Booking",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20.sp,
                  fontFamily: 'Poppins',
                  color: Color(0xFF000000),
                  letterSpacing: 0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SingleChildScrollView(
            child: Scrollbar(
              scrollbarOrientation: ScrollbarOrientation.bottom,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter Booking Details",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16.sp,
                        color: Color(0xFF222222),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 22.sp,
                  ),
                  Text(
                    "Pickup Address",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 55.sp,
                    width: 353.sp,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 249, 249),
                      border:
                          Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                "Vijay Complex, Bhavanipur Colony, Sha... ",
                            hintStyle: TextStyle(
                              color: Color(0xFF98A2B3),
                              fontSize: 16.sp,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Drop Address",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16.sp,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 55.sp,
                    width: 353.sp,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 249, 249),
                      border:
                          Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Drop Address",
                          hintStyle: TextStyle(
                            color: Color(0xFF98A2B3),
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Pickup Date",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 55.sp,
                    width: 353.sp,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 249, 249),
                      border:
                          Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 10, right: 13),
                      child:
                          //  TextField(
                          //    decoration: InputDecoration(
                          //      border: InputBorder.none,
                          //      hintText: "Select Pickup Date",
                          //     suffixIcon:Icon(Icons.calendar_month),
                          //    ),
                          //  ),
                          //     DateTimeField(
                          //   onDateSelected: (DateTime value) {
                          //     setState(() {
                          //       selectedDateTime = value;
                          //     });
                          //   },
                          //   selectedDate: selectedDateTime,
                          // ),
                          Row(
                        children: [
                          Text(
                        
                            "Select Pickup Date",
                            style: TextStyle(
                              color: Color(0xFF98A2B3),
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(width:100),
                          IconButton(
                            onPressed: () async {
                              DateTime? newDate = await showDatePicker(
                                context: context,
                                fieldLabelText: "Select Pickup Date",
                                initialDate: now,
                                firstDate: DateTime(2004),
                                lastDate: DateTime(2104),
                              );
                              if (newDate == null) return;
                              setState(() {
                                now = newDate;
                              });
                              setDate(dates.custom);
                            },
                            icon: Image.asset("assets/icons/calendar.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Pet Type",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF222222),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 55.sp,
                    width: 353.sp,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 249, 249),
                      border:
                          Border.all(color: Color.fromARGB(255, 214, 205, 205)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: DropdownButton<String>(
                        dropdownColor: Color.fromARGB(255, 247, 247, 248),
                        value: dropdownValue,
                        items: <String>[
                          'Cat',
                          'Dog',
                          'Rabbit',
                          'Birds',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: Color(0xFF98A2B3),
                                  fontSize: 16.sp,
                                  fontFamily: 'Poppins'),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                            color=!color;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Divider(
                    color: Color(0xFFF19305),
                  ),
                  Container(
                    height: 56,
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 40,
                              color: Color(0xFFF19305),
                            ),
                            Icon(
                              Icons.percent_rounded,
                              size: 27,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Text(
                          " Apply Coupon",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xFFF19305),
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Poppins',
                            letterSpacing: 0,
                          ),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.navigate_next),
                          iconSize: 30,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xFFF19305),
                  ),
                  Container(
                    height: 56,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          "assets/icons/indianrupee.png",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          " Cash",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xFFF19305),
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Poppins',
                            letterSpacing: 0,
                          ),
                        ),
                        SizedBox(
                          width: 178,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.navigate_next),
                          iconSize: 30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  Container(
                      width: 353.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFF19305),
                        border: Border.all(color: Color(0xFFF19305)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => ConformationPage()));
                          },
                          child: Text(
                            "Book",
                            style: TextStyle(color: Color(0xFFFEFEFE)),
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
