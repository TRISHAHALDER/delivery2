import 'package:delivery_app/Pages/PackageServicesPages/package_booking_sucess.dart';
import 'package:delivery_app/Pages/PackageServicesPages/package_delivery_details.dart';
import 'package:delivery_app/Pages/PackageServicesPages/package_order_summary.dart';
import 'package:delivery_app/Pages/PackageServicesPages/package_service_selectItems.dart';
import 'package:delivery_app/Pages/activityPages/complete_details.dart';
import 'package:delivery_app/Pet_transit/selectavehicle.dart';
import 'package:delivery_app/google_map/packagedelivery.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: Size(393, 852),
      builder: (context, child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OrderTrackingPage(),
          initialRoute: '/',
          routes: {
            '/complete_details':(context)=> const CompleteDetails(),
            '/package_services_select_vehicle':(context) => const PackageServiceSelectVehicles(),
            '/package_delivery_details':(context) => const PackageDeliveryDetails(),
            '/package_order_summary':(context) => const PackageOrderSummary(),
            '/package_booking_sucess':(context) => const PackageBookingSuccess()
          },
        );
      },
      
    );
  }
}
