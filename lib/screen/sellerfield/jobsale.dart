import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/colors.dart';
import '../../Constant/customPoppinsText.dart';
import '../../Constant/custom_button.dart';
import '../../Constant/resposive.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class JobSale extends StatefulWidget {
  const JobSale({Key? key}) : super(key: key);

  @override
  State<JobSale> createState() => _JobSaleState();
}

class _JobSaleState extends State<JobSale> {

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
  List _salaryperiodlist=["Hourly,","Monthly","Weekly","Yearly"];
  List _postionlist=["Contract,","Full-time","Part-time","Temporary"];

  TextEditingController _salaryperiodcontroler=TextEditingController();
  TextEditingController _postioncontroler=TextEditingController();
  TextEditingController _salaryfromcontroler=TextEditingController();
  TextEditingController _salarytocontroler=TextEditingController();
  TextEditingController _titlecontroler=TextEditingController();
  TextEditingController _descontroler=TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    Widget _appBar1(title,tittle){
      return AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              CustomPoppinsText(text: title,fontSize: 14,color: textColor,),
              Container(
                  width: ResponsiveRatio().width(context, 0.16),
                  child: CustomPoppinsText(text: " > $tittle",fontSize: 14,maxLine: 1,textOverflow: TextOverflow.ellipsis,)),
            ],
          )
      );
    }
    Widget _salaryPeriod(){
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _appBar1("Back office","Salary period"),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _salaryperiodlist.length,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        _salaryperiodcontroler.text=_salaryperiodlist[index];
                      });
                      Navigator.pop(context);
                    },
                    title: CustomPoppinsText(text:_salaryperiodlist[index],fontSize: 14,),
                  );
                }),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Cancel",style: TextStyle(fontSize: 16,color: orangeColor),))
                ],
              ),
            ),
            SizedBox(height: ResponsiveRatio().height(context, 0.02),)
          ],
        ),
      );
    };
    Widget _Postion(){
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _appBar1("Back office","Position type"),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _salaryperiodlist.length,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        _postioncontroler.text=_postionlist[index];
                      });
                      Navigator.pop(context);
                    },
                    title: CustomPoppinsText(text:_postionlist[index],fontSize: 14,),
                  );
                }),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Cancel",style: TextStyle(fontSize: 16,color: orangeColor),))
                ],
              ),
            ),
            SizedBox(height: ResponsiveRatio().height(context, 0.02),)
          ],
        ),
      );
    };

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
                child: InkWell(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return _salaryPeriod();
                    });
                  },
                  child: TextFormField(
                    controller: _salaryperiodcontroler,
                    decoration: InputDecoration(
                      enabled: false,
                      isDense: true,
                      label: CustomPoppinsText(text: "Salary period*",color: textColor,),
                    ),
                    validator: (value){
                      if(value!.isEmpty||value==null){
                        return "Salary period is mandatory. Please complete the required field";
                      }return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return _Postion();
                    });
                  },
                  child: TextFormField(
                    controller: _postioncontroler,
                    decoration: InputDecoration(
                      isDense: true,
                      enabled: false,
                      label: CustomPoppinsText(text: "Position type*",color: textColor),
                    ),
                    validator: (value){
                      if(value!.isEmpty||value==null){
                        return "Position type is mandatory. Please complete the required field";
                      }return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(

                  maxLength: 7,
                  keyboardType: TextInputType.number,
                  controller: _salaryfromcontroler,
                  decoration: InputDecoration(
                    isDense: true,
                    label: CustomPoppinsText(text: "Salary from",color: textColor),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(

                  maxLength: 7,
                  keyboardType: TextInputType.number,
                  controller: _salarytocontroler,
                  decoration: InputDecoration(
                    isDense: true,
                    label: CustomPoppinsText(text: "Salary to",color: textColor),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  maxLength: 70,
                  controller: _titlecontroler,
                  decoration: InputDecoration(
                    isDense: true,
                    helperMaxLines: 2,
                    helperText: "Mention the key features of your item(e.g. brand,model,age,type)",
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

              ),
              SizedBox(height: ResponsiveRatio().height(context, 0.1),)
            ],
          ),
        ),
      ),
    );
  }
}
