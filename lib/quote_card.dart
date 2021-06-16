import 'package:flutter/material.dart';
import 'Quoteclass.dart';

class QuoteCard extends StatelessWidget {
  final Quote q; ////local q which will be passed value of q
  final Function deletefun;

  QuoteCard({required this.q, required this.deletefun});

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
              SizedBox(height: 8.0),
              FlatButton.icon(
                onPressed: deletefun(),
                label: Text('delete'),
                icon: Icon(Icons.delete),
              ),
            ],
          ),
        ));
  }
}
