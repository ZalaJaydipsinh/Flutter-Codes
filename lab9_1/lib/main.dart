import 'package:flutter/material.dart';
import 'package:lab9_1/quote_card.dart'; //absolute path
import 'quote.dart'; // relative path, as files are in same folder so will work

void main() {
  runApp(Quoter());
}

class Quoter extends StatefulWidget {
  @override
  State<Quoter> createState() => _QuoterState();
}

class _QuoterState extends State<Quoter> {
  List<Quote> quotes = [
    Quote(
        quote: 'The purpose of our lives is to be happy.',
        author: "Dalai Lama"),
    Quote(quote: 'Get busy living or get busy dying.', author: "Stephen King"),
    Quote(
        quote: '"You only live once, but if you do it right, once is enough."',
        author: "Mae West"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          title: Text('Quoter'),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          // Iterating the variable quotes to display the quotes and author name in to the screen.
          children: quotes
              .map((q) => QuoteCard(
                    quote: q,
                    // Defining the call back function which will be executed when button is clicked
                    // in which we will remove the current selected quote.
                    delete: () {
                      setState(() {
                        quotes.remove(q);
                      });
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
