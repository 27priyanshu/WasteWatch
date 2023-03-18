import 'package:flutter/material.dart';

class Location_Waste_collector extends StatefulWidget {
  const Location_Waste_collector({super.key});

  @override
  State<Location_Waste_collector> createState() =>
      _Location_Waste_collectorState();
}

class _Location_Waste_collectorState extends State<Location_Waste_collector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          title: Text(
            "Location's",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.green[50],
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  leading: const Icon(Icons.location_on),
                  trailing: const Text(
                    "10km",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text("Location $index"));
            }));
  }
}
