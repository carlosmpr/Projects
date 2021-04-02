import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                  ),
                ),
                Container(height: 40,),
                CardIcon(),
                Container(height: 40,),
                CardIcon(),
                Container(height: 40,),
                CardIcon(),
                Container(height: 40,),
                CardIcon()

              ],
            )),
            Container(
              height: size.height * .8,
              width: size.width * .75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: Colors.greenAccent.withOpacity(0.29))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/img.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft)),
            )
          ],
        )
      ],
    );
  }
}

class CardIcon extends StatelessWidget {
  const CardIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 22,
                color: Colors.greenAccent.withOpacity(0.22)),
            BoxShadow(
                offset: Offset(-15, -15),
                blurRadius: 20,
                color: Colors.grey)
          ]),
      child: SvgPicture.asset("assets/icons/sun.svg"),
    );
  }
}
