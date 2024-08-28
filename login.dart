import 'package:flutter/material.dart';

void main() {
  runApp(const GymApplication());
}

class GymApplication extends StatelessWidget {
  const GymApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Assume isFirstTimeLogin is set based on some logic
    bool isFirstTimeLogin = true; // Set this according to your app logic

    // Determine the initial route based on isFirstTimeLogin
    String initialRoute = isFirstTimeLogin ? '/login' : '/main';

    return MaterialApp(
      title: 'Gym Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Define routes for login and main page
      initialRoute: initialRoute,
      routes: {
        '/login': (context) => LoginPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Assume the user logs in successfully
                // You may set isFirstTimeLogin to false here
                Navigator.pushNamed(context, '/main');
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Text('Welcome to the Main Page'),
      ),
    );
  }
}
