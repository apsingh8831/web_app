
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';


import '../../Constant/colors.dart';
import '../../Constant/customPoppinsText.dart';
import '../../Constant/custom_button.dart';
import '../../Constant/resposive.dart';
import 'categories1.dart';


class BuyPackage extends StatefulWidget {
  const BuyPackage({Key? key}) : super(key: key);

  @override
  State<BuyPackage> createState() => _BuyPackageState();
}

class _BuyPackageState extends State<BuyPackage> {
  String Adress = "Search";

  @override
  Widget build(BuildContext context) {
    Future<Position> _determinePosition() async {
      bool serviceEnabled;
      LocationPermission permission;

      // Test if location services are enabled.
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        await Geolocator.openLocationSettings();
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }
      return await Geolocator.getCurrentPosition();
    }

    Future<void> _getAdressFormCoordinates(Position position) async {
      List<Placemark> placemark =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place = placemark[0];

      Adress = "${place.subLocality},${place.locality},${place.country}";
    }

    showBottomScreen(context) {
      showModalBottomSheet(
          isScrollControlled: true,
          enableDrag: true,
          context: context,
          builder: (context) {
            return Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                AppBar(
                  leading: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close)),
                  title: Text(
                    "Location",
                    style: TextStyle(fontSize: 20),
                  ),
                  shape: Border(
                      bottom: BorderSide(color: Colors.grey.withOpacity(0.4))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.4))),
                    child: SizedBox(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.search),
                              hintText: "Search city, area or neighbourhood",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  horizontalTitleGap: 10,
                  leading: Icon(
                    Icons.my_location,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "Use current location",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "${Adress}",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  width: ResponsiveRatio().width(context, 1),
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Choose city",
                      style: TextStyle(color: Colors.blueGrey.shade500),
                    ),
                  ),
                ),
              ],
            );
          });
    }

    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15),
        child: CustomButton1(
          text: "Show Packages",
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.orange,
            statusBarIconBrightness: Brightness.light),

        title: CustomPoppinsText(
          text: "Buy Package",
          fontSize: 18,
        ),
        // Text(
        //   "Buy Package",
        //   style: TextStyle(fontSize: 20),
        // ),
        shape: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomPoppinsText(
              text: "SELECT OPTIONS TO SHOW PACKAGES",
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            // Text(
            //   "SELECT OPTIONS TO SHOW PACKAGES",
            //   style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            // ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Categories1()));
            },
            dense: true,
            title: CustomPoppinsText(
              text: "Categories",
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            // Text(
            //   "Categories",
            //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            // ),
            subtitle: CustomPoppinsText(
              text: "Cars",
              fontSize: 13,
              color: textColor,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
              color: Colors.black,
            ),
          ),
          Divider(),
          ListTile(
            onTap: () async {
              Position position = await _determinePosition();
              print(position.latitude);

              setState(() {
                _getAdressFormCoordinates(position);
              });

              showBottomScreen(context);
            },
            dense: true,
            title: CustomPoppinsText(
              text: "Location",
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            subtitle: CustomPoppinsText(
              text: "${Adress}",
              fontSize: 13,
              color: textColor,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
              color: Colors.black,
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              color: Colors.grey.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info_outline,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: ResponsiveRatio().width(context, 0.35),
                      child: CustomPoppinsText(
                        text:
                            "The Package you select will only be valid for this category and location",
                        fontSize: 12,
                        color: textColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
