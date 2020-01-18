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
      backgroundColor: Colors.brown[300], // Change once final color swatch chosen,
      appBar: AppBar(
        title: Text(
          'Explore',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown[300], // Change once final color swatch chosen
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,),
            onPressed: null,
          ),// search icon
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,),
            onPressed: null,
          ), //gear icon
        ]
      ),
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