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
              child: Expanded(
                child: Container(
                  color: Color.fromARGB(255, 220, 220, 220),
                  child: Center(
                    child: Flexible(
                      child: Image.asset('assets/images/logos/primary.png',
                          width: 100, height: 100),
                    ),
                  ),
                ),
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
                        child: Text(
                          'Continue with Google',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
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
                        child: Text('Continue with Apple',
                            style: Theme.of(context).textTheme.bodyMedium),
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
                        child: Text('Continue with Facebook',
                            style: Theme.of(context).textTheme.bodyMedium),
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
                            style: Theme.of(context).textTheme.bodyMedium,
                          )),
                      // dot between the two buttons
                      Text(
                        '•',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Terms and Conditions',
                            style: Theme.of(context).textTheme.bodyMedium,
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
