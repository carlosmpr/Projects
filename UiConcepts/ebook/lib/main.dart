import 'package:ebook/consttants.dart';
import 'package:ebook/details_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eBook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailsScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_page_bg.png"),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * .1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.headline4,
                    children: [
                  TextSpan(text: "What are you \nreading"),
                  TextSpan(
                      text: "Today ?",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),
          ),
          Container(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BookCard(),
                Container(width: 40),
                BookCard(),
              ],
            ),
          ),
          Container(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "Best of the Day",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Container(
            width: double.infinity,
            height: 205,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      height: 185,
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: 24, top: 24, right: size.width * .35),
                      decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA).withOpacity(.45),
                          borderRadius: BorderRadius.circular(29)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                          ),
                          Text("New York Time Best For March"),
                          Text(
                            "How To  win \nFrinds & Incluence",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Text("Gary vanchunk")
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Positioned(
                    right: 0,
                    top: 0,
                    child: Image.asset("assets/images/book-3.png"),
                  ),
                )
              ],
            ),
          ),
          Text("Continue reading..",
              style: Theme.of(context).textTheme.headline4),
          Container(
            height: 10,
          ),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(38.5),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: Color(0xFFD3D3D3))
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("7 Habit of Highly Effective People",
                    style: Theme.of(context).textTheme.headline5)
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class BookCard extends StatelessWidget {
  const BookCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Container(
            height: 221,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: kShadowColor)
                ]),
          ),
          Image.asset(
            "assets/images/book-1.png",
            width: 150,
          ),
          Positioned(
              top: 35,
              right: 10,
              child: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              )),
          Positioned(
              top: 70,
              right: 10,
              child: Column(
                children: [
                  IconButton(
                    color: Colors.amber,
                    icon: Icon(Icons.star),
                    onPressed: () {},
                  ),
                  Text('4.9')
                ],
              )),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                children: [
                  Text(
                    "Crushing & Influence",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Gary Venchuk")
                ],
              ),
            ),
          ),
          Positioned(
            top: 190,
            child: Row(
              children: [
                Container(
                  width: 101,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.center,
                  child: Text('Details'),
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(29),
                      )),
                  child: Text(
                    "Read",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
