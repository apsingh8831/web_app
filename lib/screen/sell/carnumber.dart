
import 'package:flutter/material.dart';

import '../../Constant/colors.dart';
import '../../Constant/customPoppinsText.dart';
import '../../Constant/custom_button.dart';
import '../../Constant/resposive.dart';

class CarNumber extends StatefulWidget {
  const CarNumber({Key? key}) : super(key: key);

  @override
  State<CarNumber> createState() => _CarNumberState();
}

class _CarNumberState extends State<CarNumber> {
  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(

                width: _size.width,
                color: Color(0xFFBFCEF3),
                child: Column(
                children: [
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back,size: 30,)),
                        SizedBox(width: 20,),
                        CustomPoppinsText(text: "CAR NUMBER",fontSize: 18,)
                        // Text("CAR NUMBER",style: TextStyle(fontSize: 18),)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomPoppinsText(text:"Check car's registration certificate or number plate if you are not sure." ,fontSize: 12,maxLine: 3,textOverflow: TextOverflow.ellipsis,),
                      )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("asset/images/sell.png",height: ResponsiveRatio().height(context, 0.05),),
                        )
                    ],
                  )
                ],
                ),
              ),
              SizedBox(height: 40,),
              CustomPoppinsText(text: "What's your car's number?",fontSize: 18,fontWeight: FontWeight.w600,),

              CustomPoppinsText(text: "Skip multiple steps by sharing car number",color: textColor,fontSize: 13,),
              // Text("Skip multiple steps by sharing car number",style: TextStyle(color: Colors.black.withOpacity(0.7)),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(22),
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: TextFormField(
                    textCapitalization: TextCapitalization.characters,
                    cursorHeight: 30,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      suffixIcon: Icon(Icons.credit_card,size: 25,color: Colors.blueGrey,),
                      helperText: "e.g. DL34RT1234",
                      helperStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                      contentPadding: EdgeInsets.only(left:10,top: 5)
                    ),
                  ),
                ),
              ),
              SizedBox(height: ResponsiveRatio().height(context, 0.37)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.security,size: 20,color: Colors.blueGrey,),
                    SizedBox(width: 10,),
                    Expanded(child: CustomPoppinsText(text: "Don't worry, we will not share your car details with anyone",))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                CustomButton1(
                  width: _size.width,
                  text: "Continue",
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
