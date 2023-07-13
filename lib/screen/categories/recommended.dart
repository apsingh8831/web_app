import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/customPoppinsText.dart';
import '../../Constant/resposive.dart';
import '../../constant/colors.dart';
import '../notification.dart';
import 'detailed_page.dart';

class Recommended extends StatefulWidget {
  const Recommended({super.key});

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.orange,
            statusBarIconBrightness: Brightness.light),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          "asset/images/oonzoo.png",
          height: ResponsiveRatio().height(context, 0.04),
          // color: orangeColor,
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: Colors.black),
              Container(
                  width: ResponsiveRatio().width(context, 0.18),
                  child: CustomPoppinsText(
                    text: "Hindon Residence",
                    fontSize: 15,
                    maxLine: 1,
                    textOverflow: TextOverflow.ellipsis,
                    color: textColor,
                  )),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 1),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: "Find Car, Mobile Phone and more abhay",
                            isDense: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Notifications()));
                    },
                    child: Icon(
                      Icons.notifications_outlined,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              color: Color(0xFF686BFD),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomPoppinsText(text: "Recommended Car",color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500,)
                  ),
                  SizedBox(
                    height:  Responsive.isSmallTab(context)?ResponsiveRatio().height(context, 0.3):Responsive.isLargeTab(context)?ResponsiveRatio().height(context, 0.34):Responsive.isMobile(context)?ResponsiveRatio().height(context, 0.32):ResponsiveRatio().height(context, 0.34),
                    child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailedPage()));
                                    },
                                    child: Container(
                                      height: ResponsiveRatio().height(context, 0.3),
                                      width: ResponsiveRatio().width(context, 0.21),
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
                                            height: ResponsiveRatio().height(context, 0.12),

                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage("asset/images/c1.jpeg"),fit: BoxFit.cover
                                                ),
                                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                                            ),

                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(left: 8.0,top: 1),
                                              child:CustomPoppinsText(text: "₹ 5,10,000",fontSize: 17,fontWeight: FontWeight.w500,)
                                            // Text("₹ 5,10,000",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                                          ),
                                          SizedBox(height: 1,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                                            child: Container(
                                                child: CustomPoppinsText(text: "2019 Maruti Suzuki Eeco",maxLine: 1,textOverflow: TextOverflow.ellipsis,fontSize: 12,)
                                              // Text("2019 Maruti Suzuki Eeco",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 12),)
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                                            child: Container(
                                                child: CustomPoppinsText(text: "2019 -33,000 KM",maxLine: 1,textOverflow: TextOverflow.ellipsis,fontSize: 10,color: textColor,)
                                              // Text("2019 -33,000 KM",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 10),)
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 5.0),
                                            child: Row(

                                              children: [
                                                Icon(Icons.location_on_outlined,size: 20,color: Colors.black.withOpacity(0.6),),
                                                Container(
                                                    width: ResponsiveRatio().width(context, 0.1),
                                                    child:CustomPoppinsText(text: "Dilshad Garden",maxLine: 1,textOverflow: TextOverflow.ellipsis,fontSize: 9,color: textColor,)
                                                ),
                                                Spacer(),
                                                Row(
                                                  children: [
                                                    Container(
                                                        width: ResponsiveRatio().width(context, 0.06),
                                                        child: CustomPoppinsText(text: "TODAY",maxLine: 1,textOverflow: TextOverflow.ellipsis,fontSize: 9,color: textColor,)
                                                      // Text("TODAY",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10,color: Colors.black.withOpacity(0.6)),)
                                                    ),
                                                  ],
                                                )
                                              ],
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
                                      radius: 15,
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.favorite_border,color: Colors.black.withOpacity(0.6),size: 20,)),
                                )
                              ]
                          );
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:CustomPoppinsText(text: "Based on your last search",fontSize: 17,fontWeight: FontWeight.w500,)
                  ),
                  SizedBox(
                    height:  Responsive.isSmallTab(context)?ResponsiveRatio().height(context, 0.3):Responsive.isLargeTab(context)?ResponsiveRatio().height(context, 0.34):Responsive.isMobile(context)?ResponsiveRatio().height(context, 0.32):ResponsiveRatio().height(context, 0.3),
                    child: ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailedPage()));
                                    },
                                    child: Container(
                                      width: ResponsiveRatio().width(context, 0.21),
                                      height: ResponsiveRatio().height(context, 0.3),
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
                                            height:  ResponsiveRatio().height(context, 0.12),
                                            decoration:  BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage("asset/images/c2.jpeg"),fit: BoxFit.cover
                                                ),
                                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0,top: 1),
                                            child: CustomPoppinsText(text: "₹ 1,10,000",fontSize: 17,fontWeight: FontWeight.w500,),

                                          ),
                                          SizedBox(height: 1,),

                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                                            child: Container(

                                                child: CustomPoppinsText(text: "Tata Indica Ev2",maxLine: 1,textOverflow: TextOverflow.ellipsis,fontSize: 12,)
                                              // Text("Tata Indica Ev2",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 12),)
                                            ),
                                          ),
                                          SizedBox(height: 2,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                                            child: Container(

                                                child: CustomPoppinsText(text: "2014 -64,000 KM",maxLine: 1,textOverflow: TextOverflow.ellipsis,fontSize: 10,color: textColor,)
                                              // Text("2014 -64,000 KM",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 10),)
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 5),
                                            child: Row(

                                              children: [
                                                Icon(Icons.location_on_outlined,size: 20,color: Colors.black.withOpacity(0.6),),
                                                Container(
                                                    width:ResponsiveRatio().width(context, 0.1),
                                                    child: CustomPoppinsText(text: "Dilshad Colony",maxLine: 1,textOverflow: TextOverflow.ellipsis,fontSize: 9,color: textColor,)),
                                                Spacer(),
                                                Row(
                                                  children: [
                                                    Container(
                                                        width:  ResponsiveRatio().width(context, 0.06),
                                                        child: CustomPoppinsText(text: "TODAY",maxLine: 1,textOverflow: TextOverflow.ellipsis,fontSize: 9,color: textColor,)
                                                      // Text("TODAY",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10,color: Colors.black.withOpacity(0.6)),)
                                                    ),
                                                  ],
                                                )
                                              ],
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
                                      radius: 15,
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.favorite_border,color: Colors.black.withOpacity(0.6),size: 20,)),
                                )
                              ]
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
