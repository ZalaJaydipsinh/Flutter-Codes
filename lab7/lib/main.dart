import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Laboratory 7"),
        ),
        body: Column(
          children: [
            Image(
              image: AssetImage("assets/images/pic1.jpg"),
              height: 100,
            ),
            Icon(
              Icons.flutter_dash_rounded,
              size: 50,
              color: Colors.teal,
            ),
            //Elevated button - the main characteristic of these buttons hold is the
            // slight elevation in their surface towards the screen on getting
            // tapped by the user.
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            // FlatButton - It is a text label material widget that
            // performs an action when the button is tapped
            // Deprecated: use instead TextButton
            FlatButton(
              onPressed: () {},
              child: Text("Flat Button"),
              color: Colors.tealAccent,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.folder_copy),
              iconSize: 40,
              tooltip: "Open folder",
            ),
            // TextButton - Button without any border that listens
            // for onPressed and onLongPress gestures.
            TextButton(onPressed: () {}, child: Text('Text button')),
            //Directionality: A widget that determines the ambient
            // directionality of text and text-direction-sensitive render objects.
            // Specifies the direction of the text
            Directionality(
                textDirection: TextDirection.rtl,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.photo_camera_back),
                    label: Text("Gallery"))),
          ],
        ),
      ),
    ),
  ));
}
