import 'package:flutter/material.dart';
import 'Quoteclass.dart';

void main() {
  runApp(MaterialApp(
    home: myquote(),
  ));
}

class myquote extends StatefulWidget {
  @override
  _myquoteState createState() => _myquoteState();
}

class _myquoteState extends State<myquote> {
  List<Quote> quotes = [
    Quote(text: "hii i m awesome", author: "mahi"),
    Quote(text: 'hii this is a girl', author: "manu"),
    Quote(text: 'hii all is well', author: "meera")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Text('QuoteIt'),
          centerTitle: true,
          shadowColor: Colors.red[300],
          backgroundColor: Colors.amber[400],
          foregroundColor: Colors.lightGreen[300],
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: quotes.map((q) => Text('${q.text}- ${q.author}')).toList(),
        ));
  }
}
