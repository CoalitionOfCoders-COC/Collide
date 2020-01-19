import 'package:flutter/material.dart';
import 'package:Collide/partials/cardposts.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfile createState() => _UserProfile();
}

class _UserProfile extends State<UserProfile> {
  // tabs that will appear need
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.brown[300],
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(300.0),
            child: AppBar(
            //elevation: 0,
            backgroundColor: Colors.brown[300],
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: null,
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.brown[300],
              tabs: [
                  Tab(text: 'Projects'),
                  Tab(text: 'Reviews'),
                ],)
          )),
        body: buildCardsList()
        )
    );
  }

  Widget buildCardsList(){
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => CardPosts() // from partials/cardposts.dart
    );
  } //widget buildCardsList// class _PostIndex
}
