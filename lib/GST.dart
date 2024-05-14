import 'package:flutter/material.dart';

class gst extends StatefulWidget {
  const gst({super.key});
  @override
  State<gst> createState() => gstState();
}

class gstState extends State<gst> {
  final Price = TextEditingController();
  final GSTvalue = TextEditingController();
  double gstpercentage = 0;
  double igst = 0;
  double sgst = 0;
  double cgst = 0;
  double Totalamount = 0;
  double Actualamount = 0;
  void Calculated() {
    igst = (Actualamount * gstpercentage) / 100;
    sgst = igst / 2;
    cgst = igst / 2;
    Totalamount = Actualamount + igst;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 600,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 300,
                    child: TextFormField(
                      controller: Price,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Price",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          Actualamount = double.parse(value) ?? 0.0;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    width: 300,
                    child: TextFormField(
                      controller: GSTvalue,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Give GSTvalue",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          gstpercentage = double.parse(value) ?? 0.0;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    Calculated();
                  });
                }, child: Text("click here",style: TextStyle(color: Colors.purple),)),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(children: [
                    ElevatedButton(
                        onPressed: () {
                          // igst = (Actualamount * gstpercentage) / 100;
                          // sgst = igst / 2;
                          // cgst = igst / 2;
                          // Totalamount = Actualamount + igst;
                          setState(() {
                            Calculated();
                          });
          
                        },
                        child: Text(
                          "IGST",
                          style: TextStyle(color: Colors.purple),
                        )),
                    SizedBox(
                      width: 60,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            igst = (Actualamount * gstpercentage) /
                                (100 + gstpercentage);
                            Totalamount = Actualamount - igst;
                          });
                        },
                        child: Text(
                          "EGST",
                          style: TextStyle(color: Colors.purple),
                        )),
                    SizedBox(
                      height: 50,
                    ),
                  ]),
                ),
                Column(
crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                Text("Gst percentage:$gstpercentage"),
                SizedBox(
                  height: 5,
                ),
                Text("IGST:$igst"),
                SizedBox(
                  height: 5,
                ),
                Text("SGST:$sgst"),
                SizedBox(
                  height: 5,
                ),
                Text("CGST:$cgst"),
                SizedBox(
                  height: 5,
                ),
                Text("Total amount:$Totalamount"),
                SizedBox(
                  height: 5,
                ),
                Text("Actual amount:$Actualamount"),]),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
