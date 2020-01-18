import 'package:Collide/screens/post/index.dart';
import 'package:flutter/material.dart'; //for MaterialApp()

void main() => runApp(MyApp()); //this is the func that runs the app

//note: StatelessWidget do not change the data inside it
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: PostIndex()
    );
  }
}

