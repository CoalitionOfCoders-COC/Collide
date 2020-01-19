import 'package:Collide/partials/navbar.dart';
import 'package:flutter/material.dart';
import 'package:Collide/controllers/posts.dart';
import 'package:provider/provider.dart';
import 'package:Collide/screens/post/show.dart';
import 'package:Collide/controllers/hexcolor.dart';

//Declare variables for later use
Color backGroundColor = HexColor('C6A477');

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

    Provider.of<Posts>(context).fetchPosts();
    final posts = Provider.of<Posts>(context).posts; //get post Provider

    return Scaffold(
      backgroundColor: backGroundColor,
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index){
          return InkWell(
            child: Text('${posts[index].title}'),
            onTap: (){
              //redirect code
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShowPost(data: posts[index])));
            }
          );
        },
      ),
      bottomNavigationBar: Navbar(),
    );

  }
}