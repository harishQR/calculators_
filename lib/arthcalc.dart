
import 'package:flutter/material.dart';
class Arthcalc extends StatefulWidget {
  const Arthcalc({super.key});

  @override
  State<Arthcalc> createState() => ArthcalcState();
}

class ArthcalcState extends State<Arthcalc> {
  TextEditingController controller = TextEditingController();

  String value1 = '';
  String value2 = '';
  String operator = '';
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.more_vert,color: Colors.white,),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextFormField(
            controller: controller,
            textAlign:TextAlign.end,
            readOnly: true,
            style: TextStyle(color: Colors.white,fontSize: 30),
            decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                       ),
              focusedBorder: OutlineInputBorder(
              ),
            ),
          ),
          Container(
            height: 378.9,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        value1 ='';
                        value2 = '';
                        controller.text = '';
                        click = false;
                      }, child: Text("C",style: TextStyle(color: Colors.cyan,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        click = true;
                        controller.text = "%";
                        operator = "%";
                      }, child: Text("%",style: TextStyle(color: Colors.cyan,fontSize: 25,fontWeight: FontWeight.bold),),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.cancel,),iconSize: 25,color: Colors.cyan,),
                      TextButton(onPressed: (){
                        click = true;
                        controller.text = "/";
                        operator = "/";
                      }, child: Text("/",style: TextStyle(color: Colors.cyan,fontSize: 25,fontWeight: FontWeight.bold),),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        if(click == false ){
                          value2 += '7';
                          controller.text = value2;
                        }
                        else{
                          value1 += '7';
                          controller.text = value1;
                        }
                      }, child: Text("7",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        if(click == false){
                          value2 += '8';
                          controller.text = value2;
                        }
                        else{
                          value1 += '8';
                          controller.text = value1;
                        }
                      }, child: Text("8",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        if(click == false){
                          value2 += '9';
                          controller.text = value2;
                        }
                        else{
                          value1 += '9';
                          controller.text = value1;
                        }
                      }, child: Text("9",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                    click = true;
                     controller.text = '*';
                     operator = '*';
                      }, child: Text("*",style: TextStyle(color: Colors.cyan,fontSize: 25,fontWeight: FontWeight.bold),),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        if(click == false){
                          value2 += '4';
                          controller.text = value2;
                        }
                        else{
                          value1 += '4';
                          controller.text = value1;
                        }
                      }, child: Text("4",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        if(click == false){
                          value2 += '5';
                          controller.text = value2;
                        }
                        else{
                          value1 += '5';
                          controller.text = value1;
                        }
                      }, child: Text("5",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        if(click == false){
                          value2 += '6';
                          controller.text = value2;
                        }
                        else{
                          value1 += '6';
                          controller.text = value1;
                        }
                      }, child: Text("6",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        click = true;
                        controller.text = '-';
                        operator = '-';
                      }, child: Text("-",style: TextStyle(color: Colors.cyan,fontSize: 25,fontWeight: FontWeight.bold),),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        if(click==false){
                          value2 += '1';
                          controller.text = value2;
                        }
                        else{
                          value1 += '1';
                          controller.text = value1;
                        }
                      }, child: Text("1",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        if(click==false){

                          value2 += '2';
                          controller.text = value2;
                        }
                        else{
                          value1 += '2';
                          controller.text = value1;
                        }
                      }, child: Text("2",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        if(click == false){
                          value2 += '3';
                          controller.text = value2;
                        }
                        else {
                          value1 += '3';
                          controller.text = value1;
                        };
                      }, child: Text("3",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        click = true;
                        operator = '+';
                        controller.text = operator;
                      }, child: Text("+",style: TextStyle(color: Colors.cyan,fontSize: 25,fontWeight: FontWeight.bold),),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                            double value = double.parse(controller.text);
                            double result= value*value;
                            controller.text=result.toString();
                      }, child: Text("x²",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
              TextButton(onPressed: (){
                        if(click == false){
                          value2 += '0';
                          controller.text =value2;
                        }
                        else {
                          value1 += '0';
                          controller.text = value1;
                        };
                      }, child: Text("0",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        if(click == false){
                          value2 += '.';
                          controller.text = value2;
                        }else {
                          value1 += '.';
                          controller.text = value1;
                        }
                      }, child: Text(".",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
                      TextButton(onPressed: (){
                        double a = double.parse(value1);
                        double b = double.parse(value2);
                        double c = 0;
                        if(operator == '+'){
                          c=a+b;
                        } else if (operator == '-'){
                          c=b-a;
                        } else if (operator == '*'){
                          c=a*b;
                        } else if (operator == '/'){
                          c=b/a;
                        } else if (operator == '%'){
                          c = a*b/100;
                        }
                        click = true;
                          value1 = controller.text;
                          controller.text = c.toString();
                          value2 = '';
                      } , child: Text("=",style: TextStyle(color: Colors.cyan,fontSize: 25,fontWeight: FontWeight.bold),),),
                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}


