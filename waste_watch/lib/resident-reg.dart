import 'package:flutter/material.dart';
import 'package:waste_watch/location_waste_c.dart';

class SignIn1 extends StatefulWidget {
  const SignIn1({super.key});

  @override
  State<SignIn1> createState() => _SignIn1State();
}

final _formKey = GlobalKey<FormState>();

class _SignIn1State extends State<SignIn1> {
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
                "Welcome to WasteWatch again!!!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                  "/Users/shubhsardana/Desktop/WasteWatch/waste_watch/images/loginImage.png"),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    // Add TextFormFields and ElevatedButton here.
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 16.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your email address',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email address';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 16.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your password',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Location_Waste_collector()),
                        );
                      },
                      child: Text('Sign In'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
