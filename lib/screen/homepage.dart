// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webapp_clone/screen/categories/detailed_page.dart';
import 'package:webapp_clone/screen/sell/sell.dart';

import '../../Constant/custom_button.dart';
import '../Constant/customPoppinsText.dart';
import '../constant/colors.dart';
import '../constant/const_data.dart';
import '../constant/resposive.dart';
import 'categories/categories/categories.dart';
import 'categories/recommended.dart';
import 'categories/sellall.dart';
import 'notification.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Responsive.isDesktop(context)
        ? const MyStoreWebUI()
        : const MyStoreMob();
  }
}

class MyStoreWebUI extends StatefulWidget {
  const MyStoreWebUI({Key? key}) : super(key: key);

  State<MyStoreWebUI> createState() => _MyStoreWebUIState();
}

class _MyStoreWebUIState extends State<MyStoreWebUI> {

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "asset/images/oonzoo.png",
              height: ResponsiveRatio().height(context, 0.04),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                width: ResponsiveRatio().width(context, 0.5),
                height: ResponsiveRatio().height(context, 0.052),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 6),
                      hintText: "Find Car, Mobile Phone and more",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
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
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: ResponsiveRatio().height(context, 0.3),
              decoration: BoxDecoration(color: Color(0xFF1C73FD)),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "asset/images/img1.gif",
                      height: ResponsiveRatio().height(context, 0.12),
                      width: double.infinity,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: CustomButton1(
                          text: "Buy Car",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Recommended()));
                          },
                        )),
                        SizedBox(
                          width: 18,
                        ),
                        Expanded(
                            child: CustomButton1(
                          text: "Sell Car",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sell()));
                          },
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomPoppinsText(
                          text: "Browse categories",
                          fontSize: 16,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SeeAll()));
                            },
                            child: CustomPoppinsText(
                              text: "See all",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Container(
                      height: ResponsiveRatio().height(context, 0.14),
                      child: ListView.builder(
                          itemCount: Constdata.list.length,
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: GestureDetector(
                                onTap: () {

                                },
                                child: Container(
                                  width: ResponsiveRatio().width(context, 0.12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Constdata.list[index]['image']!,
                                        height: ResponsiveRatio()
                                            .height(context, 0.05),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomPoppinsText(
                                        text: Constdata.list[index]['name']!,
                                        fontSize: 10,
                                        textAlign: TextAlign.center,
                                        maxLine: 2,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: CustomPoppinsText(
                        text: "Fresh recommendation",
                        fontSize: 18,
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: Constdata.productDetail.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisExtent: 200,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return Stack(children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailedPage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey, width: 2)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 6, top: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: ResponsiveRatio()
                                              .height(context, 0.12),
                                          width: ResponsiveRatio()
                                              .width(context, 1),
                                          child: Image.asset(Constdata
                                              .productDetail[index]['image'])),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      CustomPoppinsText(
                                        text:
                                            "₹ ${Constdata.productDetail[index]['price']}",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      Container(
                                          child: CustomPoppinsText(
                                        text:
                                            "${Constdata.productDetail[index]['title']}",
                                        maxLine: 1,
                                        textOverflow: TextOverflow.ellipsis,
                                        fontSize: 13,
                                      )),
                                      Container(
                                        width: ResponsiveRatio()
                                            .width(context, 0.5),
                                        child: CustomPoppinsText(
                                          text:
                                              "${Constdata.productDetail[index]['name']}",
                                          maxLine: 1,
                                          textOverflow: TextOverflow.ellipsis,
                                          fontSize: 11,
                                          color: textColor,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 20,
                                          ),
                                          Container(
                                              child: Flexible(
                                            child: CustomPoppinsText(
                                              text:
                                                  "${Constdata.productDetail[index]['location']}",
                                              maxLine: 1,
                                              textOverflow:
                                                  TextOverflow.ellipsis,
                                              fontSize: 11,
                                              color: textColor,
                                            ),
                                          ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              top: 10,
                              child: GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.favorite,
                                    )),
                              ),
                            )
                          ]);
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyStoreMob extends StatefulWidget {
  const MyStoreMob({Key? key}) : super(key: key);

  @override
  State<MyStoreMob> createState() => _MyStoreMobState();
}

class _MyStoreMobState extends State<MyStoreMob> {
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
            SizedBox(
              height: 10,
            ),
            Container(
              height: ResponsiveRatio().height(context, 0.3),
              decoration: BoxDecoration(color: Color(0xFF1C73FD)),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "asset/images/img1.gif",
                      height: ResponsiveRatio().height(context, 0.12),
                      width: double.infinity,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: CustomButton1(
                          text: "Buy Car",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Recommended()));
                          },
                        )),
                        SizedBox(
                          width: 18,
                        ),
                        Expanded(
                            child: CustomButton1(
                          text: "Sell Car",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sell()));
                          },
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomPoppinsText(
                          text: "Browse categories",
                          fontSize: 16,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SeeAll()));
                            },
                            child: CustomPoppinsText(
                              text: "See all",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Container(
                      height: ResponsiveRatio().height(context, 0.14),
                      child: ListView.builder(
                          itemCount: Constdata.list.length,
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: GestureDetector(
                                onTap: () {
                                  if (index == 0) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const Recommended()));
                                  } else if (index == 1) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Categories(
                                              myDataList: Constdata.listproperty,
                                              title: "Properties",
                                            )));
                                  } else if (index == 2) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Categories(
                                              myDataList: Constdata.listmobile,
                                              title: "Mobile",
                                            )));
                                  } else if (index == 3) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Categories(
                                              myDataList: Constdata.listjob,
                                              title: "Jobs",
                                            )));
                                  } else if (index == 4) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Categories(
                                              myDataList: Constdata.listbike,
                                              title: "Bike",
                                            )));
                                  } else if (index == 5) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Categories(
                                              myDataList: Constdata.listelectronic,
                                              title:
                                              "Electronics & Appliances",
                                            )));
                                  } else if (index == 6) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Categories(
                                              myDataList: Constdata.listcommercial,
                                              title:
                                              "Commercial Vehicles & Spares",
                                            )));
                                  } else if (index == 7) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Categories(
                                              myDataList: Constdata.listfurniture,
                                              title: "Furniture",
                                            )));
                                  } else {
                                    return null;
                                  }
                                },
                                child: Container(
                                  width: ResponsiveRatio().width(context, 0.12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Constdata.list[index]['image']!,
                                        height: ResponsiveRatio()
                                            .height(context, 0.05),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomPoppinsText(
                                        text: Constdata.list[index]['name']!,
                                        fontSize: 10,
                                        textAlign: TextAlign.center,
                                        maxLine: 2,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: CustomPoppinsText(
                        text: "Fresh recommendation",
                        fontSize: 18,
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: Constdata.productDetail.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: Responsive.isLargeTab(context)
                                ? 4
                                : Responsive.isSmallTab(context)
                                    ? 3
                                    : 2,
                            mainAxisExtent: Responsive.isLargeTab(context)
                                ? 270
                                : Responsive.isSmallTab(context)
                                    ? 230
                                    : Responsive.isMobile(context)
                                        ? 210
                                        : 220,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return Stack(children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailedPage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey, width: 2)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 6, top: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: ResponsiveRatio()
                                              .height(context, 0.12),
                                          width: ResponsiveRatio()
                                              .width(context, 1),
                                          child: Image.asset(Constdata
                                              .productDetail[index]['image'])),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      CustomPoppinsText(
                                        text:
                                            "₹ ${Constdata.productDetail[index]['price']}",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      Container(
                                          child: CustomPoppinsText(
                                        text:
                                            "${Constdata.productDetail[index]['title']}",
                                        maxLine: 1,
                                        textOverflow: TextOverflow.ellipsis,
                                        fontSize: 13,
                                      )),
                                      Container(
                                        width: ResponsiveRatio()
                                            .width(context, 0.5),
                                        child: CustomPoppinsText(
                                          text:
                                              "${Constdata.productDetail[index]['name']}",
                                          maxLine: 1,
                                          textOverflow: TextOverflow.ellipsis,
                                          fontSize: 11,
                                          color: textColor,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 20,
                                          ),
                                          Container(
                                              child: Flexible(
                                            child: CustomPoppinsText(
                                              text:
                                                  "${Constdata.productDetail[index]['location']}",
                                              maxLine: 1,
                                              textOverflow:
                                                  TextOverflow.ellipsis,
                                              fontSize: 11,
                                              color: textColor,
                                            ),
                                          ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              top: 10,
                              child: GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.favorite,
                                    )),
                              ),
                            )
                          ]);
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BrowseCategories {
  String? title;
  String? image;
  BrowseCategories(this.title, this.image);
}
