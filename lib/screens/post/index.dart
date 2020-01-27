import 'package:Collide/partials/navbar.dart';
import 'package:flutter/material.dart';
import 'package:Collide/controllers/posts.dart';
import 'package:provider/provider.dart';
import 'package:Collide/screens/post/show.dart';
import 'package:Collide/controllers/hexcolor.dart';
import 'package:Collide/partials/cardposts.dart';
import 'package:Collide/screens/user/profile.dart';

//Declare variables for later use
Color backGroundColor = HexColor('C6A477');

/*
 * Post Index is Stateful because new post may be loaded without redirect
 */
class PostIndex extends StatefulWidget {
  @override
  _PostIndex createState() => _PostIndex();
}

class _PostIndex extends State<PostIndex> {
  // tabs that will appear need
  @override
  Widget build(BuildContext context) {

    Provider.of<Posts>(context).fetchPosts();
    final posts = Provider.of<Posts>(context).posts; //get post Provider

    return DefaultTabController(
      length: 6,
      child: Scaffold(
          backgroundColor: backGroundColor, // Change once final color swatch chosen,
          // app bar with icons and title
          appBar: AppBar(
              elevation: 0.0,
              title: Text(
                'Explore',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25,),
              ),
              backgroundColor: backGroundColor, // Change once final color swatch chosen
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ), // search icon
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile()));
                  }
                ), //gear icon
              ],
              // tab bar for navigation
              bottom: TabBar(
                indicatorColor: backGroundColor,
                isScrollable: true,
                //indicatorColor: Colors.brown[300],
                tabs: [
                  Tab(text: 'Film'),
                  Tab(text: 'Photography'),
                  Tab(text: 'Coding'),
                  Tab(text: 'Graphic Design'),
                  Tab(text: 'Music'),
                  Tab(text: 'Other'),
                ],
              ),
            ),
            body: 
              ListView.builder(
                itemCount: posts.length,
                itemBuilder: (BuildContext context, int index) => 
                  InkWell(
                    child: CardPosts(),
                    onTap: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ShowPost(data: posts[index])));
                    },
                  )
              ),
            bottomNavigationBar: Navbar(),
        ),
    );
  } // widget
}