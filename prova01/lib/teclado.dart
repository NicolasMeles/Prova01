import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Teclado extends StatelessWidget {
  
  final void Function(String) retorna;

  Teclado(this.retorna);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: <Widget>[
          LinhaBotao([
            Botao(
              text: '7', retorna: retorna),
            Botao(
              text: '8', retorna: retorna),
            Botao(
              text: '9', retorna: retorna),
            Botao(
              text: '+', retorna: retorna),
            Botao(
              text: '/', retorna: retorna),
            

          ]),

          LinhaBotao([
            Botao(
              text: '4', retorna: retorna),
            Botao(
              text: '5', retorna: retorna),
            Botao(
              text: '6', retorna: retorna),
            Botao(
              text: '-', retorna: retorna),
            Botao(
              text: '.', retorna: retorna),

          ]),

          LinhaBotao([
            Botao(
              text: '1', retorna: retorna),
            Botao(
              text: '2', retorna: retorna),
            Botao(
              text: '3', retorna: retorna),
            Botao(
              text: '*', retorna: retorna),
            Botao(
              text: '=', retorna: retorna),

          ]),

          LinhaBotao([
            Botao(
              text: '0', retorna: retorna),
            Botao(
              text: 'Limpar', retorna: retorna),
            

          ]),
        ],
      ),
    );
  }
}

class Botao extends StatelessWidget{
  final String text;
  final void Function(String) retorna;

  Botao({
    required this.text,
    required this.retorna,
  });

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
              primary: Colors.black
            ),
        child: Text(text),
        onPressed: () => {retorna(text)}, 
        
      ),
    );
  }
}

class LinhaBotao extends StatelessWidget {
  final List<Botao> botoes;

  LinhaBotao(this.botoes);

  @override
  Widget build(BuildContext context) {
    return Expanded( child: 
      Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: botoes,
    ),
    );
  }
}