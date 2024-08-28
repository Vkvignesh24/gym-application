import 'package:flutter/material.dart';
import 'ExpertRegistrationPage.dart';

class ContactExpertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Expert'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact our Fitness Expert',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name: John Doe',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Email: john.doe@example.com',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Phone: +1 (123) 456-7890',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Our expert is available to answer your questions and provide personalized advice to help you achieve your fitness goals. Feel free to reach out to us anytime!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the registration page for experts
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpertRegistrationPage()),
                );
              },
              child: Text('Register as an Expert'),
            ),
          ],
        ),
      ),
    );
  }
}


