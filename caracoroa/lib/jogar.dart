import 'package:flutter/material.dart';

import 'home.dart';
class Jogar extends StatefulWidget {
  String valor;
  Jogar(this.valor);



  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  @override
  Widget build(BuildContext context) {
    var caminhoImage;
    if(widget.valor == "cara"){
     caminhoImage = "img/moeda_cara.png";
      } else {
        caminhoImage = "img/moeda_coroa.png";
      }
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImage),
            GestureDetector(
              child: Image.asset("img/botao_voltar.png"),
              onTap: (){
                Navigator.pop(context); // para voltar
              },
            )          
        ]),
      ),
      
    );
} }