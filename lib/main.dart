// import 'package:Collide/screens/post/index.dart';
import 'package:Collide/screens/user/login.dart';
import 'package:Collide/screens/user/register.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Collide/controllers/posts.dart';
// import 'package:Collide/screens/user/login.dart';
import 'package:Collide/providers/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      
      //providers declaration
      providers: [
        ChangeNotifierProvider.value(value: Posts()),
        ChangeNotifierProvider.value(value: Auth())
      ],

      child: MaterialApp(
        home: LoginUser(),
        routes: {
          LoginUser.routeName: (ctx) => LoginUser(),
          RegisterUser.routeName: (ctx) => RegisterUser()
        }),
    );

  
    // return ChangeNotifierProvider(
    //   create: (ctx) => Posts(),
    //   child: MaterialApp(home: LoginUser()),
    //   );
  }
}

