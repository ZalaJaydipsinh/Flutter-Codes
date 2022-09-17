import 'package:flutter/material.dart';
import 'package:lab9_1/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  // Declaring the delete function and making it as required param in the constructor.
  final void Function() delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow,
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.quote,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
            // Adding the delete icon to delete the quote:
            TextButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text("Delete Quote")),
          ],
        ),
      ),
    );
  }
}
