import 'package:flutter/material.dart';
import 'package:Collide/models/post.dart';

class ShowPost extends StatelessWidget{

  //get data passed from IndexPost
  final Post data;
  ShowPost({Key key, @required this.data}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Welcome to Show!'),
    );


    
  }
}