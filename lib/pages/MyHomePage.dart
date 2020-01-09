import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: GestureDetector( 
          onPanStart: (details) {
              print("onPanStart");
          },
          onPanUpdate: (details) {
            print("onPanUpdated ${details.globalPosition}");
          },
          onPanEnd: (details) {
            print('onPanEnd');
          },
          child: Image(
            image: AssetImage("assets/yoda.jpg"),
        ),
      ),
    ));
  }
}
