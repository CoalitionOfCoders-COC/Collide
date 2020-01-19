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
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17.0))),
        margin: const EdgeInsets.only(
            left: 15, right: 15, top: 10, bottom: 10), // margin of cards
        child: Column(
          children: <Widget>[
            // posted image
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(17.0),
                topRight: Radius.circular(17.0),
              ),
              child: Image.network(
                  'http://images.ctfassets.net/r7p9m4b1iqbp/NTJuSk4g0uaOwCGY8SwMq/228075a2bb20d88aff03466239628ed6/Natalie-Allen-12-Self-Portait-Japan.jpg?fit=fill&w=800&h=450'),
            ),
            Container(
              height: 40,
              child: Text("Title",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
            ),
            SizedBox(
                height: 60,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 18.0, bottom: 10.0),
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage(
                                  'http://images.ctfassets.net/r7p9m4b1iqbp/NTJuSk4g0uaOwCGY8SwMq/228075a2bb20d88aff03466239628ed6/Natalie-Allen-12-Self-Portait-Japan.jpg?fit=fill&w=800&h=450'))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15.0),
                      child: Text("by Author",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                    )
                  ],
                ))
          ],
        ));
  } // widget build
} // class CardPosts
