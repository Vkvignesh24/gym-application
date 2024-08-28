import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Gym App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Welcome to the Gym App, your ultimate fitness companion!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'This app provides you with a variety of workouts and exercises to help you achieve your fitness goals. Whether you are a beginner or an experienced athlete, there is something for everyone in this app.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Stay motivated, stay healthy, and enjoy your fitness journey with Gym App!',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
