import 'package:flutter/material.dart';

// each post contains these items which would be passed through later on
/*
class Post {
  final String title = "title";
  final Image image = Image.asset('http://images.ctfassets.net/r7p9m4b1iqbp/NTJuSk4g0uaOwCGY8SwMq/228075a2bb20d88aff03466239628ed6/Natalie-Allen-12-Self-Portait-Japan.jpg?fit=fill&w=800&h=450');
  final String author = "author";
  final Image icon = Image.asset('http://images.ctfassets.net/r7p9m4b1iqbp/NTJuSk4g0uaOwCGY8SwMq/228075a2bb20d88aff03466239628ed6/Natalie-Allen-12-Self-Portait-Japan.jpg?fit=fill&w=800&h=450');
  final String sincePost = '34';
}*/

class CardPosts extends StatefulWidget {
  @override
  _CardPosts createState() => _CardPosts();
}

class _CardPosts extends State<CardPosts> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        height: 250, // will change depending on image
        margin: const EdgeInsets.all(10.0),
        child: Column(children: <Widget>[
          SizedBox(
            height: 200,
            child: Image.network('http://images.ctfassets.net/r7p9m4b1iqbp/NTJuSk4g0uaOwCGY8SwMq/228075a2bb20d88aff03466239628ed6/Natalie-Allen-12-Self-Portait-Japan.jpg?fit=fill&w=800&h=450')
          ),
          Text("Title"),
          Text("Author")
        ],)
    );
  } // widget build
} // class CardPosts

//Image.asset('http://images.ctfassets.net/r7p9m4b1iqbp/NTJuSk4g0uaOwCGY8SwMq/228075a2bb20d88aff03466239628ed6/Natalie-Allen-12-Self-Portait-Japan.jpg?fit=fill&w=800&h=450'),
/*shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17.0),
            ),*/