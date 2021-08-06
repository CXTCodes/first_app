import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteManage extends StatelessWidget {
  String title;

  RouteManage({required this.title});

  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold(
      appBar: AppBar(
        title: Text(title),
        brightness: Brightness.dark,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            MaterialButton(
                child: Text("一个简单的示例"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Demo();
                  }));
                }),

            MaterialButton(
                child: Text("一个简单的示例"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Demo();
                  }));
                }),
          ],
        ),
      ),
    );

    return scaffold;
  }
}

//MaterialPageRoute

//一个简单示例
class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold(
      appBar: AppBar(
        title: Text("新路由"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("这是一个新路由"),
      ),
    );

    return scaffold;
  }
}
