import 'package:flutter/material.dart';
import 'package:pierrotpos/styles.dart';

class ClientsList extends StatefulWidget {
  @override
  _ClientsListState createState() => _ClientsListState();
}

class _ClientsListState extends State<ClientsList> {

  List<String> clients = [
    'BB, Wyzwolenia 350',
    'BB, Okrzei 2/208',
    'CZDZ, Lipowska 109',
    'BRA, Miodowa 3',
    'GW, Sowia 12',
    'BB, Wyzwolenia 350',
    'BB, Okrzei 2/208',
    'CZDZ, Lipowska 109',
    'BRA, Miodowa 3',
    'GW, Sowia 12',
    'BB, Wyzwolenia 350',
    'BB, Okrzei 2/208',
    'CZDZ, Lipowska 109',
    'BRA, Miodowa 3',
    'GW, Sowia 12',
    'BB, Wyzwolenia 350',
    'BB, Okrzei 2/208',
    'CZDZ, Lipowska 109',
    'BRA, Miodowa 3',
    'GW, Sowia 12',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF013f51),
      appBar: AppBar(
        title: Text('Lista klientów'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: clients.length,
        itemBuilder: (BuildContext context, int index) {
          return RaisedButton(
            disabledColor: Colors.white,
            child: Text(
              '${clients[index]}',
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFF013f51),
              ),
            ),
          );
//          return Container(
//            margin: EdgeInsets.all(2),
//            child: Center(
//              child: ButtonTheme(
//                buttonColor: Colors.white,
//                child: RaisedButton(
//                  child: Text(
//                    '${clients[index]}',
//                    style: TextStyle(
//                      fontSize: 25,
//                      color: Colors.white,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          );
          },
      ),
    );
  }
}
