import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   //Adding the SafeArea class constructor
    //   //because we have not given the 'appbar' property.
    //   body: SafeArea(child: Text('Home screen')),
    // );

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TextButton.icon(
            onPressed: () {
              // Mapping the choose_location.dart to button press event.
              Navigator.pushNamed(context, '/loading');
            },
            // Adding the location icon.
            icon: Icon(Icons.edit_location),
            // Providing the label
            label: Text("EDIT LOCATION"),
          )
        ],
      )),
    );
  }
}
