import 'package:flutter/material.dart';

import '../shared/animation/ScaleRoute.dart';
import '../shared/constants/items.dart';
import 'RegistrationPage.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  int _curIndex = 0;

  List<Widget> slides = items
      .map((item) => Container(
          padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: item['index'] == 0
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Image.asset(
                            item['logo'],
                            fit: BoxFit.fitWidth,
                            width: 100.0,
                            alignment: Alignment.bottomCenter,
                          ),
                        )
                      :
                      //Align text to bottom of flex box
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                item['header'],
                                style: TextStyle(
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Glacial Indifference',
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )),
                        )),
              SizedBox(height: 100),
              Flexible(
                flex: 2,
                fit: FlexFit.loose,
                child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: <Widget>[
                      item['index'] == 1
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 30.0),
                                  child: Row(
                                    children: [
                                      RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 2.0,
                                          fillColor: Colors.blue,
                                          padding: EdgeInsets.all(10.0),
                                          shape: CircleBorder(),
                                          child: Text(
                                            '1',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          )),
                                      Text(
                                        'Easy',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            letterSpacing: 1.2,
                                            fontSize: 16.0,
                                            height: 1.3),
                                        // textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 30.0),
                                  child: Row(
                                    children: [
                                      RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 2.0,
                                          fillColor: Colors.blue,
                                          padding: EdgeInsets.all(10.0),
                                          shape: CircleBorder(),
                                          child: Text(
                                            '2',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          )),
                                      Text(
                                        'Easy',
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 30.0),
                                  child: Row(
                                    children: [
                                      RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 2.0,
                                          fillColor: Colors.blue,
                                          padding: EdgeInsets.all(10.0),
                                          shape: CircleBorder(),
                                          child: Text(
                                            '3',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          )),
                                      Text(
                                        'Easy',
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
                              ],
                            )
                          : Text(
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
                    _curIndex = index;
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
                  child: _curIndex == 2
                      ? FilledButton.tonal(
                          onPressed: () => Navigator.push(
                              context, ScaleRoute(page: RegistrationPage())),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Theme.of(context).primaryColor)),
                          child: Text('Join Now',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF))),
                        )
                      : Row(
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
                  // print("pressed");
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
