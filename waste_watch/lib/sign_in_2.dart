import 'dart:ffi';

import 'package:flutter/material.dart';

class SignIn2 extends StatefulWidget {
  const SignIn2({super.key});

  @override
  State<SignIn2> createState() => _SignIn2State();
}

final _formKey = GlobalKey<FormState>();

class _SignIn2State extends State<SignIn2> {
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
                "Welcome to WasteWatch again!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                  "C:/Users/PRIYANSHU SINGH/WasteWatch/waste_watch/images/loginImage.png"),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    // Add TextFormFields and ElevatedButton here.
                    TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email address';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
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
