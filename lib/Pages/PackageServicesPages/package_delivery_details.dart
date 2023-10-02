import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageDeliveryDetails extends StatefulWidget {
  const PackageDeliveryDetails({super.key});

  @override
  State<PackageDeliveryDetails> createState() => _PackageDeliveryDetailsState();
}

class _PackageDeliveryDetailsState extends State<PackageDeliveryDetails> {
  String? pAddress;
  String? dAddress;
  String? pdate;
  String? items;
  bool isCheckedP = true;
  bool isCheckedD = true;
  bool isCheckedH = true;
  DateTime selectedDate = DateTime.now();
  int count = 1; // Initial count
  int basePrice = 100;
  Color householdColor = Color(0xFFFEFEFE);
  Color electronicsColor = Color(0xFFFEFEFE);
  Color commercialGoodsColor = Color(0xFFFEFEFE);
  Color othersColor = Color(0xFFFEFEFE);
  void changeContainerColor(String containerName) {
    setState(() {
      householdColor = containerName == 'Household' ? Color(0xFFFFF7DC) : Color(0xFFFEFEFE);
      electronicsColor = containerName == 'Electronics' ? Color(0xFFFFF7DC) : Color(0xFFFEFEFE);
      commercialGoodsColor = containerName == 'Commercial Goods' ? Color(0xFFFFF7DC) : Color(0xFFFEFEFE);
      othersColor = containerName == 'Others' ? Color(0xFFFFF7DC) : Color(0xFFFEFEFE);
    });
  }
  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  int calculateTotalPrice() {
    // Calculate the total price based on the count and base price
    return count * basePrice;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(), // Set firstDate to the current date
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        pdate = "${selectedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 22.h),
              Text(
                "Enter Booking Details",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    color: Color(0xFF222222)),
              ),
              SizedBox(
                height: 22.h,
              ),
              buildTextField(
                "Pickup Address",
                "Enter Pickup Address",
                (text) {
                  pAddress = text;
                },
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Color(0xFFF19305),
                    value: isCheckedP,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isCheckedP = newValue!;
                      });
                    },
                  ),
                  Text(
                    'Has Service Lift',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000)),
                  ),
                ],
              ),
              buildTextField(
                "Drop Address",
                "Enter Drop Address",
                (text) {
                  dAddress = text;
                },
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Color(0xFFF19305),
                    value: isCheckedD,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isCheckedD = newValue!;
                      });
                    },
                  ),
                  Text(
                    'Has Service Lift',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000)),
                  ),
                ],
              ),
              Text(
                "Pickup Date",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF475467),
                ),
              ),
              buildDateInputField(),
              SizedBox(height: 22.h),
              Text(
                'Items to be shifted',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF222222)),
              ),
              SizedBox(height: 22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      changeContainerColor('Household');
                    },
                    child: Container(
                      width: 189.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: householdColor,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(width: 1.w, color: Color(0xFFD0D5DD)),
                      ),
                      child: Center(
                        child: Text(
                          "Household Items",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF98A2B3)),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      changeContainerColor('Electronics');
                    },
                    child: Container(
                      width: 152.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: electronicsColor,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(width: 1.w, color: Color(0xFFD0D5DD)),
                      ),
                      child: Center(
                        child: Text(
                          "Electronics",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF98A2B3)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      changeContainerColor('Commercial Goods');
                    },
                    child: Container(
                      width: 189.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: commercialGoodsColor,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(width: 1.w, color: Color(0xFFD0D5DD)),
                      ),
                      child: Center(
                        child: Text(
                          "Commercial Goods",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF98A2B3)),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      changeContainerColor('Others');
                    },
                    child: Container(
                      width: 152.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: othersColor,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(width: 1.w, color: Color(0xFFD0D5DD)),
                      ),
                      child: Center(
                        child: Text(
                          "Others",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF98A2B3)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 24.h),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Color(0xFFF19305),
                            value: isCheckedH,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isCheckedH = newValue!;
                              });
                            },
                          ),
                          Text(
                            'Helper',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '₹${calculateTotalPrice()}',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              decrement();
                            },
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text(
                              count.toString(),
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              increment();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 12, 0, 16),
                child: Divider(
                  color: Colors.amber,
                  height: 1.h,
                ),
              ),
              Row(
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Divider(
                  color: Colors.amber,
                  height: 1.h,
                ),
              ),
              Row(
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
              SizedBox(height: 55.h),
              SizedBox(
                width: 353.w,
                height: 55.h,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/package_order_summary');
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
              SizedBox(
                height: 21.h,
              )
            ],
          ),
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
        "Package Delivery",
        style: TextStyle(
            fontSize: 20.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            color: Colors.black),
      ),
    );
  }

  Widget buildTextField(String label, String hint, Function(String) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Color(0xFF475467),
          ),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 55.h,
          child: TextField(
            cursorColor: Colors.black,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xFFD0D5DD)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black, // Change border color here
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDateInputField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          readOnly: true,
          controller: TextEditingController(
            text: pdate,
          ),
          onTap: () {
            _selectDate(context);
          },
          decoration: InputDecoration(
            hintText: "Select Pickup Date",
            suffixIcon: GestureDetector(
              onTap: () {
                _selectDate(context);
              },
              child: Icon(Icons.calendar_today),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFFD0D5DD)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black, // Change border color here
              ),
            ),
          ),
        ),
      ],
    );
  }
}
