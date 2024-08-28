import 'package:flutter/material.dart';

class ExpertRegistrationPage extends StatefulWidget {
  @override
  _ExpertRegistrationPageState createState() => _ExpertRegistrationPageState();
}

class _ExpertRegistrationPageState extends State<ExpertRegistrationPage> {
  // Controllers for text fields
  TextEditingController _nameController = TextEditingController();
  TextEditingController _placeController = TextEditingController();
  TextEditingController _currentWeightController = TextEditingController();
  TextEditingController _targetWeightController = TextEditingController();
  TextEditingController _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expert Registration'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Registration Form',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _placeController,
                decoration: InputDecoration(labelText: 'Place'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _currentWeightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Current Weight (kg)'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _targetWeightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Target Weight (kg)'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Height (cm)'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Validate and process the registration data
                  _registerExpert(context);
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _registerExpert(BuildContext context) {
    // Extract data from text fields
    String name = _nameController.text;
    String place = _placeController.text;
    double currentWeight = double.tryParse(_currentWeightController.text) ?? 0.0;
    double targetWeight = double.tryParse(_targetWeightController.text) ?? 0.0;
    double height = double.tryParse(_heightController.text) ?? 0.0;

    // Perform validation if needed

    // Process the registration data (e.g., send it to a server)

    // Show a success message
    _showSuccessMessage(context);
  }

  void _showSuccessMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Registration successful!'),
        duration: Duration(seconds: 2), // Adjust the duration as needed
      ),
    );
  }
}
