import 'package:Collide/screens/post/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Collide/controllers/posts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Posts(),
      child: MaterialApp(home: PostIndex()),
      );

  }
}

