
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webapp_clone/constant/const_data.dart';
import '../../../Constant/customPoppinsText.dart';
import '../../../Constant/resposive.dart';
import '../../../constant/colors.dart';
import '../detailed_page.dart';

class Categories_view extends StatelessWidget {

  List<Map<String, dynamic>> categorieslist;

  Categories_view({Key? key, required this.categorieslist,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange,statusBarIconBrightness: Brightness.light),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 2,
        title:  Image.asset(
          "asset/images/oonzoo.png",
          height: ResponsiveRatio().height(context, 0.04),
          // color: orangeColor,
        ),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                    child:
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 1),
                      child: Container(
                        height: ResponsiveRatio().height(context, 0.06),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 22),
                          decoration: InputDecoration(
                              hintText: "For Sale: Houses & Apartments",
                              contentPadding: EdgeInsets.only(bottom: 0.5),
                            icon: GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                                child: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none
                            )
                          ),
                        ),
                      )
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8.0),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: Constdata.categorieslist.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(child:
                    Stack(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailedPage()));
                            },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: greyColor)
                            ),

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100,
                                      height: 100,
                                      child: Image.asset("${Constdata.categorieslist[index]['image']}",fit: BoxFit.cover,)),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          width: 70,
                                          color: Color(
                                              0xFFE7C249),child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Row(children: [
                                            Icon(Icons.energy_savings_leaf_outlined,size: 12,),
                                            SizedBox(width: 5,),
                                            CustomPoppinsText(text: "FEATURED",fontSize: 8,)
                                          ],),
                                        ),),
                                      ),
                                      SizedBox(height: 5,),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: CustomPoppinsText(text: "₹${Constdata.categorieslist[index]['price']}",fontSize: 17,fontWeight: FontWeight.w500,maxLine: 1,textOverflow: TextOverflow.ellipsis,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: CustomPoppinsText(text:"${Constdata.categorieslist[index]['title']}",fontSize: 13,maxLine: 1,textOverflow: TextOverflow.ellipsis,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: CustomPoppinsText(text: "${Constdata.categorieslist[index]['name']}",fontSize: 11,color: textColor,maxLine: 1,textOverflow: TextOverflow.ellipsis,),
                                      ),

                                      SizedBox(height: 10,),

                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.location_on_outlined,size: 16,color: Colors.black.withOpacity(0.7),),
                                            Container(
                                              width: 80,
                                                child: CustomPoppinsText(text: "${Constdata.categorieslist[index]['location']}",fontSize: 10,color: textColor,maxLine: 1,textOverflow: TextOverflow.ellipsis,)),
                                            Spacer(),
                                            Row(
                                              children: [
                                                Padding(
                                                    padding: const EdgeInsets.only(right:10),
                                                    child:CustomPoppinsText(text: "${Constdata.categorieslist[index]['time']}",textOverflow: TextOverflow.ellipsis,fontSize: 10,)
                                                  // Text(data.Date.timeZoneName,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 11,color: Colors.black.withOpacity(0.7)),),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                          Positioned(
                            right: 20,
                            top: 8,
                            child: Icon(Icons.favorite_border,size: 25,),
                          ),
                        ]
                    )),
                  ],
                ),
              );
            })
          ],
        )
        // Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child:
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Container(
        //             alignment: Alignment.center,
        //             width: ResponsiveRatio().width(context, 0.65),
        //
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(8),
        //               border: Border.all(color: Colors.black),
        //             ),
        //             child: TextField(
        //               decoration: InputDecoration(
        //                   hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7)),
        //                   contentPadding: EdgeInsets.only(top: 8),
        //                   hintText: "For Sale: Houses & Apartments",
        //                   enabled: true,
        //                   prefixIcon: GestureDetector(
        //                       onTap: (){
        //                         Navigator.pop(context);
        //                       },
        //                       child: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
        //                   border: UnderlineInputBorder(
        //                     borderSide: BorderSide.none,
        //                   )
        //               ),
        //             ),
        //           ),
        //           Icon(Icons.location_on_outlined,size: 30,),
        //         ],
        //       ),
        //     ),
        //     SizedBox(height: 10,),
        //     ListView.builder(
        //         shrinkWrap: true,
        //         physics: NeverScrollableScrollPhysics(),
        //         itemCount: Constdata.categorieslist.length,
        //         itemBuilder: (context,index){
        //           var data=Constdata.categorieslist[index];
        //           return Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Stack(
        //                 children: [
        //                   GestureDetector(
        //                   onTap: (){
        //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailedPage()));
        //                   },
        //                   child: Container(
        //                     height: ResponsiveRatio().height(context, 0.17),
        //                     decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(8),
        //                       border: Border.all(color: Colors.grey),
        //                     ),
        //                     child: Row(
        //                       children: [
        //                         Padding(
        //                           padding: const EdgeInsets.all(8.0),
        //                           child: Container(
        //                             height: ResponsiveRatio().width(context, 0.14),
        //                             width:ResponsiveRatio().width(context, 0.15),
        //                             child: Image.asset(data['image'],fit: BoxFit.cover,),
        //                           ),
        //                         ),
        //                         SizedBox(width: 3,),
        //                         Column(
        //                           mainAxisAlignment: MainAxisAlignment.center,
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Padding(
        //                               padding: const EdgeInsets.only(top: 10),
        //                               child: Container(color: Color(
        //                                   0xFFE7C249),child: Padding(
        //                                 padding: const EdgeInsets.all(5),
        //                                 child: Row(children: [
        //                                   Icon(Icons.energy_savings_leaf_outlined,size: 12,),
        //                                   SizedBox(width: 5,),
        //                                   CustomPoppinsText(text: "FEATURED",fontSize: 8,)
        //                                 ],),
        //                               ),),
        //                             ),
        //                             SizedBox(height: 5,),
        //                             CustomPoppinsText(text: "₹${data['price']}",fontSize: 17,fontWeight: FontWeight.w500,),
        //                             Expanded(child: CustomPoppinsText(text: data['title'],fontSize: 13,maxLine: 1,textOverflow: TextOverflow.ellipsis,)),
        //                             Container(
        //                                 width: ResponsiveRatio().width(context, 0.3),
        //                                 child:CustomPoppinsText(text: data['name'],fontSize: 11,color: textColor,maxLine: 1,textOverflow: TextOverflow.ellipsis,)
        //                                 // Text(data.name,style: TextStyle(fontSize: 11,color: Colors.black.withOpacity(0.7)),maxLines: 1,overflow: TextOverflow.ellipsis,)
        //                             ),
        //                             Spacer(),
        //                             Padding(
        //                               padding: const EdgeInsets.only(bottom: 8.0),
        //                               child: Row(
        //                                 children: [
        //                                   Icon(Icons.location_on_outlined,size: 16,color: Colors.black.withOpacity(0.7),),
        //                                   Container(
        //                                       width:ResponsiveRatio().width(context, 0.25),
        //                                       child: CustomPoppinsText(text: data['location'],fontSize: 10,color: textColor,maxLine: 1,textOverflow: TextOverflow.ellipsis,)),
        //                                   Row(
        //                                     children: [
        //                                       Padding(
        //                                         padding: const EdgeInsets.only(right:10),
        //                                         child:CustomPoppinsText(text: data['time'],textOverflow: TextOverflow.ellipsis,fontSize: 10,)
        //                                         // Text(data.Date.timeZoneName,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 11,color: Colors.black.withOpacity(0.7)),),
        //                                       ),
        //                                     ],
        //                                   ),
        //                                 ],
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                   Positioned(
        //                       right: 8,
        //                       top: 8,
        //                       child: Icon(Icons.favorite_border,size: 25,),
        //                   ),
        //                 ],
        //             ),
        //           );
        //         }),
        //   ],
        // ),
      ),
    );
  }
}
