// main.dart

import 'package:flutter/material.dart';
import 'package:bus_app/onboarding_screen.dart';
import 'package:bus_app/login_screen.dart';
import 'package:bus_app/signup_screen.dart';
import 'package:bus_app/home_screen.dart';
import 'package:bus_app/search_screen.dart';
import 'package:bus_app/selectbus_screen.dart';
import 'package:bus_app/booking_screen.dart';
import 'package:bus_app/confirmation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Ticket App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/signup':(context) => SignupScreen(),
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchScreen(),
        '/selectbus': (context) => SelectBusScreen(),
        '/booking': (context) => BookingScreen(),
        '/confirmation': (context) => ConfirmationScreen(),
      },
    );
  }
}
