import 'package:flutter/material.dart';
import 'package:waste_watch/home_collect.dart';

class reporting extends StatefulWidget {
  reporting({Key? key}) : super(key: key);

  @override
  State<reporting> createState() => _reportingState();
}

class _reportingState extends State<reporting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Report where you want the garbage to be picked up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                  "/Users/shubhsardana/Desktop/WasteWatch/waste_watch/images/dummy_map.png"),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home_collection()),
                  );
                }),
                child: Text("Home"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              ),
              ElevatedButton(
                onPressed: (() {}),
                child: Text("From other location"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
