import 'package:flutter/material.dart';
import 'package:pierrotpos/main.dart';

// Styl podpisów
const kSmallButtonTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF013f55),
);

const kPressedButtonTextStyle = TextStyle(
  fontSize: 25.0,
  color: Color(0xFF013f55),
);

// Ikony wyboru metody płatności u samej góry.
class PaymentMethodButton extends StatefulWidget {
  PaymentMethodButton({this.textLabel});

  final String textLabel;

  @override
  _PaymentMethodButtonState createState() => _PaymentMethodButtonState();
}

class _PaymentMethodButtonState extends State<PaymentMethodButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ButtonTheme(
        buttonColor: Colors.white,
        minWidth: 100.0,
        height: 70.0,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: EdgeInsets.all(8.0),
          onPressed: () {
            payment = widget.textLabel;
            setState(() {
              Text(
                widget.textLabel,
                style: kPressedButtonTextStyle,
              );
            });
            print(payment);
          },
          child: Text(
            widget.textLabel,
            style: kSmallButtonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
