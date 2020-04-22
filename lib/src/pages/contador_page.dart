import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  
  @override
  createState(){
    return ContadorPageState();
  }
}

class ContadorPageState extends State{

  final _estiloTexto= new TextStyle(fontSize: 25);
  int _contador= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks: ', style: _estiloTexto,
            ),
            Text('$_contador', style: _estiloTexto,
            ),
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
        SizedBox( width: 30.0, ),
        //Reset
        myFAB( icon: Icon(Icons.exposure_zero), value: 0 ),
        Expanded(child: SizedBox( )),
        //Sustract
        myFAB( icon: Icon(Icons.remove), value: _contador - 1),
        SizedBox( width: 5.0, ),
        //Add
        myFAB(icon: Icon(Icons.add), value: _contador + 1),
        SizedBox( width: 5.0,)
      ],
    );
  }

  FloatingActionButton myFAB({Icon icon, int value}){
    return FloatingActionButton(onPressed: () => setState(() => _contador= value),
          child: icon,
        );
  } 
}