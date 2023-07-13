import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/colors.dart';
import '../../Constant/customPoppinsText.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../../Constant/custom_button.dart';
import '../../Constant/resposive.dart';

class ElectronicSale extends StatefulWidget {
  const ElectronicSale({Key? key}) : super(key: key);

  @override
  State<ElectronicSale> createState() => _ElectronicSaleState();
}

class _ElectronicSaleState extends State<ElectronicSale> {

  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  final _formKey = GlobalKey<FormState>();

  TextEditingController _titlecontroler=TextEditingController();
  TextEditingController _descontroler=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
        child: CustomButton1(
          onTap: (){
            if (_formKey.currentState!.validate()) {
              print("success");
            }else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.black,
                  content: Text("Please solve the error in the field")));
            }
          },
          text: "Next",
        ),
      ),
      appBar:  AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange,statusBarIconBrightness: Brightness.light),

          backgroundColor: Colors.white,
          elevation: 1,
          title:CustomPoppinsText(text:"Include some details" ,fontSize: 18,)
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                maxLength: 70,
                controller: _titlecontroler,
                decoration: InputDecoration(
                  isDense: true,
                  label: CustomPoppinsText(text: "Ad title*",color: textColor),
                ),
                validator: (value){
                  if(value!.isEmpty||value==null){
                    return "A minimum length of 10 character is required. Please edit the field";
                  }else if(value.length<10){
                    return "A minimum length of 10 character is required. Please edit the field";
                  }return null;
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                maxLength: 4096,
                controller: _descontroler,
                decoration: InputDecoration(
                  isDense: true,
                  helperText: "Include condition,features and reason for selling",
                  label: CustomPoppinsText(text:"Describe what you are selling",color: textColor),
                ),
                validator: (value){
                  if(value!.isEmpty||value == null){
                    return "A minimum length of 10 character is required.Please edit field";
                  }else if(value.length<10){
                    return "A minimum length of 10 character is required.Please edit field";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                onTap: (){
                  getImage();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: ResponsiveRatio().width(context, 1),
                  height: ResponsiveRatio().height(context, 0.14),
                  child: _image != null ? Image.file(_image!) : CustomPoppinsText( text: 'Add Image',fontSize: 15,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                ),
              ),

            )

          ],
      ),
        ),
      ),
    );
  }
}
