//either create a function called QuoteTemplate and call that
//or directlty pass Quotecardc obj that will trigger the build function
////main thing is returning card object

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
//card template function
  // Widget QuoteTemplate(q) {
  //   return QuoteCard(q: q); //directly return this obj
  //}

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
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.end,
          // children: quotes.map((q) => QuoteTemplate(q)).toList(),
          children: quotes.map((q) => QuoteCard(q: q)).toList(),
        ));
  }
}

class QuoteCard extends StatelessWidget {
  final Quote q; ////local q which will be passed value of q
  QuoteCard({required this.q});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '${q.text}', //or q.text
                style: TextStyle(
                  backgroundColor: Colors.blue[100],
                  fontSize: 18.0,
                  color: Colors.brown[800],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                q.author,
                textAlign: TextAlign.right,
                style: TextStyle(
                  backgroundColor: Colors.blue[100],
                  fontSize: 18.0,
                  color: Colors.brown[800],
                ),
              ),
            ],
          ),
        ));
  }
}
