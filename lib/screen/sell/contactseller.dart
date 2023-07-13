
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/colors.dart';
import '../../Constant/customPoppinsText.dart';
import '../../Constant/custom_button.dart';
import '../../Constant/resposive.dart';


class ContactSeller extends StatefulWidget {
  const ContactSeller({Key? key}) : super(key: key);

  @override
  State<ContactSeller> createState() => _ContactSellerState();
}

class _ContactSellerState extends State<ContactSeller> {
  bool valuee = false;

  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _mobilecontroller = TextEditingController();

  GlobalKey<FormState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Icon(
                    Icons.close,
                    size: 27,
                    color: Colors.black.withOpacity(0.7),
                  ),
                )),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _globalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomPoppinsText(text: "CONTACT SELLER",fontSize: 18,fontWeight: FontWeight.w600,),
                    // Text(
                    //   "CONTACT SELLER",
                    //   style:
                    //       TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomPoppinsText(text:  "Fill the form just once to get faster response. We will share your details with the seller",fontSize: 13,),
                    // Text(
                    //     "Fill the form just once to get faster response. We will share your details with the seller"),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Name is required";
                        }
                      },
                      controller: _namecontroller,
                      style: TextStyle(fontSize: 17),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 15),
                        label: CustomPoppinsText(text: "Full Name*",),
                      ),
                    ),
                    TextFormField(
                        controller: _emailcontroller,
                        style: TextStyle(fontSize: 17),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 15),
                          label:  CustomPoppinsText(text: "Email Address*",),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email is required";
                          }
                        }),
                    TextFormField(
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        inputFormatters: [],
                        controller: _mobilecontroller,
                        style: TextStyle(fontSize: 17),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(fontSize: 15),
                          label:  CustomPoppinsText(text: "Mobile Number*",),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Mobile number is required";
                          }
                        }),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                            activeColor:orangeColor,
                            value: valuee,
                            onChanged: (value) {
                              setState(() {
                                valuee = value!;
                              });
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: ResponsiveRatio().width(context, 0.3),
                            child: CustomPoppinsText(text:"I am ok to be contacted by other advertisers too",fontSize: 12,)
                            // Text(
                            //   "I am ok to be contacted by other advertisers too",
                            //   style: TextStyle(fontSize: 14),
                            // )
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton1(onTap: (){
                        Validate();
                      }, text: "ENQUIRE NOW")

                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Validate() {
    if (_globalKey.currentState!.validate()) {
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => Sellerchat("","")));
    }
  }
}
