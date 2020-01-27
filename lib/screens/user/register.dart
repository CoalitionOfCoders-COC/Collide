import 'package:flutter/material.dart';
import 'package:Collide/controllers/hexcolor.dart';
import 'package:Collide/screens/post/index.dart';
import 'package:Collide/screens/user/login.dart';
import 'package:provider/provider.dart';
import 'package:Collide/providers/auth.dart';

//Declare variables for later use
Color backGroundColor = HexColor('C6A477');
Color white = HexColor('FFFFFF');
Color grey = HexColor('D7E3E0');

//on form submit register


class RegisterUser extends StatelessWidget{
  static const routeName = '/register';

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
              TextFormField(decoration: InputDecoration(hintText: "EMAIL", hintStyle: TextStyle(color: grey)), style: TextStyle(color: white)),
              TextFormField(decoration: InputDecoration(hintText: "PASSWORD", hintStyle: TextStyle(color: grey)), style: TextStyle(color: white), obscureText: true,),

              //SIGN IN BUTTON
              OutlineButton(
                child: Text("Sign Up"), 
                textColor: white, 
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: white,
                  ), 
                ),
                onPressed: ()async {
                  await Provider.of<Auth>(context, listen: false).signUp(
                    'john@gmail.com', '123456'
                  );
                }
              ),
            ],)
          )
      ),

      //BOTTOM MESSAGE
      bottomNavigationBar: InkWell(child: 
        Container(
          margin: const EdgeInsets.all(20.0), 
          child: Text("Already have an account? Sign In.", 
            style: TextStyle(color: white))
          ),

          //redirect to register form
          onTap: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => LoginUser()));
          } 
      )
      
    );
    
  }
}