import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _visible = true;

  @override
  Widget build(BuildContext context) {
    var image = Opacity(
        opacity: _visible ? 1.0 : 0.0,
        child: Image(
          image: AssetImage("assets/yoda.jpg"),
        ));
    const image2 = Image(
      image: AssetImage("assets/yoda.jpg"),
    );

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
            child: Draggable<Image>(
              child: image,
              feedback: image2,
              onDragStarted: () {
                print("onDragStarted");
                setState(() => _visible = false);
              },
              onDragEnd: (_) {
                print("onDragEnd");
                setState(() => _visible = true);
              },
        )));
  }
}
