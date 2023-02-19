import 'package:flutter/material.dart';
import '../pages/WelcomePage.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.purple),
          bodyLarge: TextStyle(
              fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Welcome Screen',
      home: WelcomeScreen(),
    );
  }
}
