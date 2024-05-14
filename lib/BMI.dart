
import 'package:flutter/material.dart';
class bmis extends StatefulWidget {
  const bmis({super.key});
  @override
  State<bmis> createState() => _bmisState();
}
class _bmisState extends State<bmis> {
  final height = TextEditingController();
  final weight = TextEditingController();
  String ResText = "";
  double Resnum = 0;
  void bmivalue (){
    int a = int.parse(weight.text);
    double b = (double.parse(height.text) / 100);
    setState(() {
      Resnum = a / (b*b);
      // Resnum = double.parse(weight.text) /
      //    (double.parse(height.text) * double.parse(height.text))*10000;
      if (Resnum < 18.5) {
        ResText = "Underweight";
      } else if (Resnum >= 18.5 && Resnum <= 24.9) {
        ResText = "Normal weight";
      } else if (Resnum >= 24.9 && Resnum <= 29.9) {
        ResText = "Overweight";
      } else {
        ResText  = "Obesity";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          actions: [
            Icon(Icons.menu,color: Colors.white,),
          ],
        ),
       body: Container(
         color: Colors.black,
         child: Column(
           children: [
             SizedBox(height: 200,),
             Center(
               child: Container(
                 width: 300,
                 child: TextFormField(
                   controller: height,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     hintText: ""
                         "Give height",
                     hintStyle: TextStyle(color: Colors.white),
                     border: OutlineInputBorder(
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white),
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(height: 50,),
             Center(
               child: Container(
                 width: 300,
                 child: TextFormField(
                   controller: weight,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     hintText: "Give Weight",
                     hintStyle: TextStyle(color: Colors.white),
                     border: OutlineInputBorder(
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white),
                     ),
                   ),
                 ),
               ),
             ),
            SizedBox(height: 50,),
          ElevatedButton(onPressed: (){
            bmivalue();
            if(ResText == "Underweight"){
              Colors.red;
            }else if (ResText == "Normal Weight"){
              Colors.green;
            }else if (ResText == "Overweight"){
               Colors.orange;
            }else if (ResText == "Obesity"){
              Colors.red;
            };
          }, child: Text("Click here",style: TextStyle(fontWeight: FontWeight.bold),)),
             SizedBox(height: 40,),
             Text("BMI Value:$Resnum"),
             SizedBox(height: 20,),
             Text("RESULT:$ResText"),
           ],
         ),
       ),
      ),
    );
  }
}
