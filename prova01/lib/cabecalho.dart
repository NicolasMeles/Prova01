import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  late final String text;
  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text = 'Prova de ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  textBaseline: null,
                )
                
              ),
            ),
          ],
        ),
    
    ));
  }
}