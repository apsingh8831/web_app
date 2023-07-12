
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webapp_clone/constant/const_data.dart';

import '../../../Constant/customPoppinsText.dart';
import '../../../model/categoriesmodel.dart';
import 'categories.item.dart';


class Categories extends StatefulWidget {
  final List myDataList;
  final title;
  Categories({Key? key, required this.myDataList,this.title}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List _listproperties=[
    "For Sale:House & Apartments",
    "For Rent:House & Apartment",
    "Land & Plots",
    "For Rent:Shops & Office",
    "For Sale:Shops & Office",
    "PG & Guest Houses",
    "View All"
  ];
  List _listmobile=[
    "Mobile Phones",
    "Accessories",
    "Tablet",
    "View All",
  ];
  List _listjob=[
    "Data entry & Back office",
    "Sales & Marketing",
    "BPO & Telecaller",
    "Driver",
    "Office Assistant",
    "View All",
  ];
  List _listbike=[
    "Motorcycles",
    "Scooters",
    "Spare Parts",
    "Bicycles"
        "View All",
  ];
  List _listelectronic=[
    "TVs, Vedio-Audio",
    "Kitchen & Other Appliances",
    "Computers & laptop",
    "Cameras & Lenses"
        "Games & Entertainment",
    "Fridge",
  ];
  List _listcommercial=[
    "Commercial & Other Vehicles",
    "Spare Parts",
    "View all"
  ];

  List<CategoriesModal> categorieslist=[

    CategoriesModal(images: "asset/images/h2.jpeg", price: "1,90,00,000", title: "4 Bds-4 Ba-3000 ft2", name: "LULUMALL NEAR 7CENT,3000SOFT 4BHK HOUSE", location: "EDAPALLY, KOCHI", Date: DateTime(DateTime.daysPerWeek)),
    CategoriesModal(images: "asset/images/h1.jpeg", price: "39,00,000", title: "8 Bds-8 Ba-840 ft2", name: "Semi furnished East facing 2 bhk appartment for sale/lease/rent", location: "BANASHAKARI, BENGALURA", Date: DateTime(DateTime.daysPerWeek)),
    CategoriesModal(images: "asset/images/h3.jpeg", price: "33,95,000", title: "2 Bds-2 Ba-790 ft2", name: "Naktala Udayan marbled ready 2bhk at 33.95 Lacs only ", location: "NAKTALA, KOLKATA", Date: DateTime(DateTime.daysPerWeek)),
    CategoriesModal(images: "asset/images/h4.jpeg", price: "41,00,000", title: "3 Bds-3 Ba-1800 ft2", name: "3bhk flate only in 41 lacs on second floor", location: "PALM GARDEN, LUDHIANA", Date: DateTime(DateTime.daysPerWeek)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange,statusBarIconBrightness: Brightness.light),

          backgroundColor: Colors.white,
        elevation: 1,
        title:CustomPoppinsText(text: widget.title,fontSize: 18,)
        // Text(widget.title,style: TextStyle(fontSize: 20),),
      ),
      body: ListView.builder(
          itemCount: widget.myDataList.length,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Categories_view(categorieslist: Constdata.categorieslist)));
              },
              title:CustomPoppinsText(text: widget.myDataList[index],fontSize: 15,fontWeight: FontWeight.w400,)
              // Text(widget.myDataList[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
            );
          }),
    );
  }
}