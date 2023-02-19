import 'package:flutter/material.dart';
import '../shared/animation/ScaleRoute.dart';
import '../shared/components/LogInForm.dart';

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
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Text(
                      'Your next repair starts here.',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge, //use the theme defined in app.dart
                    ),
                  ),
                  SizedBox(height: 10.0),
                  LogInForm(),
                  SizedBox(height: 40.0),
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: StadiumBorder(),
                    child: SizedBox(
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
                    shape: StadiumBorder(),
                    child: SizedBox(
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
                    shape: StadiumBorder(),
                    child: SizedBox(
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
                  SizedBox(height: 10.0),
                  // Privacy note and Terms of conditions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Privacy Notice',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                              // decoration: TextDecoration.underline),
                            ),
                          )),
                        // dot between the two buttons
                      Text(
                        '•',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20,
                          // decoration: TextDecoration.underline),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Terms and Conditions',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                              // decoration: TextDecoration.underline),
                            ),
                          )),
                    ],
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
