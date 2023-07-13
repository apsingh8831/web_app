
import 'package:flutter/material.dart';

import '../../Constant/colors.dart';
import '../../Constant/customPoppinsText.dart';
import '../../Constant/custom_button.dart';
import '../../Constant/resposive.dart';
import 'carnumber.dart';

class CarAutoView extends StatefulWidget {
  const CarAutoView({Key? key}) : super(key: key);

  @override
  State<CarAutoView> createState() => _CarAutoViewState();
}

class _CarAutoViewState extends State<CarAutoView> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
          child: CustomButton1(
            onTap: () {
              if (index == 0) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CarNumber()));
              } else {
                Navigator.pop(context);
              }
            },
            text: "Continue",
          )
          ),
      body: Column(
        children: [
          Container(
            color: lightBlueColor,
            child: Column(
              children: [
                SizedBox(
                  height: ResponsiveRatio().height(context, 0.06),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                          ))
                    ],
                  ),
                ),
                Image.asset(
                  "asset/images/auto.png",
                  height: ResponsiveRatio().height(context, 0.08),
                ),
                SizedBox(
                  height: 6,
                ),
                CustomPoppinsText(
                  text: "100% Privacy and Safety",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomPoppinsText(
                    text:
                        " Your car details and personal information won't be uploaded or shared with anyone",
                    textAlign: TextAlign.center,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: ResponsiveRatio().height(context, 0.03),
          ),
          CustomPoppinsText(
            text: "CHOOSE AN OPTION TO SHARE DETAILS",
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            index = 0!;
                          });
                        },
                        child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: index == 0
                                    ? Color(0xFF0DCE83)
                                    : Colors.grey.withOpacity(0.3),
                                width: 2),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Icon(Icons.drive_eta_outlined,size: 60,),
                              CustomPoppinsText(text: "Auto-fill details",fontSize: 15,fontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                              CustomPoppinsText(text: "FILL IN DETAILS BY GIVING YOUR NUMBER",maxLine: 2,textOverflow: TextOverflow.ellipsis,textAlign: TextAlign.center,fontSize: 12,)
                            ],
                          ),
                        ),
                    ),
                      ),
                      Radio(
                          activeColor: Color(0xFF1E342D),
                          value: 0,
                          groupValue: index,
                          onChanged: (value) {
                            setState(() {
                              index = value!;
                            });
                          }),
                    ]
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            index = 1!;
                          });
                        },
                        child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: index == 1
                                    ? Color(0xFF0DCE83)
                                    : Colors.grey.withOpacity(0.3),
                                width: 2),
                            borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Icon(Icons.drive_eta_outlined,size: 60,),
                              CustomPoppinsText(text: "Auto-fill details",fontSize: 15,fontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                              CustomPoppinsText(text: "FILL IN DETAILS BY GIVING YOUR NUMBER",maxLine: 2,textOverflow: TextOverflow.ellipsis,textAlign: TextAlign.center,fontSize: 12,)
                            ],
                          ),
                        ),
                    ),
                      ),
                      Radio(
                          activeColor: Color(0xFF1E342D),
                          value: 1,
                          groupValue: index,
                          onChanged: (value) {
                            setState(() {
                              index = value!;
                            });
                          })
                      ]
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
