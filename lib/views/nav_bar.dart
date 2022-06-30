import 'package:flutter/material.dart';
import 'package:myportfolio/widgets/util/on_hover.dart';

import '../widgets/text_hover.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset("assets/images/logo.png", width: 180, height: 75),
            Row(
              children: <Widget>[
                TextHover(text: "Home"),
                SizedBox(
                  width: 30,
                ),
                TextHover(text: "About"),
                SizedBox(
                  width: 30,
                ),
                TextHover(text: "Portfolio"),
                SizedBox(
                  width: 30,
                ),
                TextHover(text: "Contact"),
                SizedBox(width: 20)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Image.asset("assets/images/lp_image.png", width: 50, height: 50),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextHover(text: "Home"),
                SizedBox(
                  width: 30,
                ),
                TextHover(text: "About"),
                SizedBox(
                  width: 30,
                ),
                TextHover(text: "Portfolio"),
                SizedBox(
                  width: 30,
                ),
                TextHover(text: "Contact"),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
