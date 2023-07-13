
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Constant/customPoppinsText.dart';
import '../categories/chosse.category.dart';
import 'car.auto.view.dart';
import 'chosse.category.item.dart';

class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {

  List _text=[
    "Cars","Properties","Mobiles","Jobs","Bikes","Electronics & Appliances","Commercial Vehicles & Spares","More Categories"
  ];

  List _list=[
    Icon(Icons.car_repair,size: 35),
    Icon(Icons.warehouse_outlined,size: 35,),
    Icon(Icons.mobile_screen_share_sharp,size: 35,),
    Icon(Icons.shopping_bag_outlined,size: 35,),
    Icon(Icons.bike_scooter,size: 35,),
    Icon(Icons.electrical_services_rounded,size: 35,),
    Icon(Icons.fire_truck_outlined,size: 35,),
    Icon(Icons.category_outlined,size: 35,),

  ];
  List _listCar=[
    "Cars"
  ];


  List _listproperties=[
    "For Sale:House & Apartments",
    "For Rent:House & Apartment",
    "Land & Plots",
    "For Rent:Shops & Office",
    "For Sale:Shops & Office",
    "PG & Guest Houses",
  ];


  List _listmobile=[
    "Mobile Phones",
    "Accessories",
    "Tablet",
  ];


  List _listjob=[
    "Data entry & Back office",
    "Sales & Marketing",
    "BPO & Telecaller",
    "Driver",
    "Office Assistant",

  ];
  List _listbike=[
    "Motorcycles",
    "Scooters",
    "Spare Parts",
    "Bicycles"

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

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange,statusBarIconBrightness: Brightness.light),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.close,size: 30,color: Colors.black.withOpacity(0.7),)),
        title:CustomPoppinsText(text: "What are you offering?",fontSize: 16,)
        // Text("What are you offering?",style: TextStyle(fontSize: 17),),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              GridView.builder(
                shrinkWrap: true,
                  itemCount: _list.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 120,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    if(index==0){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CarAutoView()));
                    }
                    else if(index==1){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseCategoryitem(myDataList: _listproperties,title: "Properties",)));
                    }else if(index==2){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseCategoryitem(myDataList: _listmobile,title: "Mobiles",)));
                    }else if(index==3){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseCategoryitem(myDataList: _listjob,title: "Jobs",)));
                    }else if(index==4){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseCategoryitem(myDataList: _listbike,title: "Bike",)));
                    }else if(index==5){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseCategoryitem(myDataList: _listelectronic,title: "Electronic & Appliaces",)));
                    }else if(index==6){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseCategoryitem(myDataList: _listcommercial,title: "Commercial Vehicles & Spares",)));
                    }else if(index==7){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChosseCategory()));
                    }
                    else {
                      return null;
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.withOpacity(0.3),width: 2)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         _list[index],
                          CustomPoppinsText(text: "${_text[index]}",fontSize: 12,textAlign: TextAlign.center,)
                          // Text("${_text[index]}",style: TextStyle(fontSize: 13),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}


