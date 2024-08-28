import 'package:flutter/material.dart';
import 'login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'workout_details_page.dart';
import 'AboutPage.dart';
import 'contact_expert_page.dart'; // Import the ContactExpertPage
import 'my_profile_page.dart';
import 'feedback.dart';
import 'diet_plans.dart'; // Import the DietPlansPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workouts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> workouts = [
    'Push-ups',
    'Pull-ups',
    'Squats',
    'Deadlifts',
    'Bench Press',
    'Shoulder Press',
    'Planks',
    'Lunges',
    'Dumbbell Curls',
    'Barbell Rows',
  ];

  final Map<String, IconData> workoutIcons = {
    'Push-ups': FontAwesomeIcons.dumbbell,
    'Pull-ups': FontAwesomeIcons.dumbbell,
    'Squats': FontAwesomeIcons.dumbbell,
    'Deadlifts': Icons.fitness_center,
    'Bench Press': Icons.fitness_center,
    'Shoulder Press': Icons.fitness_center,
    'Planks': Icons.fitness_center,
    'Lunges': Icons.fitness_center,
    'Dumbbell Curls': Icons.fitness_center,
    'Barbell Rows': Icons.fitness_center,
  };

  final Map<String, String> workoutImages = {
    'Push-ups': 'assets/images/push-ups.png',
    'Pull-ups': 'assets/images/pull-ups.png',
    'Squats': 'assets/images/squats.png',
    'Deadlifts': 'assets/images/dead-lift.png',
    'Bench Press': 'assets/images/bench-press.png',
    'Shoulder Press': 'assets/images/shoulder-press.png',
    'Planks': 'assets/images/planks.png',
    'Lunges': 'assets/images/lunges.png',
    'Dumbbell Curls': 'assets/images/dumbell-curls.png',
    'Barbell Rows': 'assets/images/barbell-rows.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gym'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'login') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              } else if (value == 'about') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              } else if (value == 'contact_expert') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactExpertPage()),
                );
              } else if (value == 'myprofile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfilePage()),
                );
              } else if (value == 'feedback') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackPage()),
                );
              } else if (value == 'diet_plan') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DietPlansPage()),
                );
              }
              // Implement other actions for other menu items if needed
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                value: 'myprofile',
                child: Text('My Profile'),
              ),
              PopupMenuItem(
                value: 'login',
                child: Text('Login'),
              ),
              PopupMenuItem(
                value: 'contact_expert',
                child: Text('Contact Expert'),
              ),
              PopupMenuItem(
                value: 'diet_plan',
                child: Text('Diet Plans'),
              ),
              PopupMenuItem(
                value: 'feedback',
                child: Text('Feedback'),
              ),
              PopupMenuItem(
                value: 'about',
                child: Text('About'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: workouts.length,
              itemBuilder: (BuildContext context, int index) {
                final workout = workouts[index];
                final icon = workoutIcons[workout] ?? Icons.fitness_center;
                final image = workoutImages[workout];
                return WorkoutListItem(
                  workoutName: workout,
                  icon: icon,
                  color: index % 2 == 0 ? Colors.tealAccent : Colors.orange,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WorkoutDetailsPage(
                          workoutName: workout,
                          workoutImage: image!,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}

class WorkoutListItem extends StatelessWidget {
  final String workoutName;
  final IconData icon;
  final Color color;
  final Function()? onTap;

  const WorkoutListItem({
    Key? key,
    required this.workoutName,
    required this.icon,
    required this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        workoutName,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      tileColor: color,
      onTap: onTap,
    );
  }
}
