


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Constant/customPoppinsText.dart';
import '../../Constant/custom_button.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../Constant/resposive.dart';
import '../../constant/colors.dart';

class PropertiesSale extends StatefulWidget {
  const PropertiesSale({Key? key}) : super(key: key);

  @override
  State<PropertiesSale> createState() => _PropertiesSaleState();
}

class _PropertiesSaleState extends State<PropertiesSale> {
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


  List _typelist=["Apartments,","Builder Floors","Farm Houses","Houses & Villas"];
  List _bedroomlist=["1","2","3","4","4+"];
  List _bathroomlist=["1","2","3","4","4+"];
  List _furnishlist=["Furnished","Semi-Furnished","Unfurnished"];
  List _contructionlist=["New Launch","Ready to Move","Under Construction"];
  List _listedbylist=["Builder","Dealer","Owner"];
  List _carparking=["0","1","2","3","3+"];
  List _facinglist=["East","North","North-East","North-West","South","South-East","South-West","West"];
  TextEditingController _typecontroller=TextEditingController();
  TextEditingController _titlecontroler=TextEditingController();
  TextEditingController _descontroler=TextEditingController();
  TextEditingController _pricecontroler=TextEditingController();
  TextEditingController _bedroomcontroler=TextEditingController();
  TextEditingController _bathroomcontroler=TextEditingController();
  TextEditingController _furnishcontroler=TextEditingController();
  TextEditingController _constructioncontroler=TextEditingController();
  TextEditingController _listedbycontroler=TextEditingController();
  TextEditingController _supercontroler=TextEditingController();
  TextEditingController _carpetcontroler=TextEditingController();
  TextEditingController _maintcontroler=TextEditingController();
  TextEditingController _totalcontroler=TextEditingController();
  TextEditingController _floorcontroler=TextEditingController();
  TextEditingController _carcontroler=TextEditingController();
  TextEditingController _facingcontroler=TextEditingController();
  TextEditingController _projectcontroler=TextEditingController();


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

    Widget _type(){
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _appBar1("Houses & Apartments","Type"),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _typelist.length,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        _typecontroller.text=_typelist[index];
                      });
                      Navigator.pop(context);
                    },
                    title: CustomPoppinsText(text:_typelist[index],fontSize: 14,),
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
    Widget _bedroom(){
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _appBar1("Houses & Apartments","Bedrooms"),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _bedroomlist.length,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        _bedroomcontroler.text=_bedroomlist[index];
                      });
                      Navigator.pop(context);
                    },
                    title: CustomPoppinsText(text:_bedroomlist[index],fontSize: 14,),
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
    Widget _bathroom(){
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _appBar1("Houses & Apartments","Bathrooms"),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _bathroomlist.length,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        _bathroomcontroler.text=_bathroomlist[index];
                      });
                      Navigator.pop(context);
                    },
                    title: CustomPoppinsText(text:_bathroomlist[index],fontSize: 14,),
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
    Widget _furnish(){
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _appBar1("Houses & Apartments","Furnished"),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _furnishlist.length,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        _furnishcontroler.text=_furnishlist[index];
                      });
                      Navigator.pop(context);
                    },
                    title: CustomPoppinsText(text:_furnishlist[index],fontSize: 14,),
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
    Widget _const(){
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _appBar1("Houses & Apartments","Construction Status"),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _contructionlist.length,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        _constructioncontroler.text=_contructionlist[index];
                      });
                      Navigator.pop(context);
                    },
                    title: CustomPoppinsText(text:_contructionlist[index],fontSize: 14,),
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
    Widget _listed(){
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _appBar1("Houses & Apartments","Listed by"),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _listedbylist.length,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        _listedbycontroler.text=_listedbylist[index];
                      });
                      Navigator.pop(context);
                    },
                    title: CustomPoppinsText(text:_listedbylist[index],fontSize: 14,),
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
    Widget _car(){
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _appBar1("Houses & Apartments","Car Parking"),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _carparking.length,
                itemBuilder: (context,index){
                  return ListTile(
                    onTap: (){
                      setState(() {
                        _carcontroler.text=_carparking[index];
                      });
                      Navigator.pop(context);
                    },
                    title: CustomPoppinsText(text:_carparking[index],fontSize: 14,),
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
    Widget _facing(){
      return Dialog(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _appBar1("Houses & Apartments","Facing"),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: _facinglist.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      onTap: (){
                        setState(() {
                          _facingcontroler.text=_facinglist[index];
                        });
                        Navigator.pop(context);
                      },
                      title: CustomPoppinsText(text:_facinglist[index],fontSize: 14,),
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
              print("Sucess");
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
                      return _type();
                    });
                  },

                  child: TextFormField(
                    controller: _typecontroller,
                    decoration: InputDecoration(
                      isDense: true,
                      enabled: false,
                      label: CustomPoppinsText(text: "Type*",color: textColor,),
                    ),
                    validator: (value){
                      if(value!.isEmpty||value==null){
                        return "Type is mandatory. Please complete the required field";
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
                      return _bedroom();
                    });
                  },
                  child: TextFormField(
                    controller: _bedroomcontroler,
                    decoration: InputDecoration(
                      isDense: true,
                      enabled: false,
                      label: CustomPoppinsText(text: "Bedrooms",color: textColor,),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return _bathroom();
                    });
                  },
                  child: TextFormField(
                    controller: _bathroomcontroler,
                    decoration: InputDecoration(
                      isDense: true,
                      enabled: false,
                      label: CustomPoppinsText(text: "Bathrooms",color: textColor,),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return _furnish();
                    });
                  },
                  child: TextFormField(
                    controller: _furnishcontroler,
                    decoration: InputDecoration(
                      isDense: true,
                      enabled: false,
                      label: CustomPoppinsText(text: "Furnishing",color: textColor,),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return _const();
                    });
                  },
                  child: TextFormField(
                    controller: _constructioncontroler,
                    decoration: InputDecoration(
                      isDense: true,
                      enabled: false,
                      label: CustomPoppinsText(text: "Contruction Status",color: textColor,),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return _listed();
                    });
                  },
                  child: TextFormField(
                    controller: _listedbycontroler,
                    decoration: InputDecoration(
                      isDense: true,
                      enabled: false,
                      label: CustomPoppinsText(text: "Listed by",color: textColor,),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _supercontroler,
                  decoration: InputDecoration(
                    isDense: true,
                    label: CustomPoppinsText(text: "Super Builtup area(ft²)*",color: textColor,),
                  ),
                  validator: (value){
                    if(value!.isEmpty||value==null){
                      return "Super Builtup area(ft2) has a maximum value of 999999999.";
                    }return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _carpetcontroler,
                  decoration: InputDecoration(
                    isDense: true,
                    label: CustomPoppinsText(text: "Carpet Area(ft²)*",color: textColor,),
                  ),
                  validator: (value){
                    if(value!.isEmpty||value==null){
                      return "Carpet Area(ft2) is mandatory. Please complete the required field";
                    }return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _maintcontroler,
                  decoration: InputDecoration(
                    isDense: true,
                    label: CustomPoppinsText(text: "Maintenance(Monthly)",color: textColor,),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _totalcontroler,
                  decoration: InputDecoration(
                    isDense: true,
                    label: CustomPoppinsText(text: "Total Floors",color: textColor,),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _floorcontroler,
                  decoration: InputDecoration(
                    isDense: true,
                    label: CustomPoppinsText(text: "Floor No",color: textColor,),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return _car();
                    });
                  },
                  child: TextFormField(
                    controller: _carcontroler,
                    decoration: InputDecoration(
                      isDense: true,
                      enabled: false,
                      label: CustomPoppinsText(text: "Car Parking",color: textColor,),
                    ),

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return _facing();
                    });
                  },

                  child: TextFormField(
                    controller: _facingcontroler,
                    decoration: InputDecoration(
                      isDense: true,
                      enabled: false,
                      label: CustomPoppinsText(text: "Facing",color: textColor,),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _floorcontroler,
                  decoration: InputDecoration(
                    isDense: true,
                    label: CustomPoppinsText(text: "Floor No",color: textColor,),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _pricecontroler,
                  decoration: InputDecoration(
                    isDense: true,
                    label: CustomPoppinsText(text: "Price*",color: textColor,),
                  ),
                  validator: (value){
                    if(value!.isEmpty||value==null){
                      return "Price is mandatory. Please complete the required field";
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
                    isDense: true,
                    helperMaxLines: 2,
                    helperText: "Mention the key features of your item(e.g. brand,model,age,type)",
                    label: CustomPoppinsText(text: "Ad title*",color: textColor,),
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
                    isDense: true,
                    helperText: "Include condition,features and reason for selling",
                    label: CustomPoppinsText(text:"Describe what you are selling",color: textColor,),
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

              ),
              SizedBox(height: ResponsiveRatio().height(context, 0.13),)
            ],
          ),
        ),
      ),
    );
  }
}
