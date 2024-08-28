import 'package:flutter/material.dart';

class WorkoutDetailsPage extends StatefulWidget {
  final String workoutName;
  final String workoutImage;

  const WorkoutDetailsPage({
    Key? key,
    required this.workoutName,
    required this.workoutImage,
  }) : super(key: key);

  @override
  _WorkoutDetailsPageState createState() => _WorkoutDetailsPageState();
}

class _WorkoutDetailsPageState extends State<WorkoutDetailsPage> {
  double _scaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    // Adjusting the image size based on the screen dimensions and the aspect ratio of the image
    double targetWidth = screenSize.width * 0.8; // 80% of the screen width
    double targetHeight = targetWidth * (3 / 4); // Assuming a 4:3 aspect ratio for the image

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.workoutName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GestureDetector(
              onScaleUpdate: (ScaleUpdateDetails details) {
                setState(() {
                  _scaleFactor = details.scale.clamp(1.0, 4.0); // Set minimum and maximum scale
                });
              },
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  child: Center(
                    child: Transform.scale(
                      scale: _scaleFactor,
                      child: Image.asset(
                        widget.workoutImage,
                        fit: BoxFit.contain, // Maintain aspect ratio
                        width: targetWidth,
                        height: targetHeight,
                        alignment: Alignment.center, // Center the image within the container
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.workoutName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Add more details about the workout here if needed
        ],
      ),
    );
  }
}
