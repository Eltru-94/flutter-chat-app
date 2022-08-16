import 'package:flutter/material.dart';

class ButtonAzul extends StatelessWidget {
  final String text;
  final VoidCallback onPresseded;

  const ButtonAzul({super.key, required this.text, required this.onPresseded});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: Colors.blue,
      shape: StadiumBorder(),
      onPressed: this.onPresseded,
      child: Container(
        width: double.infinity,
        child: Center(
            child: Text(this.text,
                style: TextStyle(color: Colors.white, fontSize: 17))),
      ),
    );
  }
}
