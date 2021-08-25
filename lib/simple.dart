import 'dart:html';

import 'package:flutter/material.dart';

class SimpleIntrest extends StatefulWidget {
  const SimpleIntrest({Key? key}) : super(key: key);

  @override
  _SimpleIntrestState createState() => _SimpleIntrestState();
}

class _SimpleIntrestState extends State<SimpleIntrest> {
  late String p = "", t = "", r = "", result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Simple Intrest Calculator'),
          centerTitle: true,
          backgroundColor: Colors.indigo[700],
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: ListView(
            children: [
              SizedBox(
                height: 22,
              ),

              //For principal
              TextField(
                onChanged: (val) {
                  p = val;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Principal',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(35.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(35.0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //For Time
              TextField(
                onChanged: (val) {
                  t = val;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Time',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(35.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(35.0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //For Rate
              TextField(
                onChanged: (val) {
                  r = val;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Rate',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(35.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(35.0)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //for button
              MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.green),
                  ),
                  elevation: 5.0,
                  height: 50,
                  minWidth: 0,
                  color: Colors.indigo[700],
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      result = (double.parse(p) *
                              double.parse(t) *
                              double.parse(r) /
                              100)
                          .toString();
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Simple Intrest is : Rs.$result',
                  style: TextStyle(
                    color: Colors.indigo[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

//for footer
              SizedBox(
                height: 180,
              ),
              Center(
                child: Text(
                  'Developed By : Laxman Magarati',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
