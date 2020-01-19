import 'package:flutter/material.dart';
import 'package:Collide/controllers/posts.dart';
import 'package:Collide/models/post.dart';
import 'package:Collide/controllers/hexcolor.dart';


// class HexColor extends Color {
//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll("#", "");
//     if (hexColor.length == 6) {
//       hexColor = "FF" + hexColor;
//     }
//     return int.parse(hexColor, radix: 16);
//   }

//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
// }
Color backGroundColor = HexColor('C6A477');

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
  switch(index){
    case 0:{
      print('home');
      break;
    } case 1:{
      print('user profile');
      break;
    } case 2:{
      print('create new post!');
      await createPost(dummyPost);
      break;
    } case 3: {
      print('notifications');
      break;
    } case 4: {
      print('messages');
      break;
    }
  }
}
class Navbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(

    //TOP WHITE BORDER
    decoration: const BoxDecoration(
      border: Border(
        top: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
      ),
    ),

    //NAVIGATION BUTTONS CONTAINER
    child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: backGroundColor,
      items:  <BottomNavigationBarItem>[

        //HOME BUTTON
        BottomNavigationBarItem(
          icon: Image.asset('assets/home_btn_unselected.png'),
          title: Container(height: 0),
          // activeIcon: Image.asset('assets/home_btn_selected.png')
        ),

        //USER PROFILE BUTTON
        BottomNavigationBarItem(
          icon: Image.asset('assets/user_btn_unselected.png'),
          title: Container(height: 0),
        ),

        //NEW POST BUTTON
        BottomNavigationBarItem(
          icon: Image.asset('assets/new_post_btn.png'),
          title: Container(height: 0),
        ),
        
        //NOTIFICATIONS BUTTON
        BottomNavigationBarItem(
          icon: Image.asset('assets/bell_btn_unselected.png'),
          title: Container(height: 0),
        ),

        //MESSAGES BUTTON
        BottomNavigationBarItem(
          icon: Image.asset('assets/chat_btn_unselected.png'),
          title: Container(height: 0)
        )

      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    ),
    
    );
    
    

  }
}

/* 
RESOURCES:
https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
*/