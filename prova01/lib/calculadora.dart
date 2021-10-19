import 'package:flutter/material.dart';
import 'package:prova01/calculo.dart';
import 'package:prova01/teclado.dart';
import 'package:prova01/cabecalho.dart';
import 'display.dart';
import 'teclado.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({ Key? key }) : super(key: key);

  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Calculo calculo = Calculo();

  cliqueBotao(String clicou){
    setState(() {
      calculo.clique(clicou);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Cabecalho(),
          Display(calculo.valor),
          Teclado(cliqueBotao),
        ],
     
      )
    );
  }
}