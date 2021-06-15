//BUttons:material  and  Icon button (only elevation properties extra)

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
          child: IconButton(
            onPressed: () {},
            //ICON BUTTON DONT HAVE TEXT HAVE ICON SO ITS ABOUT ICON
            icon: Icon(Icons.access_alarms_outlined), //this is an icon
            tooltip: "Add Alarm",

            highlightColor: Colors.black87,
            padding: EdgeInsets.all(10.0),
            color: Colors.amber,

            splashColor: Colors.blueAccent,
          ),
        ),

        //   child: MaterialButton(
        //     highlightElevation: 80.0,
        //     elevation: 30,
        //  shape:,
        //     // StadiumBorder(side: BorderSide.none),
        //     // RoundedRectangleBorder(
        //     //     borderRadius: BorderRadius.circular(15.0)),
        //     textColor: Colors.amberAccent,
        //     color: Colors.blue,
        //     highlightColor: Colors.green,
        //     splashColor: Colors.pink,
        //     onPressed: () {},
        //     padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        //     child: Text(
        //       "Material Button",
        //       style: TextStyle(
        //         fontSize: 29.0,
        //       ),
        //     ),
        //   ),
      ),
    );
  }
}
