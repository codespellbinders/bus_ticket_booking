// selectbus_screen.dart

import 'package:flutter/material.dart';

class SelectBusScreen extends StatefulWidget {
  @override
  _SelectBusScreenState createState() => _SelectBusScreenState();
}

class _SelectBusScreenState extends State<SelectBusScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _slideAnimation = Tween<Offset>(begin: Offset(0.0, 0.5), end: Offset.zero).animate(_animationController);

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Bus'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: _fadeAnimation,
                child: SlideTransition(
                  position: _slideAnimation,
                  child: Text(
                    'Select a Bus',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Add your logic for navigating to the BookingScreen for Bus 1
                  Navigator.pushNamed(context, '/booking');
                },
                child: Text('Select Bus 1'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Add your logic for navigating to the BookingScreen for Bus 2
                  Navigator.pushNamed(context, '/booking');
                },
                child: Text('Select Bus 2'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Add your logic for navigating to the BookingScreen for Bus 3
                  Navigator.pushNamed(context, '/booking');
                },
                child: Text('Select Bus 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
