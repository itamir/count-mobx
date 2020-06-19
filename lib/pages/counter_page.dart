
import 'package:countmobx/store/counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterPage extends StatelessWidget {

  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Mobx'),
      ) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador', style: TextStyle(fontSize: 30.0)),
            Observer(
              builder: (_) => Text('${counter.count}', style: TextStyle(fontSize: 45.0)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton.icon(onPressed: counter.add, icon: Icon(Icons.add), label: Text('Mais')),
                FlatButton.icon(onPressed: counter.remove, icon: Icon(Icons.remove), label: Text('Menos'))
              ],
            )
            
            
          ],
        ),
      ),


    );
  }
}
