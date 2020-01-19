import 'package:flutter/material.dart';
import 'package:Collide/controllers/hexcolor.dart';
import 'package:Collide/screens/post/index.dart';
import 'package:Collide/screens/user/register.dart';

//Declare variables for later use
Color backGroundColor = HexColor('C6A477');
Color white = HexColor('FFFFFF');
Color grey = HexColor('D7E3E0');

class LoginUser extends StatelessWidget{
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Container(
        margin: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Center(
          child: Wrap(
            children: <Widget>[
              Image.asset('assets/collide_logo.png'),
              TextFormField(decoration: InputDecoration(hintText: "USERNAME", hintStyle: TextStyle(color: grey)), style: TextStyle(color: white)),
              TextFormField(decoration: InputDecoration(hintText: "PASSWORD", hintStyle: TextStyle(color: grey)), style: TextStyle(color: white), obscureText: true,),

              //SIGN IN BUTTON
              OutlineButton(
                child: Text("Sign In"), 
                textColor: white, 
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: white,
                  ), 
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PostIndex()));
                },),
            ],)
          )
      ),
      bottomNavigationBar: InkWell(child: 
        Container(
          margin: const EdgeInsets.all(20.0), 
          child: Text("Don't have an account? Sign Up.", 
            style: TextStyle(color: white))
          ),

          //redirect to register form
          onTap: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => RegisterUser()));
          } 
      )
      
    );
    
  }
}