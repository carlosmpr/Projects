import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constant.dart';

class Header extends StatelessWidget {
  final String image;
  final String topText;
  final String bottomText;
  const Header({
    Key key,
    this.image,
    this.topText,
    this.bottomText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF3383CD), Color(0xFF11249F)]),
            image:
                DecorationImage(image: AssetImage("assets/images/virus.png"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset("assets/icons/menu.svg")),
            Container(height: 20),
            Expanded(
                child: Stack(
              children: [
                SvgPicture.asset(
                  image,
                  width: 230,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
                Positioned(
                    top: 20,
                    left: 150,
                    child: Text(
                      "$topText \n $bottomText",
                      style: kHeadingTextStyle.copyWith(color: Colors.white),
                    )),
                Container()
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
