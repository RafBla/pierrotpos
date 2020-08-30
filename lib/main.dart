import 'package:flutter/material.dart';
import 'package:pierrotpos/clients.dart';
import 'package:pierrotpos/styles.dart';
import 'package:pierrotpos/kaucja.dart';
import 'package:pierrotpos/summary.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Color(0xFF013f51),
      ),
      home: MyHomePage(title: 'Pierrot sales app'),
    );
  }
}
var payment;
var client = clientInfo;

TextEditingController clientInfo = TextEditingController();
TextEditingController kaucjaBottles = TextEditingController();

double woda = 0;
double napoje = 0;

double sumaWoda = woda * 19;
double sumaNapoje = napoje * 21;
double sumaKaucja = kaucja * 0.5;
var sumaAll = sumaWoda + sumaNapoje + sumaKaucja;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF013f51), Colors.red])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 5.0,
                    ),
                    PaymentMethodButton(
                      textLabel: 'Paragon',
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    PaymentMethodButton(
                      textLabel: 'Faktura Gotówka',
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    PaymentMethodButton(
                      textLabel: 'Przelew/karta',
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: -1,
              child: ButtonTheme(
                height: 30.0,
                minWidth: 150.0,
                buttonColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ClientsList();
                    },
                    ),
                    );
                  },
                  child: Container(
                    width: 300.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0,top: 1.0),
                          child: Text(
                            'Klient:',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,top: 1.0),
                          child: Container(
                            width: 200.0,
                            child: TextField(
                              controller: clientInfo,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Miasto, ulica, numer...'
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 45.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Woda',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          height: 60.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              '$woda',
                              style: TextStyle(
                                fontSize: 50.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 55.0,
                          width: 150.0,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: ButtonTheme(
                                  height: 45.0,
                                  minWidth: 10.0,
                                  buttonColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                  child: RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        woda = woda + 1;
                                      });
                                    },
                                    onLongPress: () {
                                      setState(() {
                                        woda = woda + 0.5;
                                      });
                                    },
                                    disabledColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      size: 35.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Expanded(
                                child: ButtonTheme(
                                  height: 45.0,
                                  minWidth: 10.0,
                                  buttonColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                  child: RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        woda = woda - 1;
                                      });
                                    },
                                    onLongPress: () {
                                      setState(() {
                                        woda = woda - 0.5;
                                      });
                                    },
                                    disabledColor: Colors.white,
                                    child: Icon(
                                      Icons.remove,
                                      size: 35.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 45.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Napoje',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          height: 60.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              '$napoje',
                              style: TextStyle(
                                fontSize: 50.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 55.0,
                          width: 150.0,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: ButtonTheme(
                                  height: 45.0,
                                  minWidth: 10.0,
                                  buttonColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                  child: RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        napoje = napoje + 1;
                                      });
                                    },
                                    onLongPress: () {
                                      setState(() {
                                        napoje = napoje + 0.5;
                                      });
                                    },
                                    child: Icon(
                                      Icons.add,
                                      size: 35.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Expanded(
                                child: ButtonTheme(
                                  height: 45.0,
                                  minWidth: 25.0,
                                  buttonColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                  child: RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        napoje = napoje - 1;
                                      });
                                    },
                                    onLongPress:  () {
                                      setState(() {
                                        napoje = napoje - 0.5;
                                      });
                                    },
                                    disabledColor: Colors.white,
                                    child: Icon(
                                      Icons.remove,
                                      size: 35.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: -1,
              child: bottlesReturn(),
            ),
            SizedBox(
              width: 5.0,
            ),
            Expanded(
              flex: -1,
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0,top: 10.0, bottom: 30.0),
                child: ButtonTheme(
                  height: 40.0,
                  buttonColor: Colors.green[500],
                  child: RaisedButton(
                    onPressed: () {
                      return showDialog(
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                              builder: (context, setState) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 90, top: 90),
                                  child: summaryBill(),
                                );
                              },
                            );
                          },
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                      child: Text(
                        'Zatwierdź',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

