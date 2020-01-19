import 'package:flutter/material.dart';
import 'package:Collide/controllers/posts.dart';
import 'package:Collide/models/post.dart';

// DUMMY DATA
final dummyPost = new Post(
  title: 'Project 1', 
  author: 'John', 
  timeStamp: DateTime.now().toString(), 
  caption: 'This caption is whatever', 
  mainImgUrl: 'http://images.ctfassets.net/r7p9m4b1iqbp/NTJuSk4g0uaOwCGY8SwMq/228075a2bb20d88aff03466239628ed6/Natalie-Allen-12-Self-Portait-Japan.jpg?fit=fill&w=800&h=450', 
  schedule: DateTime.now().toString() );

int _selectedIndex = 0;

Future<void> _onItemTapped(int index) async {
  // switch(index){
  //   case 0:{
  //     print('home');
  //     break;
  //   } case 1:{
  //     print('user profile');
  //     break;
  //   } case 2:{
  //     print('create new post!');
  //     //summon controller later redirect
  //     await createPost(dummyPost);
  //     break;
  //   } case 3: {
  //     print('notifications');
  //     break;
  //   } case 4: {
  //     print('messages');
  //     break;
  //   }
  // }

  if(index == 1){
    await createPost(dummyPost);
  }
  
}
class Navbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('New Post'),
        
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
      selectedItemColor: Colors.amber[800],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );   
  }
}

/* 
RESOURCES:
https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
*/