import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({Key? key}) : super(key: key);

  @override
  State<OrderTrackingPage> createState() => OrderTrackingPageState();
}

class OrderTrackingPageState extends State<OrderTrackingPage> {
  final Completer<GoogleMapController> _mapcontroller =
      Completer<GoogleMapController>();
  final String google_api_key = "com.google.android.geo.API_KEY";
  Location _locationcontroller = new Location();
  static const LatLng sourceLocation =
      LatLng(25.60328457587036, 85.21954238312597);
  static const LatLng destination =
      LatLng(25.62019921529748, 85.14533399216478);
  LatLng? _currentP = null;
  Map<PolylineId, Polyline> polylines = {};
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;
  //polyline coordinates between source and destination
  List<LatLng> polylineCoordinates = [
    LatLng(25.60328457587036, 85.21954238312597),
    LatLng(25.598646181369908, 85.20250527177583),
    LatLng(25.603646831433306, 85.18567894199064),
    LatLng(25.62019921529748, 85.14533399216478)
  ];
  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), "assets/scooter_PNG11341.png")
        .then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  // void getPolyPoints() async {
  //   PolylinePoints polylinePoints = PolylinePoints();
  //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
  //     google_api_key,
  //     PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
  //     PointLatLng(_currentP!.latitude,_currentP!.longitude),
  //   );
  //   if (result.points.isNotEmpty) {
  //     result.points.forEach(
  //       (PointLatLng point) => polylineCoordinates.add(
  //         LatLng(point.latitude, point.longitude),
  //       ),
  //     );
      
  //   }setState(() {});
  // }

  bool Showbottombar = false;
  @override
  void initState() {
    super.initState();
    geoLocationUpdates().then((_) =>{
    getPolyPoints().then((cordinates) => {
      print(cordinates),
    }),
    } 
    
    );
   // geoLocationUpdates();
    // geoLocationUpdates().then((_) => {
    //       getPolyPoints().then((coordinates) => {
    //             generatePolyLinePoints(coordinates),
    //          //   print(Coordinates),
    //           }),q
    //     });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          title: const Text(
            "Track order",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        body: GestureDetector(
          //on swipping it goes down

          onTapDown: (details) {
            this.setState(() {
              Showbottombar = false;
            });
          },
          //on tap it comes up
          onTapUp: (details) {
            this.setState(() {
              Showbottombar = true;
            });
          },
          child: Container(
            child: Stack(
              children: <Widget>[
                _currentP == null
                    ? const Center(
                        child: Text(" loading...."),
                      )
                    : GoogleMap(
                        onMapCreated: ((GoogleMapController controller) =>
                            _mapcontroller.complete(controller)),
                        initialCameraPosition:
                            CameraPosition(target: sourceLocation, zoom: 15),
                    //    polylines: {
            //   Polyline(
            //     polylineId: PolylineId("route"),
            //     points: polylineCoordinates,
            //     color: Colors.purple,
            //     width: 6,
            //   ),
            // },
                        

                        markers: {
                          Marker(
                              markerId: MarkerId("source"),
                              position: sourceLocation,
                              infoWindow: InfoWindow(
                                  title: "patna", snippet: " NIT Ghat"),
                              icon: BitmapDescriptor.defaultMarker),
                          Marker(
                              markerId: MarkerId("source"),
                              position: _currentP!,
                              infoWindow: InfoWindow(
                                title: "Your Location",
                              ),
                              icon: BitmapDescriptor.defaultMarker),
                          Marker(
                              markerId: MarkerId("destination"),
                              infoWindow: InfoWindow(
                                  title: "patna", snippet: "Gandhi Maidan"),
                              position: destination,
                              icon: markerIcon),
                        },
                         polylines: Set<Polyline>.of(polylines.values),
                      ),
                Padding(
                  padding: const EdgeInsets.only(left: 38.0, top: 20),
                  child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      child: Center(child: Text("Delivery is 1.7 km away"))),
                ),
                Positioned(
                  left: 0,
                  bottom: Showbottombar ? -23 : -(height / 3 + 20),
                  // -(MediaQuery.of(context).size.height/3),
                  child: deliveryperson(),
                ),
              ],
            ),
          ),
        ));
  }

  Future<void> _cameraPosition(LatLng position) async {
    final GoogleMapController controller = await _mapcontroller.future;
    CameraPosition _newCameraPosition =
        CameraPosition(target: position, zoom: 13);
    await controller
        .animateCamera(CameraUpdate.newCameraPosition(_newCameraPosition));
  }

  Future<void> geoLocationUpdates() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _permissionGranted = await _locationcontroller.hasPermission();

    _serviceEnabled = await _locationcontroller.serviceEnabled();
    if (_serviceEnabled) {
      _serviceEnabled = await _locationcontroller.requestService();
    } else {
      _permissionGranted = await _locationcontroller.requestPermission();
    }
   // _permissionGranted = await _locationcontroller.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _locationcontroller.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _locationcontroller.onLocationChanged
        .listen((LocationData currentLocation) {
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        setState(() {
          _currentP =
              LatLng(currentLocation.latitude!, currentLocation.longitude!);
          _cameraPosition(_currentP!);
          //print(_currentP);
        });
      }
    });
  }

  Future<List<LatLng>> getPolyPoints() async {
    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        google_api_key,
        PointLatLng(destination.latitude,destination.longitude),
        PointLatLng(sourceLocation.latitude, sourceLocation.longitude),travelMode: TravelMode.driving);
    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) { polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        );
        }
      );
   //  setState(() {}); 
    } else {
      print(result.errorMessage);
    }
    return polylineCoordinates;
  }

  Future generatePolyLinePoints(List<LatLng> polylineCoordinates) async {
    PolylineId id = PolylineId("poly");
    Polyline polyline =
        Polyline(polylineId: id, color: Colors.black,points: polylineCoordinates, width: 8);
    setState(() {
      polylines[id] = polyline;
    });
  }
 }

class deliveryperson extends StatelessWidget {
  // const deliveryperson({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        color: Colors.white,
        width: width,
        height: (height / 3) + 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      "PIN",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "2025",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "Arriving In",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "5 Mins",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/icons/user_a.png"),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Column(
                      children: [
                        Text(
                          "Ashok Kumar",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "3.9",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Send Message to Driver',
                            prefixIcon: Icon(Icons.message_outlined),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                          //this button nevigates to package delivered page
                          onPressed: () {},
                          icon: Icon(
                            Icons.call,
                            color: Colors.amber,
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
