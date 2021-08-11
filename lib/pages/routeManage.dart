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

            //TODO 一个简单的示例
            MaterialButton(
                child: Text("一个简单的示例"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Demo(title: "新路由", text: "这是一个新路由");
                  }));
                }),

            //TODO 路由传值
            MaterialButton(
                child: Text("路由传值"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () async {

                  var backValue = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return TipRoute(text: "text1");
                  }));

                  print(backValue);
                }),

            //TODO 命名路由
            MaterialButton(
                child: Text("命名路由"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {})

          ],
        ),
      ),
    );

    return scaffold;
  }
}

//TODO 路由传值
class TipRoute extends StatelessWidget {
  final String text;

  TipRoute({
    Key? key,
    required this.text, // 接收一个text参数
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold(
      appBar: AppBar(
        title: Text("提示"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: [
              Text(text),
              MaterialButton(
                  child: Text("返回"),
                  color: Colors.grey[350],
                  onPressed: () {
                    Navigator.pop(context, "返回值");
                  })
            ],
          ),
        ),
      ),
    );

    return scaffold;
  }
}

//TODO 一个简单示例
class Demo extends StatelessWidget {
  String title;
  String text;

  Demo({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(text),
      ),
    );

    return scaffold;
  }
}
