import 'package:first_app/pages/routeManage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    List<MaterialButton> buttons = [];
    List<String> textList = [];
    List<Widget> pageList = [];

    textList.add("路由管理");
    pageList.add(new RouteManage(title: "路由管理"));

    for (int i = 0; i < textList.length; i++) {
      buttons.add(newMaterialButton(textList[i], pageList[i]));
    }

    Scaffold scaffold = new Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        //滚动布局
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: buttons,
          ),
        ));

    return scaffold;
  }

  MaterialButton newMaterialButton(String text, Widget page) {
    var materialButton = MaterialButton(
      child: Text(text),
      color: Colors.green,
      textColor: Colors.white,
      onPressed: () {
        Navigator.push(context, CupertinoPageRoute(builder: (context) {
          return page;
        }));
      },
    );
    return materialButton;
  }
}
