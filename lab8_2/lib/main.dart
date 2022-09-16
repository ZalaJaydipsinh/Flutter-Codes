import 'package:flutter/material.dart';
import 'package:lab8_2/quote.dart';

void main() {
  runApp(Quoter());
}

class Quoter extends StatefulWidget {
  @override
  State<Quoter> createState() => _QuoterState();
}

class _QuoterState extends State<Quoter> {
  // List<String> quotes = [
  //   'The truth is realy pure and never simple',
  //   'I see humans but no humanity',
  //   'The time is always right to do what is right'
  // ];

  List<Quote> quotes = [
    Quote(
        quote: 'The purpose of our lives is to be happy.',
        author: "Dalai Lama"),
    Quote(quote: 'Get busy living or get busy dying.', author: "Stephen King"),
    Quote(
        quote: '"You only live once, but if you do it right, once is enough."',
        author: "Mae West"),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      color: Colors.yellow,
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
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
          ],
        ),
      ),
    );
  }

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
          children: quotes.map((q) => quoteTemplate(q)).toList(),
        ),
      ),
    );
  }
}

class CardDemo extends StatefulWidget {
  @override
  State<CardDemo> createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lab - 8 First App'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[600],
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pic1.jpg'),
                    radius: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black,
                height: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'NAME: ',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Jaydipsinh Zala',
                style: TextStyle(
                  color: Colors.blue[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'AGE',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                age.toString(),
                style: TextStyle(
                  color: Colors.blue[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'jbzala004@gmail.com',
                    style: TextStyle(
                      color: Colors.brown[800],
                      fontSize: 16.0,
                      letterSpacing: 1.5,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        // Desgined 2 Floating Action Buttton which will increment or
        // decrement the value of variqable..
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Floating action buttton which will incrememt the value of
            //the varaible..
            // When this button is pressed the age varaible is incrmented
            //by 1..
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  age = age + 1;
                });
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  age = age - 1;
                });
              },
              child: Icon(Icons.remove),
              backgroundColor: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}
