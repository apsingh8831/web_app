

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../Constant/customPoppinsText.dart';
import '../../Constant/custom_button.dart';
import '../../Constant/resposive.dart';
import '../../constant/colors.dart';

class DetailedPage extends StatefulWidget {
  const DetailedPage({Key? key}) : super(key: key);

  @override
  State<DetailedPage> createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {

  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  LatLng _center =  LatLng(9.669111, 80.014007);


  void _onMapCreated(GoogleMapController controller) {
    var mapController = controller;

    final marker = Marker(
      markerId: MarkerId('place_name'),
      position: LatLng(9.669111, 80.014007),
      // icon: BitmapDescriptor.,
      infoWindow: InfoWindow(
        title: 'title',
        snippet: 'address',
      ),
    );

    setState(() {
      markers[MarkerId('place_name')] = marker;
    });
  }


  int currentIndex=0;
  List _desc=[
    "Accidental:","Aux Compatibility:","Battery Condition:","Blutooth:"
  ];

  List _list=[
    "asset/images/c1.jpeg",
    "asset/images/c1.jpeg",
    "asset/images/c1.jpeg",
    "asset/images/c1.jpeg",
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        extendBodyBehindAppBar:true,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: CustomButton1(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactSeller()));
                },
                text: "Chat",

              )
              // CustomButton(
              //   onPressed: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactSeller()));
              //   },
              //   height: 50,
              //   title: "Chat",
              //   textsize: 18,
              //   icon: Icon(Icons.chat_bubble_outline),
              //   tetcolor: Colors.white,
              //   bgcolor: kPrimaryColor,
              //
              // ),
            ),
            SizedBox(width: 15,),
            Expanded(
              child: CustomButton1(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactSeller()));
                },
                text: "Call",

              )
            ),
          ],
        ),
      ),

      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange,statusBarIconBrightness: Brightness.light),

        elevation: 1,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                Icon(Icons.share,),
                SizedBox(width: 30,),
                Icon(Icons.favorite_border,),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: ResponsiveRatio().height(context, 0.43),
                color: Colors.black.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8, top: 25),
                  child: SizedBox(
                    height: ResponsiveRatio().height(context, 0.23),
                    width: ResponsiveRatio().width(context, 1),
                    child: CarouselSlider(
                      items: _list
                          .map(
                            (item) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: ClipRRect(
                            child: Image.asset(
                              item,
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ).toList(),
                      options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),

                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            // setState((){
                            //   currentIndex=index;
                            // });
                          }),
                    ),
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,top: 12),
              child:CustomPoppinsText(text:"Honda Amaze" ,fontSize: 15,fontWeight: FontWeight.w500,)
              // Text("Honda Amaze",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,),
              child: CustomPoppinsText(text:"5 Star With A/C+HTR" ,fontSize: 10,fontWeight: FontWeight.w400,color: textColor,)
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 12,),
              child:CustomPoppinsText(text:"₹ 5,10,000" ,fontSize: 17,fontWeight: FontWeight.w500,)
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                color: Colors.grey.withOpacity(0.1),
                child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.pages,size: 16,),
                              SizedBox(width: 5,),
                              Text("CNG & Hybrids",style: TextStyle(fontSize: 13),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.speed,size: 16,),
                              SizedBox(width: 5,),
                              Text("30000.0km",style: TextStyle(fontSize: 13),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.share_arrival_time_outlined,size: 16,),
                              SizedBox(width: 5,),
                              Text("Manual",style: TextStyle(fontSize: 13),)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Icon(Icons.person_search_outlined,size: 18,),
                               SizedBox(width: 5,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Manual",style: TextStyle(fontSize: 13),),
                                   Text("1st",style: TextStyle(fontWeight: FontWeight.w600),)
                                 ],
                               ),
                             ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on_outlined,size: 18,),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dilshad Garden",style: TextStyle(fontSize: 13),),
                                  Text("Dehli",style: TextStyle(fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.date_range,size: 18,),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Posting date",style: TextStyle(fontSize: 13),),
                                  Text("23-Jun-23",style: TextStyle(fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:CustomPoppinsText(text:"Description" ,fontSize: 17,fontWeight: FontWeight.w500,)
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                color:Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomPoppinsText(text: "Well maintained car .All document complete . Great pick up . Good Engine . All original paint . Have a look ful insured. Family used car",fontSize: 12,),
                    SizedBox(height: 15,),
                      CustomPoppinsText(text: "ADDITIONAL VEHICLE INFORMATION:",fontSize: 13,),
                      

                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _desc.length,
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                      return CustomPoppinsText(text: _desc[index],fontSize: 13,);
                    })

                    ],
                  ),
                ),
              ),
            ),
            Divider(
              indent: 15,
              endIndent: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("asset/images/p1.png",height: 50,),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomPoppinsText(text: "Posted by",color: textColor,fontSize: 13,),
                              CustomPoppinsText(text: "Rohan Aggarwal",fontSize: 14,),
                              CustomPoppinsText(text: "Posted On: 24/06/23",color: textColor,fontSize: 13,),

                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60,top: 15),
                        child: CustomPoppinsText(text: "See Profile",fontWeight: FontWeight.w500,),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Divider(
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 8,),
                  Container(
                    width: ResponsiveRatio().width(context, 0.2),
                      child:CustomPoppinsText(text: "Dilshad Garden , Dehli",maxLine: 2,textOverflow: TextOverflow.ellipsis,fontSize: 15,)
                  ),
                 Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: GoogleMap(
                       zoomControlsEnabled: false,
                        onMapCreated: _onMapCreated,
                        zoomGesturesEnabled: true,
                        initialCameraPosition: CameraPosition(

                          target: _center,
                          zoom: 15
                        ),
                        markers: markers.values.toSet(),
                      ),
                      width: ResponsiveRatio().width(context, 0.16),
                      height: ResponsiveRatio().height(context, 0.15),

                    ),
                  )
                  
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPoppinsText(text: "AD ID: 13836286",fontSize: 16,fontWeight: FontWeight.w500,),
                  TextButton(onPressed: (){}, child: Text("REPORT AD",style: TextStyle(fontSize: 15,color: orangeColor),)),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomPoppinsText(text: "Related Ads",fontSize: 15,fontWeight: FontWeight.w600,)
            ),
            SizedBox(
              height: ResponsiveRatio().height(context, 0.25),
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DetailedPage()));
                              },
                              child: Container(
                                width: ResponsiveRatio().width(context, 0.16),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade50,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.grey.shade400,width: 2
                                    )
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: ResponsiveRatio().height(context, 0.13),

                                      decoration:  BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("asset/images/c2.jpeg"),fit: BoxFit.cover
                                          ),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,top: 8),
                                      child:CustomPoppinsText(text: "₹ 1.10.000",fontSize: 14,fontWeight: FontWeight.w600,),
                                    ),
                                    SizedBox(height: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                                      child: Container(
                                          child:CustomPoppinsText(text: "Tata Indica Ev2",maxLine: 1,textOverflow: TextOverflow.ellipsis,fontSize: 12,),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            top: 15,
                            child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.favorite_border,color: Colors.black.withOpacity(0.6),size: 16,)),
                          )
                        ]
                    );
                  }),
            ),
            SizedBox(height: ResponsiveRatio().height(context, 0.1),),
          ],
        ),
      ),
    );
  }
}
