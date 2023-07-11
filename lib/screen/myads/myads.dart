
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../../Constant/customPoppinsText.dart';
import '../../Constant/custom_button.dart';
import '../../Constant/resposive.dart';
import '../../constant/colors.dart';

class MyAds extends StatefulWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  State<MyAds> createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> with TickerProviderStateMixin {

  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: ResponsiveRatio().height(context, 0),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.orange,
            statusBarIconBrightness: Brightness.light),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                "asset/images/oonzoo.png",
                height: ResponsiveRatio().height(context, 0.04),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(12),
                child: CustomPoppinsText(
                  text: "My Ads",
                  fontSize: 15,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: ResponsiveRatio().height(context, 0.85),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(),
                          child: TabBar(
                            controller: _tabController,
                            labelPadding: EdgeInsets.symmetric(horizontal: 10),
                            tabs: [
                              Container(
                                height: ResponsiveRatio().height(context, 0.05),
                                child: Tab(
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10),
                                      child: CustomPoppinsText(
                                        text: "ADS",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
                              Container(
                                height: ResponsiveRatio().height(context, 0.05),
                                child: Tab(
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10),
                                      child: CustomPoppinsText(
                                        text: "FAVOURITES",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
                            ],
                            indicatorColor: orangeColor,
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: orangeColor,
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset("asset/images/oonzoo.png",
                                  height:
                                      ResponsiveRatio().height(context, 0.06)),
                              SizedBox(
                                height: 15,
                              ),
                              CustomPoppinsText(
                                text: "You Have't listed anything yet",
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomPoppinsText(
                                text: "Let go of what you don't use anymore",
                                fontSize: 13,
                              ),

                              // Text("Let go of what you don't use anymore",style: TextStyle(fontSize: 13,color: Colors.black.withOpacity(0.5)),),
                              SizedBox(
                                height: 15,
                              ),
                              CustomButton1(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Sell()));
                                  },
                                  text: "Post",
                                  height:
                                      ResponsiveRatio().height(context, 0.05),
                                  width: ResponsiveRatio().width(context, 0.3)),

                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12, top: 12, bottom: 12),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            "asset/images/sell.png",
                                            height: ResponsiveRatio()
                                                .height(context, 0.07),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Want to sell more?",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w600,
                                                    color: orangeColor),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Responsive.isSmallTab(context)? Container(
                                                  width: ResponsiveRatio()
                                                      .width(context, 0.2),
                                                  child: CustomPoppinsText(
                                                    text:
                                                    "Post more Ads for less. Package that help you save money",
                                                    maxLine: 3,
                                                    textOverflow:
                                                    TextOverflow.ellipsis,
                                                    fontSize: 10,
                                                  )):Responsive.isMobile(context)? Container(
                                                  width: ResponsiveRatio()
                                                      .width(context, 0.3),
                                                  child: CustomPoppinsText(
                                                    text:
                                                    "Post more Ads for less. Package that help you save money",
                                                    maxLine: 3,
                                                    textOverflow:
                                                    TextOverflow.ellipsis,
                                                    fontSize: 14,
                                                  )):Responsive.isLargeTab(context)? Container(
                                                  width: ResponsiveRatio()
                                                      .width(context, 0.3),
                                                  child: CustomPoppinsText(
                                                    text:
                                                    "Post more Ads for less. Package that help you save money",
                                                    maxLine: 2,
                                                    textOverflow:
                                                    TextOverflow.ellipsis,
                                                    fontSize: 20,
                                                  )):Container(
                                                  width: ResponsiveRatio()
                                                      .width(context, 1),
                                                  child: CustomPoppinsText(
                                                    text:
                                                    "Post more Ads for less. Package that help you save money",
                                                    maxLine: 1,
                                                    textOverflow:
                                                    TextOverflow.ellipsis,
                                                    fontSize: 14,
                                                  ))

                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      CustomButton1(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             BuyPackage()));
                                        },
                                        text: "Show me Packages",
                                        width: ResponsiveRatio()
                                            .width(context, 0.9),
                                        height: ResponsiveRatio()
                                            .height(context, 0.04),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              )
                            ],
                          ),
                          isempty()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // isFav() {
  //   final favouriteproduct = Provider.of<FavoritesProduct>(context);
  //   return Padding(
  //     padding: const EdgeInsets.only(
  //       left: 8.0,
  //       right: 8,
  //     ),
  //     child: Column(
  //       children: [
  //         favouriteproduct.selectedItem.isEmpty
  //             ? isempty()
  //             : GridView.builder(
  //                 physics: NeverScrollableScrollPhysics(),
  //                 shrinkWrap: true,
  //                 itemCount: favouriteproduct.selectedItem.length,
  //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //                     crossAxisCount: 2,
  //                     mainAxisExtent: 260,
  //                     crossAxisSpacing: 10,
  //                     mainAxisSpacing: 10),
  //                 itemBuilder: (context, index) {
  //                   return Stack(children: [
  //                     GestureDetector(
  //                       onTap: () {
  //                         Navigator.push(
  //                             context,
  //                             MaterialPageRoute(
  //                                 builder: (context) => DetailedPage()));
  //                       },
  //                       child: Container(
  //                         height: MediaQuery.of(context).size.height * 0.32,
  //                         decoration: BoxDecoration(
  //                             color: Colors.grey.shade50,
  //                             borderRadius: BorderRadius.circular(8),
  //                             border: Border.all(
  //                                 color: Colors.grey.shade400, width: 2)),
  //                         child: Padding(
  //                           padding: const EdgeInsets.all(8.0),
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: [
  //                               Container(
  //                                   height:
  //                                       ResponsiveRatio().height(context, 0.17),
  //                                   width: ResponsiveRatio().width(context, 1),
  //                                   child:
  //                                       Image.asset(_homemodel[index].images)),
  //                               SizedBox(
  //                                 height: 8,
  //                               ),
  //                               CustomPoppinsText(
  //                                 text: "₹ ${_homemodel[index].price}",
  //                                 fontSize: 18,
  //                                 fontWeight: FontWeight.w500,
  //                               ),
  //                               Container(
  //                                   child: CustomPoppinsText(
  //                                 text: "${_homemodel[index].title}",
  //                                 maxLine: 1,
  //                                 textOverflow: TextOverflow.ellipsis,
  //                                 fontSize: 13,
  //                               )),
  //                               Container(
  //                                 width: ResponsiveRatio().width(context, 0.5),
  //                                 child: CustomPoppinsText(
  //                                   text: "${_homemodel[index].name}",
  //                                   maxLine: 1,
  //                                   textOverflow: TextOverflow.ellipsis,
  //                                   fontSize: 11,
  //                                   color: textColor,
  //                                 ),
  //                               ),
  //                               Spacer(),
  //                               Row(
  //                                 children: [
  //                                   Icon(
  //                                     Icons.location_on_outlined,
  //                                     size: 20,
  //                                   ),
  //                                   Container(
  //                                       child: Flexible(
  //                                     child: CustomPoppinsText(
  //                                       text: "${_homemodel[index].location}",
  //                                       maxLine: 1,
  //                                       textOverflow: TextOverflow.ellipsis,
  //                                       fontSize: 11,
  //                                       color: textColor,
  //                                     ),
  //                                   ))
  //                                 ],
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsets.only(top: 5, left: 10),
  //                       child: Container(
  //                         height: 20,
  //                         width: 80,
  //                         color: Color(0xFFE7C249),
  //                         child: Padding(
  //                           padding: const EdgeInsets.only(left: 8.0, right: 5),
  //                           child: Row(
  //                             children: [
  //                               Icon(
  //                                 Icons.energy_savings_leaf_outlined,
  //                                 size: 12,
  //                               ),
  //                               SizedBox(
  //                                 width: 5,
  //                               ),
  //                               Text(
  //                                 ("FEATURED"),
  //                                 style: TextStyle(fontSize: 8),
  //                               )
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     Consumer<FavoritesProduct>(
  //                         builder: (context, value, child) {
  //                       return Positioned(
  //                         right: 20,
  //                         top: 10,
  //                         child: GestureDetector(
  //                           onTap: () {
  //                             if (value.selectedItem.contains(index)) {
  //                               value.removeItem(index);
  //                             } else {
  //                               value.addItem(index);
  //                             }
  //                           },
  //                           child: CircleAvatar(
  //                               backgroundColor: Colors.white,
  //                               child: Icon(
  //                                 value.selectedItem.contains(index)
  //                                     ? Icons.favorite
  //                                     : Icons.favorite_border,
  //                               )),
  //                         ),
  //                       );
  //                     })
  //                   ]);
  //                 }),
  //       ],
  //     ),
  //   );
  // }

  isempty() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "asset/images/hurt.webp",
            height: ResponsiveRatio().height(context, 0.3),
          ),
          SizedBox(
            height: 15,
          ),
          CustomPoppinsText(
            text: "You Have't listed anything yet",
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: ResponsiveRatio().width(context, 0.3),
            child: CustomPoppinsText(
              text: "Collect all the thing you like in one place",
              fontSize: 13,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CustomButton1(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Navigation()));
            },
            text: "Discover",
            width: ResponsiveRatio().width(context, 0.6),
            height: ResponsiveRatio().height(context, 0.05),
          )
        ],
      ),
    );
  }
}
