import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConformationPage extends StatefulWidget {
  const ConformationPage({super.key});

  @override
  State<ConformationPage> createState() => _ConformationPageState();
}

class _ConformationPageState extends State<ConformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 150, left: 15, right: 20),
          child: Column(
            children: [
              Center(
                  child: Image.asset("assets/icons/tick.png",height: 94.sp,width: 94.sp,),),
              SizedBox(
                height: 20,
              ),
              Text(
                "Booking Successful",
                style: TextStyle(
                    fontSize: 24.sp,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your booking has been confirmed for ",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF000000),
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400
                ),
              ),
              Text(
                "20.10.2023 ",
                style: TextStyle(
                  fontSize: 16.sp,
                  color:Color(0xFF000000),
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                 
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      Row(
                        
                        children: [
                            Icon(Icons.circle,color: Colors.green,size: 15,),
                          Text(
                            "   Vijay Complex Bhavanipur colony",
                            style: TextStyle(
                              fontSize: 14,
                              color:Color(0xFF000000),
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                    Icon(Icons.straight),
                      Row(
                        children: [
                            Icon(Icons.circle,color: Colors.red,size: 15,),
                          Text(
                            "   Paradise Recidency Bhavanipur colony",
                            style: TextStyle(
                              fontSize: 14,
                              color:Color(0xFF000000),
                              fontStyle: FontStyle.normal,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Thankyou for choosing us",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
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
                            "Done",
                            style: TextStyle(color: Color(0xFFFEFEFE)),
                          ))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
