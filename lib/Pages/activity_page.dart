import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  List<String> options = [
    'Ride',
    'Ride Pool',
    'Delivery',
    'Package',
    'Pet Transit'
  ];
  String? selectedOption = 'Ride';
  List<String> apiListData = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    // Add more items as needed
  ];
  void updateSelectedOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

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
              'Activity',
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

  Widget buildOptionsList() {
    return Container(
      width: 353.w,
      height: 42.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border:
            Border.all(color: Colors.orange), // White border with orange color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: options.map((option) {
          final isSelected = option == selectedOption;
          return InkWell(
            onTap: () {
              updateSelectedOption(option);
            },
            child: Container(
              height: 38.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: isSelected ? Colors.orange : Colors.transparent,
              ),
              padding: EdgeInsets.all(6),
              child: Center(
                child: Text(
                  option,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: isSelected ? Colors.white : Color(0xFF667085),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget buildSelectedOptionContent() {
    // Create a ListView.builder to display a list of items
    return ListView.builder(
      itemCount: apiListData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              width: 353.w,
              height: 166.h,
              decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(10.r)),
              padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(32, 8, 0, 8),
                            child: Text(
                              'Prime Sedan',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF667085),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Image.asset('assets/icons/dot.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              '20/06/2023',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF667085),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Image.asset('assets/icons/dot.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              '07:59 PM',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF667085),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "₹ 182",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(32, 8, 0, 8),
                    child: Divider(
                      color: Color(0xFFB3B3B3),
                      height: 1.h,
                    ),
                  ),
                  Row(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Completed',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF4CAF50),
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/complete_details');
                          },
                          child: Image.asset("assets/icons/16arrow.png")),
                      )
                    ],
                  )
                ],
              )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            buildProfileHeader(),
            buildOptionsList(), // Add the options list below the header
            SizedBox(height: 20),
            Expanded(
              child: buildSelectedOptionContent(),
            ),
          ],
        ),
      ),
    );
  }
}
