import 'package:flutter/material.dart';

import 'Resultado.dart';

class Jogar extends StatefulWidget {

  String? valor;
  Resultado({this.valor});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  
  void _exibirResultado(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Resultado())
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),

      ),
    );
  }
}
