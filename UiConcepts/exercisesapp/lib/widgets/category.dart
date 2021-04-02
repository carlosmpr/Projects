import 'package:exercisesapp/constants.dart';
import 'package:exercisesapp/widgets/searchbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                    image: AssetImage("assets/images/meditation_bg.png"),
                    fit: BoxFit.fitWidth)),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "Meditation",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Text("3-10 MIN Course"),
                SizedBox(
                    width: size.width * .6,
                    child: Text(
                        "Live happier and healthier by learning fundamentals of meditation")),
                Container(height: 30),
                SizedBox(width: size.width * .5, child: SearchBar()),
                Container(height: 50),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    SessionCard(
                      session: "Session 01",
                    ),
                    SessionCard(
                      session: "Session 02",
                    ),
                    SessionCard(
                      session: "Session 03",
                    ),
                    SessionCard(
                      session: "Session 04",
                    ),
                    SessionCard(
                      session: "Session 05",
                    ),
                    SessionCard(
                      session: "Session 06",
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final String session;
  const SessionCard({
    Key key,
    this.session,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 - 10,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              )
            ]),
        child: Row(
          children: [
            Container(
              height: 42,
              width: 43,
              decoration:
                  BoxDecoration(color: kBlueColor, shape: BoxShape.circle),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
            Text(session)
          ],
        ),
      );
    });
  }
}
