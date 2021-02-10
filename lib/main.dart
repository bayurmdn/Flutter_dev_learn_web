import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        leading: Icon(Icons.home),
        title: Text('Food Ordered'),
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Icon(Icons.archive),
              Text('Martabak goreng',
                  style: new TextStyle(fontWeight: FontWeight.bold))
            ]),
            Card(
              child: Column(
                children: <Widget>[
                  Image.network(
                      'https://1.bp.blogspot.com/-6OzT60Robq0/XucS_EtiqaI/AAAAAAABwqc/7-C6DGISigcuU-vxQqRRZhxWF4lN0cpUACK4BGAsYHg/s800/Martabak%2BTelur.jpg'),
                  Text('Dengan keju coklat yang mmenggugah selera')
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
