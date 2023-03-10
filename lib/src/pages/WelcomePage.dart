import 'package:flutter/material.dart';

import '../shared/animation/ScaleRoute.dart';
import '../shared/constants/items.dart';
import 'RegistrationPage.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  List<Widget> slides = items
      .map((item) => Container(
          padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: item['logo'] != ''
                      ? Image.asset(
                          item['logo'],
                          fit: BoxFit.fitWidth,
                          width: 180.0,
                          alignment: Alignment.bottomCenter,
                        )
                      :
                      //Align text to bottom of flex box
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            item['header'],
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w300,
                                color: Color(0XFF3F3D56),
                                height: 2.0),
                          ))),
              SizedBox(height: 100),
              Flexible(
                flex: 2,
                fit: FlexFit.loose,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        item['description'],
                        style: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 1.2,
                            fontSize: 16.0,
                            height: 1.3),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              )
            ],
          )))
      .toList();

  List<Widget> indicator() => List<Widget>.generate(
      slides.length,
      (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
                color: currentPage.round() == index
                    ? Color(0XFF256075)
                    : Color(0XFF256075).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10.0)),
          ));

  double currentPage = 0.0;
  final _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    // print('kien');

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            PageView.builder(
              controller: _pageViewController,
              itemCount: slides.length,
              itemBuilder: (BuildContext context, int index) {
                _pageViewController.addListener(() {
                  setState(() {
                    currentPage = _pageViewController.page!;
                  });
                });
                return slides[index];
              },
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 70.0),
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicator(),
                  ),
                )),
            Positioned(
              top: 60.0,
              right: 40.0,
              child: InkWell(
                onTap: () {
                  // Add your code for when the text is pressed
                  print("pressed");
                  Navigator.push(context, ScaleRoute(page: RegistrationPage()));
                },
                child: IgnorePointer(
                  child: Text('skip',
                      style: TextStyle(
                          color: Color(0XFF256075),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
