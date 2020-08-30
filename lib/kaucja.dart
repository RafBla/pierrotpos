import 'package:flutter/material.dart';

class bottlesReturn extends StatefulWidget {
  @override
  _bottlesReturnState createState() => _bottlesReturnState();
}

int kaucja = 0;

class _bottlesReturnState extends State<bottlesReturn> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 40.0,
      minWidth: 25.0,
      child: RaisedButton(
        onPressed: () {
          return showDialog(
              context: context,
              builder: (context) {
                return StatefulBuilder(
                  builder: (context, setState) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 75, top: 75),
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                        content: Column(
                          children: <Widget>[
                            Expanded(
                              child: Center(
                                child: Text(
                                  'Butelki (szt.)',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 25.0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  '$kaucja',
                                  style: TextStyle(
                                    fontSize: 75.0,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
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
                                            kaucja = kaucja + 1;
                                          });
                                        },
                                        onLongPress: () {
                                          setState(() {
                                            kaucja = kaucja + 10;
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
                                            kaucja = kaucja - 1;
                                          });
                                        },
                                        onLongPress: () {
                                          setState(() {
                                            kaucja = kaucja - 10;
                                          });
                                        },
                                        disabledColor: Colors.white,
                                        child: Icon(
                                          Icons.remove,
                                          size: 35.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Expanded(
                                child: ButtonTheme(
                                  height: 40.0,
                                  buttonColor: Colors.green[500],
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      print(kaucja);
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
                  },
                );
              }
          );
        },
        child: Text(
          'DOLICZ KAUCJE',
          style: TextStyle(
              fontSize: 15.0,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
