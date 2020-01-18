import 'package:flutter/material.dart';

/*
 * Post Index is Stateful because new post may be loaded without redirect
 */
class PostIndex extends StatefulWidget {
  @override
  _PostIndex createState() => _PostIndex();
}

class _PostIndex extends State<PostIndex>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: Text("Welcome to Post Index!!!"),
          );
        },
      )
    );
  }
}