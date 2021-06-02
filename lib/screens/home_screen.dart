import 'package:ebook/constants.dart';
import 'package:flutter/material.dart';

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
        children: <Widget>[
          SizedBox(
            height: size.height * .1,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.display1,
                      children: [
                    TextSpan(text: "What are you \n reading "),
                    TextSpan(
                        text: "today",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]))),
          SizedBox(height: 30),
          Container(
            height: 245,
            width: 202,
            child: Stack(
              children: <Widget>[
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
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
