import 'package:flutter/material.dart';

void main() {
  runApp(CardDemo());
}

class CardDemo extends StatefulWidget {
  @override
  State<CardDemo> createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lab - 8 First App'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[600],
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/pic1.jpg'),
                radius: 40,
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
                '20',
                style: TextStyle(
                  color: Colors.blue[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Lab 8_1"),
      ),
      body: Row(
        //For column main axis means - vertical alignment
        //and cross axis means - horizontal alignment
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Padding can be added in 2 ways
          // 1. Padding class - using padding property
          // 2. Passing property inside any container.
          // Padding(
          //   padding: EdgeInsets.all(20),
          //   child: Text("Hello world,"),
          // ),
          // Container(
          //   padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
          //   child: Text("Hi its me... not u 😂"),
          // ),
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.orange,
                  padding: EdgeInsets.all(20),
                  child: Text("1"),
                ),
                //flex property is used to
                //decide the ratio size that
                //the contaner should span
                flex: 2,
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(20),
                  child: Text("2"),
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  padding: EdgeInsets.all(20),
                  child: Text("3"),
                ),
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
