import 'dart:io';


import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';

import 'package:btp/mainpage.dart';



class FormScreen extends StatefulWidget {
  final String cookie;
  final String doc_name;
  FormScreen(this.cookie, this.doc_name);
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  late String _name;
  late String _namem;
  late String _namel;
  late String _rel;
  late String _ipd;
  late String _rname;
  late String _phoneNumber;
  late String _rno;
  

  // Dio dio = new Dio();

  Future postData() async {
    final String Url =
        '';

    dynamic data = {
      "IPDNumber": int.parse(_ipd),
      "FirstName": _name,
      "MiddleName": _namem,
      "LastName": _namel,
      "PhoneNumber": _phoneNumber,
      "RelativeName": _rname,
      "RelativePhoneNumber": _rno,
      
    };

 
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'First Name',
          suffixText: '*',
          suffixStyle: TextStyle(
            fontSize: 25,
            color: Colors.red,
          )),
      
    );
  }

  Widget _buildNamem() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Middle Name'),
     
    );
  }

  Widget _buildNamel() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Last Name',
          suffixText: '*',
          suffixStyle: TextStyle(
            fontSize: 25,
            color: Colors.red,
          )),
     
    );
  }

  Widget _builRelname() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Relative's Name",
          suffixText: '*',
          suffixStyle: TextStyle(
            fontSize: 25,
            color: Colors.red,
          )),
      keyboardType: TextInputType.name,
      
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Phone number',
          suffixText: '*',
          suffixStyle: TextStyle(
            fontSize: 25,
            color: Colors.red,
          )),
      maxLength: 10,
      keyboardType: TextInputType.phone,
    
    );
  }

  Widget _buildRelphNo() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Relative's phone number",
          suffixText: '*',
          suffixStyle: TextStyle(
            fontSize: 25,
            color: Colors.red,
          )),
      maxLength: 10,
      keyboardType: TextInputType.phone,
     
    );
  }

  Widget _buildRelre() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Relationship with relative'),
   
    );
  }

  Widget _wardID() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter subject',
      ),
     
    );
  }

  Widget _buildipd() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Enter Roll Number'),
   
    );
  }
  String desig="choose subject";
  List<String> des = [
    "DAA",
    "OS",
    "DBMS",
    "CN",
  ];

  Widget _desig() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DropDownField(
            onValueChanged: (dynamic value) {
              desig = value;
            },
            value: desig,
            required: true,
            strict: true,
        
            items: des,
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.blueGrey,
          title: Text("LNMIIT attendance app"),
          leading: BackButton(
        
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => dashb(widget.cookie, widget.doc_name),
                ),
              );
            },
          )),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildipd(),
                _buildName(),
                _buildNamem(),
                _buildNamel(),
      
                _wardID(),
                
                SizedBox(height: 30),
                _desig(),
                 SizedBox(height: 50),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () async {
           
                      showAlertDialog(context);
                    

                    print(_name);
                    print(_namem);
                    print(_namel);
                    print(_ipd);
                    print(_phoneNumber);
                    print(_rname);
                    print(_rno);
                    print(_rel);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "       Details Submitted",
      style: TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
    content: Icon(Icons.check_circle_outline),
    actions: [],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
