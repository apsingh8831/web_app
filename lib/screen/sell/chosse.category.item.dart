import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Constant/customPoppinsText.dart';

class ChooseCategoryitem extends StatefulWidget {
  final List myDataList;
  final title;
  ChooseCategoryitem({Key? key, required this.myDataList,this.title}) : super(key: key);

  @override
  State<ChooseCategoryitem> createState() => _ChooseCategoryitemState();
}

class _ChooseCategoryitemState extends State<ChooseCategoryitem> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange,statusBarIconBrightness: Brightness.light),

          backgroundColor: Colors.white,
        elevation: 1,
        title: CustomPoppinsText(text: widget.title,fontSize: 18,)
      ),
      body: ListView.builder(
          itemCount: widget.myDataList.length,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>PropertiesSale()));

              },
              title: CustomPoppinsText(text: widget.myDataList[index],fontSize: 15,fontWeight: FontWeight.w400,)
            );
          }),
    );
  }
}