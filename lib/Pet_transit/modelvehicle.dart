import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Cartype extends StatefulWidget {
  final String vehiclename;
  final String price;
  final Widget prefixIcon;
 // final Function onFieldTap;
  const Cartype({
    required  this.vehiclename,
    required  this.price,
    required  this.prefixIcon,
  //  required this.onFieldTap,
  });

  @override
  State<Cartype> createState() => _CartypeState();
}

class _CartypeState extends State<Cartype> {



  bool color1 = false;
 
  @override
  Widget build(BuildContext context) {
  
    
    return GestureDetector(
        onTapDown: (_) {
        setState(() {
          color1 = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          color1 = false;
        });
      },
   
         
      child: Container(
       
       
        child: Padding(
          padding: EdgeInsets.only(top:12.sp,bottom: 12.sp,left: 20.sp),
          child: Row(
             children: [
              
              Container(child: widget.prefixIcon,),
              SizedBox(width: 23.w,),
              Container(
                width: 109.w,
                height: 50.h,
                child: Column(
                  children: [
                    Text(widget.vehiclename,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,fontFamily:'Poppins')),
                    Text("__kg, 20x 8x6 ft",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,fontFamily:'Poppins'),)
                  ],
                ),
              ),
               SizedBox(width: 23.w,),
               Container(
                height: 22.sp,
                width: 41.sp,
                child: Text(widget.price,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,fontFamily:'Poppins'),)
               ),
             ],
          ),
        ),
         decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(12),
       
          color:color1? Color(0xFFFFF7DC):Colors.white),
          width: 353.w,
          height: 74.h,
          padding: EdgeInsets.only(right:20,left:20),
      ),
    );
  }
}
