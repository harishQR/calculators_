import 'package:calculators/BMI.dart';
import 'package:calculators/GST.dart';
import 'package:calculators/arthcalc.dart';
import 'package:flutter/material.dart';

class calbot extends StatefulWidget {
  const calbot({super.key});

  @override
  State<calbot> createState() => calbotState();
}

class calbotState extends State<calbot> {
  @override
  int _indexs = 0;
  List pages =[
    Arthcalc(),
    bmis(),
    gst(),
  ];
  void tap(indexs){
    setState(() {
      _indexs = indexs;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_indexs],
 bottomNavigationBar: BottomNavigationBar(items: [
   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Arth"),
   BottomNavigationBarItem(icon: Icon(Icons.home),label: "BMI"),
   BottomNavigationBarItem(icon: Icon(Icons.home),label: "GST"),
 ],
 currentIndex: _indexs,
 onTap: tap,

 ),
    );
  }
}
