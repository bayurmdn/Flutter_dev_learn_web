import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Icon(Icons.archive),
              Text('Berita terbaru',
                  style: new TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Card(
            child: Column(
              children: <Widget>[
                Image.network(
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.jpnn.com%2Fnews%2Fjelang-hari-ibu-ratusan-anak-ekspresikan-cinta-pada-ibu-lewat-gambar-dan-lagu&psig=AOvVaw1MQGmY0wQTbPfcZI0dpEpx&ust=1613312712132000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJC4rquI5-4CFQAAAAAdAAAAABAD'),
                Text('pohon yang telah hidup abadi')
              ],
            ),
          )
        ],
      ),
    );
  }
}
