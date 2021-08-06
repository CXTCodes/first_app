import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteManage extends StatelessWidget {

  String title;

  RouteManage({required this.title});

  @override
  Widget build(BuildContext context) {

    Scaffold scaffold = new Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [],
        ),
      ),
    );

    return scaffold;
  }
}
