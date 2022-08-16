import 'package:app_chat/widgets/button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_input.dart';
import '../widgets/label.dart';
import '../widgets/logo.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                  //height: MediaQuery.of(context).size.height * 0.9,
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Logo(),
                  _Form(),
                  Labels(),
                  Text(
                    'Términos y condiciones de uso.!',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              )))),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(children: <Widget>[
          customInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          customInput(
            icon: Icons.lock_outline,
            placeholder: 'password',
            textController: passCtrl,
            isPassword: true,
          ),
          ButtonAzul(
            text: "Ingresar",
            onPresseded: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          )
        ]));
  }
}
