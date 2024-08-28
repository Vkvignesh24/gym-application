import 'package:flutter/material.dart';

class DietPlansPage extends StatelessWidget {
  final List<String> dietPlans = [
    'Low Carb Diet',
    'Keto Diet',
    'Paleo Diet',
    'Mediterranean Diet',
    'Vegetarian Diet',
    'Vegan Diet',
    'Intermittent Fasting',
    'DASH Diet',
    'Flexitarian Diet',
    'Whole30 Diet',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Plans'),
      ),
      body: ListView.builder(
        itemCount: dietPlans.length,
        itemBuilder: (BuildContext context, int index) {
          final dietPlan = dietPlans[index];
          return ListTile(
            title: Text(dietPlan),
            onTap: () {
              // Navigate to a new page when tapping on a diet plan
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DietPlanDetailsPage(dietPlan: dietPlan),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DietPlanDetailsPage extends StatelessWidget {
  final String dietPlan;

  const DietPlanDetailsPage({Key? key, required this.dietPlan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Plan Details'),
      ),
      body: Center(
        child: Text('Details for $dietPlan'),
      ),
    );
  }
}
