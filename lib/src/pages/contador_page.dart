
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ContadorState();
}

class _ContadorState extends State<ContadorPage>{
  
  final style= new TextStyle(fontSize: 25);
  int _contador= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Un título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks', style: style, ),
            Text('$_contador', style: style, ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 15.0, ),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset, ),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _decrementa, ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _incrementa, ),
        SizedBox( width: 5.0, ),
      ],
    );
  }

  void _incrementa() => setState( () => _contador++ );

  void _decrementa() => setState( () => _contador-- );

  void _reset() => setState( () => _contador= 0 );
}