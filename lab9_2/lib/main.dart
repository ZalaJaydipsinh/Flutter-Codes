import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/choose_location.dart';
import 'pages/loading.dart';

void main() {
  runApp(MaterialApp(
      // home: Home(),
      // Setting the default path as home
      // when the application is started '/home' would be the default path.
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      }));
}
