

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webapp_clone/screen/categories/recommended.dart';
import '../../Constant/customPoppinsText.dart';
import '../../Constant/resposive.dart';
import 'categories/categories.dart';


class SeeAll extends StatefulWidget {
  const SeeAll({Key? key,}) : super(key: key);

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {

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
  List _listfurniture=[
    "Sofa & Dining",
    "Beds & Wardrobes",
    "Home Decor & Garden",
    "Kids Furnture",
    "Other Household Items",
    "View All",
  ];

  List<Invoice> _list=[
    Invoice("OLX AUTOS(CARS)", null, "asset/images/auto.png"),
    Invoice("PROPERTIES", Icon(Icons.arrow_forward_ios_outlined), "asset/images/property.png"),
    Invoice("MOBILES", Icon(Icons.arrow_forward_ios_outlined), "asset/images/mob.png"),
    Invoice("JOBS", Icon(Icons.arrow_forward_ios_outlined), "asset/images/jobs.png"),
    Invoice("BIKE", Icon(Icons.arrow_forward_ios_outlined), "asset/images/bike.png"),
    Invoice("ELECTRONICS & APPLIANCES", Icon(Icons.arrow_forward_ios_outlined), "asset/images/elec.png"),
    Invoice("COMMERCIAL VEHICLES & SPARES", Icon(Icons.arrow_forward_ios_outlined), "asset/images/cv.png"),
    Invoice("FURNITURE", Icon(Icons.arrow_forward_ios_outlined), "asset/images/fur.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange,statusBarIconBrightness: Brightness.light),

          title:CustomPoppinsText(text: "Categories",fontSize: 18,)
        // Text("Categories",style: TextStyle(fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: _list.length,
              physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ListTile(
                      onTap: (){

                        if(index==0){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Recommended()));
                        }
                        else if(index==1){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories(myDataList: _listproperties,title: "Properties",)));
                        }else if(index==2){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories(myDataList: _listproperties,title: "Mobiles",)));
                        }else if(index==3){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories(myDataList: _listproperties,title: "Jobs",)));
                        }else if(index==4){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories(myDataList: _listproperties,title: "Bike",)));
                        }else if(index==5){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories(myDataList: _listproperties,title: "Electronic & Appliaces",)));
                        }else if(index==6){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories(myDataList: _listcommercial,title: "Commercial Vehicles & Spares",)));
                        }else if(index==7){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories(myDataList: _listfurniture,title: "Furniture",)));
                        }
                        else {
                          return null;
                        }

                      },
                      dense: true,
                      leading: Image.asset(_list[index].image.toString(),height: ResponsiveRatio().height(context, 0.05),),
                      title: CustomPoppinsText(text: _list[index].title.toString(),fontSize: 13,fontWeight: FontWeight.w500,),
                      trailing: Icon(_list[index].icon?.icon,size: 14,color: Colors.black,)
                    ),
                  ),

                ],
              );
            })

          ],
        ),
      ),
    );
  }
}
class Invoice{
  String? title;
  Icon? icon;
  String? image;

  Invoice(this.title, this.icon,this.image);
}
