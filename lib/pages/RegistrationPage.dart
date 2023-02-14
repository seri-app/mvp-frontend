import 'package:flutter/material.dart';
import 'package:namer_app/animation/ScaleRoute.dart';
import 'package:namer_app/pages/SignInPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                //create a section with gray background color
                color: Colors.grey,
              )),
          Flexible(
            flex: 2,
            // Create a list of social login buttons organized by column and centered vertically
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: StadiumBorder(
                    ),
                    child: Container(
                      width: 300.0,
                      height: 40.0,
                      child: Center(
                        child: Text('Continue with Google'),
                      ),
                    ),
                    onPressed: () {
                      // Handle the button press
                    },
                  ),
                  SizedBox(height: 10.0),
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: StadiumBorder(
                    ),
                    child: Container(
                      width: 300.0,
                      height: 40.0,
                      child: Center(
                        child: Text('Continue with Apple'),
                      ),
                    ),
                    onPressed: () {
                      // Handle the button press
                    },
                  ),
                  SizedBox(height: 10.0),
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: StadiumBorder(
                    ),
                    child: Container(
                      width: 300.0,
                      height: 40.0,
                      child: Center(
                        child: Text('Continue with Facebook'),
                      ),
                    ),
                    onPressed: () {
                      // Handle the button press
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
