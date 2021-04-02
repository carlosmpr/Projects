import 'package:exercisesapp/constants.dart';
import 'package:exercisesapp/widgets/category.dart';
import 'package:exercisesapp/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ExerciseApp',
        theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor),
          primarySwatch: Colors.blue,
        ),
        home: Category());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavItem(
              image: "assets/icons/calendar.svg",
              title: "Today",
            ),
            BottomNavItem(
              image: "assets/icons/gym.svg",
              title: "All Exercises",
            ),
            BottomNavItem(
              image: "assets/icons/Settings.svg",
              title: "Settings",
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image:
                        AssetImage("assets/images/undraw_pilates_gpdb.png"))),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Morning \n_____",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  Container(
                    height: 10,
                  ),
                  SearchBar(),
                  Container(
                    height: 30,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CardInfo(
                          image: "assets/icons/Hamburger.svg",
                          title: "Diet \n Recomendation",
                        ),
                        CardInfo(
                          image: "assets/icons/Excrecises.svg",
                          title: "Keger Exercises",
                        ),
                        CardInfo(
                          image: "assets/icons/Meditation.svg",
                          title: "Meditation",
                        ),
                        CardInfo(
                          image: "assets/icons/Meditation.svg",
                          title: "Yoga",
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String image;
  final String title;
  const BottomNavItem({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [SvgPicture.asset(image), Text(title)],
    );
  }
}

class CardInfo extends StatelessWidget {
  final String image;
  final String title;
  const CardInfo({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: kShadowColor)
          ]),
      child: Column(
        children: [
          Spacer(),
          SvgPicture.asset(image),
          Text(
            title,
            style: TextStyle(fontFamily: "Cairo", fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Spacer()
        ],
      ),
    );
  }
}
