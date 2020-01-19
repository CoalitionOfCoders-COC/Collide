import 'dart:convert';
import 'package:Collide/models/post.dart';
import 'package:flutter/material.dart';
// import 'package:Collide/screens/post/show.dart';
import 'package:http/http.dart' as http;

/*
  This is the provider for all Posts
  which means this will hold the data for posts
  and will also fetch post from the db
*/
class Posts with ChangeNotifier{

  List<Post> _posts = [];

  List<Post> get posts {
    return _posts;
  }

  Post findById(String id) {
    return _posts.firstWhere((post) => post.id == id);
  }

  /*
    This will fetch all Posts in the db and return it as a List
  */
  Future<void> fetchPosts() async {
    const url = 'https://collide-97e3d.firebaseio.com/posts.json';
    final List<Post> posts = [];
    try {
      //get data from database
      final response = await http.get(url); 
      final data = json.decode(response.body) as Map<String, dynamic>;
      if(data == null){
        return null;
      }
      //add each found posts to posts (List)
      data.forEach((postId, postData){
        posts.add(Post(
          id: postId,
          title: postData['title'],
          author: postData['author'],
          timeStamp: postData['timeStamp'],

          //optionals add ternary later?
          caption: postData['caption'],
          mainImgUrl: postData['mainImgUrl'],
          schedule: postData['schedule']
        ));
      });  

      this._posts = posts; //add data to provider
      notifyListeners();

    } catch(error){
      print(error);
      throw(error);
    }
    return posts;
  }
  
}

/*
  This creates/adds a Post in the database
*/
Future<void> createPost(Post post) async {
  const url = 'https://collide-97e3d.firebaseio.com/posts.json';
  try {
    //this adds the post to the db
    await http.post(
      url,
      body: json.encode({
        'title': post.title,
        'author': post.author,
        'timeStamp' : post.timeStamp,
        'caption' : post.caption,
        'mainImgUrl' : post.mainImgUrl,
        'schedule' : post.schedule
      }),
    );
    print('The new Post has been added to the db');
  } catch(error){
    print(error);
    throw error;
  }
}
