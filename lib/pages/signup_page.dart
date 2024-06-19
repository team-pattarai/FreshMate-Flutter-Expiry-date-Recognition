import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Image.asset('/Users/solai/Library/Mobile Documents/com~apple~CloudDocs/Documents/GitHub/FreshMate-Flutter-Expiry-date-Recognition/assets/signup_image.png', height: 200), // Add your image asset here
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow, // Set the button color
                  foregroundColor: Colors.white, // Set the text color
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text('Sign Up'),
              ),
              SizedBox(height: 20),
              Text('Or'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle Google Sign-Up
                    },
                    icon: Icon(Icons.account_circle),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle Apple Sign-Up
                    },
                    icon: Icon(Icons.apple),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle Facebook Sign-Up
                    },
                    icon: Icon(Icons.facebook),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Already have an account? Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
