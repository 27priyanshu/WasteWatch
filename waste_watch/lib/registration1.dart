import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:waste_watch/sign_in_2.dart';

class registeration extends StatefulWidget {
  registeration({Key? key}) : super(key: key);

  @override
  State<registeration> createState() => _registerationState();
}

final _formKey = GlobalKey<FormState>();

class _registerationState extends State<registeration> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to WasteWatch!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
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
                                return 'Please enter full name';
                              }
                              return null;
                            },
                          ),
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
                          TextFormField(
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter contact no.';
                              }
                              return null;
                            },
                          ),
                          Column(
                            children: [Text("Are You?")],
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignIn2()));
                                  },
                                  child: Text("Waste Collector")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignIn2()));
                                  },
                                  child: Text("Resident"))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
