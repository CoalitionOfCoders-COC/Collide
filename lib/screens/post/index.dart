import 'package:flutter/material.dart';

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
              bottom:TabBar(
                isScrollable: true,
                tabs: [
                  Tab(text: 'Sample'),
                  Tab(text: 'Sample'),
                  Tab(text: 'Sample'),
                  Tab(text: 'Sample'),
                  Tab(text: 'Sample'),
                  Tab(text: 'Sample'),
                ],
              ),
            ),
            body: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Text("Welcome to Post Index!!!"),
                );
              },
            )
        ),
    );
  } // widget
} // class _PostIndex
