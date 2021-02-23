import 'package:flutter/material.dart';
import 'package:web_project/Popular.dart';
import 'package:web_project/Home.dart';
import 'package:web_project/News.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller =
        TabController(length: 3, vsync: this); //how many tab will build
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Foody'),
          backgroundColor: Colors.pink[800],
          bottom: TabBar(
            controller: controller,
            tabs: <Tab>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.note),
              ),
              Tab(
                icon: Icon(Icons.poll),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[Home(), News(), Popular()],
        ),
      ),
    );
  }
}
