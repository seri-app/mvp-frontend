import 'package:flutter/material.dart';
import '../pages/WelcomePage.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        // brightness: Brightness.dark,
        primaryColor: Color(0xFF1E7A7E),

        // Define the default font family.
        fontFamily: 'Cerebri Sans Pro',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w400, fontFamily: 'Glacial Indifference', color: Color(0xFF000000)),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Color(0xFF022135)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Welcome Screen',
      home: WelcomeScreen(),
    );
  }
}
