import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String Titulo;
  final String SubTitulo;
  final String Ruta;

  const Labels(
      {super.key,
      required this.Titulo,
      required this.Ruta,
      required this.SubTitulo});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Text(
          this.Titulo,
          style: TextStyle(
              color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          child: Text(this.SubTitulo,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          onTap: () {
            Navigator.pushReplacementNamed(context, this.Ruta);
          },
        )
      ]),
    );
  }
}
