import 'package:flutter/material.dart';
import 'package:Collide/partials/cardposts.dart';

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
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          backgroundColor:
              Colors.brown[300], // Change once final color swatch chosen,
          // app bar with icons and title
          appBar: AppBar(
              elevation: 0.0,
              title: Text(
                'Explore',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25,),
              ),
              backgroundColor:
                  Colors.brown[300], // Change once final color swatch chosen
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
                  onPressed: null,
                ), //gear icon
              ],
              // tab bar for navigation
              bottom: TabBar(
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
            body: buildCardsList()
        ),
    );
  } // widget
  
  Widget buildCardsList(){
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => CardPosts() // from partials/cardposts.dart
    );
  } //widget buildCardsList
} // class _PostIndex


