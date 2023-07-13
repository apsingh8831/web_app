
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/colors.dart';
import '../../Constant/customPoppinsText.dart';
import '../../Constant/custom_button.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../Constant/resposive.dart';

class MobileSale extends StatefulWidget {
  const MobileSale({Key? key}) : super(key: key);

  @override
  State<MobileSale> createState() => _MobileSaleState();
}
class _MobileSaleState extends State<MobileSale> {

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
  List _brandlist=[
    "iPhone,","Samsung","Mi","Vivo"
  ];
  TextEditingController _brandcontroler=TextEditingController();
  TextEditingController _titlecontroler=TextEditingController();
  TextEditingController _descontroler=TextEditingController();
  TextEditingController _pricecontroler=TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    Widget _appBar(title,tittle){
      return  AppBar(
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
    Widget _brand(){
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _appBar("Car","Brand"),
            ListView.builder(
              shrinkWrap: true,
                itemCount: _brandlist.length,
                itemBuilder: (context,index){
              return ListTile(
                onTap: (){
                 setState(() {
                   _brandcontroler.text=_brandlist[index];
                 });
                 Navigator.pop(context);
                },
                title: CustomPoppinsText(text:_brandlist[index],fontSize: 14,),
              );
            })
          ],
        ),
      );
    }
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
        child: CustomButton1(
          onTap: (){
            if (_formKey.currentState!.validate()) {
              _formKey.currentState?.save();
            }
          },
          height: _size.height*0.06,
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
                      return _brand();
                    });
                  },
                  child: TextFormField(
                    controller: _brandcontroler,
                    decoration: InputDecoration(
                      enabled: false,
                      label: CustomPoppinsText(text: "Brand*"),
                    ),
                    validator: (value){
                      if(value!.isEmpty||value==null){
                        return "Brand is mandatory. Please complete the required";
                      }return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _pricecontroler,
                  decoration: InputDecoration(
                    enabled: false,
                    label: CustomPoppinsText(text: "Price*"),
                  ),
                  validator: (value){
                    if(value!.isEmpty||value==null){
                      return "Price is mandatory. Please complete the required";
                    }return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  maxLength: 70,
                  controller: _titlecontroler,
                  decoration: InputDecoration(
                    helperMaxLines: 2,
                    helperText: "Mention the key features of your item(e.g. brand,model,age,type)",
                    label: CustomPoppinsText(text: "Ad title*"),
                  ),
                  validator: (value){
                    if(value!.isEmpty||value==null){
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
                    helperText: "Include condition,features and reason for selling",
                    label: CustomPoppinsText(text:"Describe what you are selling"),
                  ),
                  validator: (value){
                    if(value!.isEmpty||value == null){
                      return "A minimum length of 10 character is required.Please edit field";
                    }return null;
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
