//either create a function called QuoteTemplate and call that
//or directlty pass Quotecardc obj that will trigger the build function
////main thing is returning card object

import 'package:flutter/material.dart';
import 'Quoteclass.dart';
import 'quote_card.dart';

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
          children: quotes
              .map((q) => QuoteCard(
                    q: q,
                    deletefun: () {
                      setState(() {
                        quotes.remove(q);
                      });
                    },
                  ))
              .toList(),
        ));
  }
}
