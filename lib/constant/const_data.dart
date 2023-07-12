import '../screen/homepage.dart';

class Constdata{

  static List<Map<String, String>> list = <Map<String, String>>[
  <String, String>{
  'image': 'asset/images/auto.png',
  'name': 'OLX AUTOS(CARS)',
  },
    <String, String>{
      'image': 'asset/images/property.png',
      'name': 'PROPERTIES',
    },
    <String, String>{
      'image': 'asset/images/mob.png',
      'name': 'MOBILES',
    },
    <String, String>{
      'image': 'asset/images/jobs.png',
      'name': 'JOBS',
    },
    <String, String>{
      'image': 'asset/images/bike.png',
      'name': 'BIKE',
    },
    <String, String>{
      'image': 'asset/images/elec.png',
      'name': 'ELECTRONICS & APPLIANCES',
    },
    <String, String>{
      'image': 'asset/images/cv.png',
      'name': 'COMMERCIAL VEHICLES & SPARES',
    },
    <String, String>{
      'image': 'asset/images/fur.png',
      'name': 'FURNITURE',
    },


  ];
  static List<Map<String, dynamic>> productDetail = <Map<String, dynamic>>[
  <String, dynamic>{
  'id': '1',
  'image': 'asset/images/iphone.jpeg',
  'name': '',
  'title':"IPHONE 6 32GB RAM",
  "location" : 'Greater Noida dehli,Ghaziabad'  ,
  'price': 19000,
  },
  <String, dynamic>{
      'id': '2',
      'image': 'asset/images/h1.jpeg',
      'name': '',
      'title':'8 Bds-8 Ba-840 ft2',
      "location" : 'BANASHAKARI, BENGALRU'  ,
      'price': 3900000,

    },
    <String, dynamic> {
      'id': '3',
      'image': 'asset/images/iphon.jpeg',
      'name': 'Semi furnished East facing 2bhk house',
      'title':'IPHONE 13 32GB RAM',
      "location" : 'Greater Noida dehli,Ghaziabad'  ,
      'price': 25000,

    }
  ];

  static List<Map<String, dynamic>> user = <Map<String, dynamic>>[
  <String, dynamic>{
  'id': '0',
  'image': 'asset/images/u1.png',
  'name': 'Harshit',
  'title':"my name is harshit",
  'time' : '7 July',
    'isonline' : 'false'
  },
    <String, dynamic>{
      'id': '1',
      'image': 'asset/images/u2.png',
      'name': 'Varun',
      'title':"my name is Varun",
      'time' : '8 July',
      'isonline' : 'true'
    },
    <String, dynamic>{
      'id': '2',
      'image': 'asset/images/u3.png',
      'name': 'Sunny',
      'title':"my name is sunny",
      'time' : '9 July',
      'isonline' : 'true'
    },
    <String, dynamic>{
      'id': '3',
      'image': 'asset/images/u4.png',
      'name': 'Jatin',
      'title':"my name is jatin",
      'time' : '10 July',
      'isonline' : 'false'
    },
  ];

  static final List<String> listproperty = [
    "For Sale:House & Apartments",
    "For Rent:House & Apartment",
    "Land & Plots",
    "For Rent:Shops & Office",
    "For Sale:Shops & Office",
    "PG & Guest Houses",
    "View All"
  ];
  static final List<String> listmobile = [
    "Mobile Phones",
    "Accessories",
    "Tablet",
    "View All",
  ];
  static final List<String> listjob = [
    "Data entry & Back office",
    "Sales & Marketing",
    "BPO & Telecaller",
    "Driver",
    "Office Assistant",
    "View All",
  ];

  static final List<String> listbike = [
    "Motorcycles",
    "Scooters",
    "Spare Parts",
    "Bicycles"
        "View All",
  ];
  static final List<String> listelectronic = [
    "TVs, Vedio-Audio",
    "Kitchen & Other Appliances",
    "Computers & laptop",
    "Cameras & Lenses",
    "Games & Entertainment",
    "Fridge",
  ];
  static final List<String> listcommercial = [
    "Commercial & Other Vehicles",
    "Spare Parts",
    "View all"
  ];
  static final List<String> listfurniture = [
    "Sofa & Dining",
    "Beds & Wardrobes",
    "Home Decor & Garden",
    "Kids Furnture",
    "Other Household Items",
    "View All",
  ];

  static List<Map<String, dynamic>> categorieslist = <Map<String, dynamic>>[
    <String, dynamic>{
      'id': '0',
      'image': 'asset/images/h2.jpeg',
      'name': 'LULUMALL NEAR 7CENT,3000SOFT 4BHK HOUSE',
      'title':"4 Bds-4 Ba-3000 ft2",
      'time' : '7 July',
      'price':'1,90,00,000',
      'location': 'EDAPALLY,KOCHI'
    },
    <String, dynamic>{
      'id': '1',
      'image': 'asset/images/h1.jpeg',
      'name': 'Semi furnished East facing 2 bhk appartment for sale/lease/rent',
      'title':"8 Bds-8 Ba-840 ft2",
      'time' : '8 July',
      'price':'39,00,000',
      'location': 'BANASHAKARI, BENGALURA'
    },
    <String, dynamic>{
      'id': '2',
      'image': 'asset/images/h3.jpeg',
      'name': 'Naktala Udayan marbled ready 2bhk at 33.95 Lacs only',
      'title':"2 Bds-2 Ba-790 ft2",
      'price':'33,95,000',
      'time' : '9 July',
      'location': 'NAKTALA, KOLKATA'

    },
    <String, dynamic>{
      'id': '3',
      'image': 'asset/images/h4.jpeg',
      'name': '3bhk flat only in 41 lacs on second floor',
      'title':"3 Bds-3 Ba-1800 ft2",
      'price':'41,00,000',
      'time' : '10 July',
      'location': 'PALM GARDEN, LUDHIANA'

    },
  ];




}