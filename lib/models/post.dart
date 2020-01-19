import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Post with ChangeNotifier{
  final String title, author, caption, mainImgUrl, schedule, timeStamp, id;
  int likeCounter;

  Post({
    @required this.title, 
    @required this.author,
    @required this.timeStamp,
    this.id,
    this.caption,
    this.mainImgUrl,
    this.schedule,
  });

  //methods
  void incrementLikes(){
    this.likeCounter++;
  }

  void decrementLikes(){
    this.likeCounter--;
  }
}

/*
  Location, additional img and details(arrays) will be handled later
 */