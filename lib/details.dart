import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'subjects.dart';

class det extends StatefulWidget {
  det();
  @override
   State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<det> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[900],
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
              automaticallyImplyLeading: true,
              backgroundColor: Colors.blueGrey,
              title: Text("LNMIIT attendance App"),
              leading: BackButton(
                //icon: Icon(Icons.Back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => cards("", "Prakhar"),
                    ),
                  );
                },
              )),
         body: profileView("Prakhar")      
        ));
  }

  Widget profileView(String cookie) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: <Color>[
            
                            Color(0xffe16b5c),
                            Color(0xfff39060),
                          ])),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
                        child: Container(
                          height: 45,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child: Text(
                                "Prakhar" + " " + "Sharma",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border:
                                  Border.all(width: 1.0, color: Colors.white)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
                        child: Container(
                          height: 45,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                              child: Text(
                                "19ucc106",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  width: 1.0, color: Colors.white70)),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.blueGrey[500],
                    ),
                    child: Column(
                      children: <Widget>[
                        ExpansionTile(
                          title: Text(
                            'DBMS',
                            style: TextStyle(color: Colors.white),
                          ),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 3, 10, 4),
                              child: Container(
                                height: 45,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                    child: Text(
                                      'Present days              56',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 3, 10, 4),
                              child: Container(
                                height: 45,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                    child: Text(
                                      'Absent days               14',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 3, 10, 4),
                              child: Container(
                                height: 45,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                    child: Text(
                                      'Leaves                          2',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 3, 10, 4),
                              child: Container(
                                height: 45,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                    child: Text(
                                      'holidays                       6',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 3, 10, 4),
                              child: Container(
                                height: 45,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 5, 0, 5),
                                    child: Text(
                                      'Total                           78',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
