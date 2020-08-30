import 'package:flutter/material.dart';
import 'package:pierrotpos/main.dart';
import 'package:pierrotpos/kaucja.dart';

class summaryBill extends StatefulWidget {
  @override
  _summaryBillState createState() => _summaryBillState();
}

class _summaryBillState extends State<summaryBill> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      content: Container(
        width: double.maxFinite,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Płatności: $payment'),
                  ),
//                ListTile(
  //                leading: Icon(Icons.account_circle),
  //                title: Text('Klient: $clientInfo'),
//                ),
                  ListTile(
                    leading: Icon(Icons.add_shopping_cart),
                    title: Text('Kaucja: $kaucja butelek'),
                  ),
                  ListTile(
                    leading: Icon(Icons.attach_money),
                    title: Text('Suma: $sumaAll zł'),
                  ),
                ],
              ),
              flex: 2,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ButtonTheme(
                      height: 15,
                      buttonColor: Colors.green[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() {
                            woda = 0;
                            napoje = 0;
                            kaucja = 0;
                            sumaAll = 0;
                            clientInfo.clear();
                          });
                          print(woda);
                          print(napoje);
                        },
                        child: Center(
                          child: Icon(
                            Icons.check_circle,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: ButtonTheme(
                      height: 15,
                      buttonColor: Colors.red[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Icon(
                            Icons.edit,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
