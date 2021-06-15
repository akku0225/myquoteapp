//in this we have explored text widget

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sample',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("first app"),
        ),
        body: Center(
          child: Text(
            "ahiiiiiii i m learnfjd fkfkhf lfjsff ffkfkfs sfjslkfs fing",
            style: new TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontFamily: "Arial",
              // decoration: TextDecoration.underline,
              // decorationColor: Colors.black,
              // decorationStyle: TextDecorationStyle.wavy,
              // backgroundColor: Colors.amber.shade300,
              // letterSpacing: 10.0,
              background: Paint()
                ..color = Colors.blueAccent.shade400
                ..style = PaintingStyle.stroke,
            ),
            // textAlign: TextAlign.center,
            // textDirection: TextDirection.rtl,
            // softWrap: true,
            // overflow: TextOverflow.visible,
            // maxLines: 2,
          ),
        ),
      ),
    );
  }
}
