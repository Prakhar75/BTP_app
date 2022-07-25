import 'dart:collection';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:btp/mainpage.dart';

import 'dart:convert';


class LoginScreen extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<LoginScreen> {
  
  TextEditingController passController = new TextEditingController();
  

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/doc.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black87, BlendMode.darken),
        )),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Container(
      height: 100.0,
      width: 80.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/lnmiit.png'),
          fit: BoxFit.fill,
        ),
      
      ),
    ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text(
                'ATTENDANCE APP',
                style: TextStyle(
                  fontSize: 30.0,
                  // fontFamily: 'Lobster',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Text(
                'WELCOME',
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 15.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              
              Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Form(
                    child: Theme(
                      data: ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal,
                      ),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            TextFormField(
                              controller: passController,
                              decoration: InputDecoration(
                                labelText: "Enter Your e-mail",
                          
                              ),
                              
                              keyboardType: TextInputType.emailAddress,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              MaterialButton(
                color: Colors.teal,
                textColor: Colors.white,
                child: Text('Enter'),
                onPressed: () async {
      
                  if ((passController.text).length <10) {
                    print('object is not correct email format................');
                
                  } else {
                 
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              dashb("null", "Prakhar"),
                        ),
                      );
           
                  }
                },
                splashColor: Colors.tealAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // showAlertDialog(BuildContext context) {
  //   // set up the AlertDialog
  //   if (status == "success") {
  //     AlertDialog alert = AlertDialog(
  //       title: Text(
  //         "Verify OTP",
  //         style: TextStyle(
  //           color: Colors.red,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       content: Icon(Icons.check_circle_outline),
  //       actions: [],
  //     );

  //     // show the dialog
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return alert;
  //       },
  //     );
  //   } else {
  //     AlertDialog alert = AlertDialog(
  //       title: Text(
  //         "Not a Registered Number",
  //         style: TextStyle(
  //           color: Colors.red,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       content: Icon(Icons.check_circle_outline),
  //       actions: [],
  //     );

  //     // show the dialog
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return alert;
  //       },
  //     );
  //   }
  // }
}
