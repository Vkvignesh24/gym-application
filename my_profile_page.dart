import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  String _gender = '';
  double _currentWeight = 0.0;
  double _targetWeight = 0.0;
  double _height = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basic Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Gender: $_gender'),
            SizedBox(height: 10),
            Text('Current Weight: $_currentWeight kg'),
            SizedBox(height: 10),
            Text('Target Weight: $_targetWeight kg'),
            SizedBox(height: 10),
            Text('Height: $_height cm'),
            SizedBox(height: 20),

            // Add your code for setting focus areas here
            ElevatedButton(
              onPressed: () {
                _editBasicInformation(context);
              },
              child: Text('Edit'),
            ),

          ],
        ),
      ),
    );
  }

  void _editBasicInformation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Basic Information'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                },
                decoration: InputDecoration(labelText: 'Gender'),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _currentWeight = double.tryParse(value) ?? 0.0;
                  });
                },
                decoration: InputDecoration(labelText: 'Current Weight (kg)'),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _targetWeight = double.tryParse(value) ?? 0.0;
                  });
                },
                decoration: InputDecoration(labelText: 'Target Weight (kg)'),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _height = double.tryParse(value) ?? 0.0;
                  });
                },
                decoration: InputDecoration(labelText: 'Height (cm)'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Save the edited information
                // This could involve updating database records, etc.
                Navigator.of(context).pop();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }
}

