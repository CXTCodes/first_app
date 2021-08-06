import 'package:first_app/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialApp app = new MaterialApp(
      title: 'Flutter课堂',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(title: 'Flutter课堂'),
      debugShowCheckedModeBanner: false,
    );

    return app;
  }
}
