import 'package:flutter/material.dart';
import '../shared/animation/ScaleRoute.dart';
import '../shared/components/PhoneNumberForm.dart';

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
              padding: EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your next repair starts here',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  PhoneNumberForm(),
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: StadiumBorder(),
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
                    shape: StadiumBorder(),
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
                    shape: StadiumBorder(),
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
