import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final style= new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks', style: style, ),
            Text('0', style: style, ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Hola Mundo!");
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}