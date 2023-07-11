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

}