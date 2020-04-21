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
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _contador++),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}